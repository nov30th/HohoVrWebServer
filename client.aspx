<%@ Page Language="C#" %>

<script runat="server">
    protected void Page_Load()
    {
        /***************************************
         * 文件作用：客户操作的主页面
         * 启动标准帐户安全检查过程
         * 版本:0.01
         * *************************************/
        if (null == Page.Application["vr_isrun"])
            Response.Redirect("startup.aspx?cmd=" + Server.UrlEncode(Request.RawUrl), true);
        if ("false" == Page.Application["vr_isrun"])
            Response.Redirect("error.aspx?id=400", true);
        if ((null == Request.Cookies["VR"]) || ("OK" != Request.Cookies["VR"].Value.ToString()))
            Response.Redirect("index.aspx?", true);
        if (null == Page.Session["vr_blogid"] || null == Page.Session["vr_username"])
            Response.Redirect("index.aspx", true);
        /****************************************
         * 结束安全检查，继续执行操作
         * **************************************/
        //version.Text = ConfigurationSettings.AppSettings["VRVersion"];
        //copyright.Text = ConfigurationSettings.AppSettings["VRCopyright"];
        //if (Request.ServerVariables["HTTPS"] != "on")
        //{
        //    Response.Write("该页面强制要求HTTPS连接！请从正确的页面登陆");
        //    Response.End();
        //}
        /******以下开始程序段工作****************/
        //VIP代码显示
        /*
        if (Page.Session["vr_isverify"] == null || Page.Session["vr_isverify"].ToString() == string.Empty)
        {
            txt_vip.Visible = false;
            lab_moban.Visible = false;
        }
        */
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
        string sql = "select [regtime],[verify],[expdate],[maxcount],[warncount],[memo],[lastrecount] from [info] where ID=@id";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
        StringBuilder strbshow = new StringBuilder();
        cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Page.Session["vr_blogid"].ToString());
        conn.Open();
        try
        {
            //读取数据
            System.Data.SqlClient.SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                strbshow.Append("系统用户名:<font color=\"red\">");
                strbshow.Append(Page.Session["vr_username"].ToString());
                strbshow.Append("</font><br />用户注册日期:<b>");
                strbshow.Append(dr.GetDateTime(0));
                strbshow.Append("</b><br />是否VIP:<font color=\"red\">");
                strbshow.Append((Page.Session["vr_isverify"] != Page.Session["vr_username"]) ? "不是。" : "当然是~(在VIP邀请有效期内,你可以使用系统所有功能)");
                strbshow.Append("</font><br />帐户到期日期:<b>");
                strbshow.Append(dr.GetDateTime(2));
                if (Page.Session["vr_vipexptime"] != null)
                {
                    strbshow.Append("<br /></b> VIP到期日期:<b>");
                    strbshow.Append(Page.Session["vr_vipexptime"].ToString());
                }
                else
                {
                    strbshow.Append("<br /><br /><b>您不是VIP或者VIP已经过期。不是VIP意味着您可能不能正常使用该系统。VIP完全免费，但不提供于陌生人使用。");
                }
                strbshow.Append("</b><br />使用空间(一小时统计一次):<img src=\"images_process/startandend.gif\" /><img src=\"images_process/");
                double spaceUsed = Convert.ToDouble(dr.GetInt16(4)) / dr.GetInt16(3);
                if (spaceUsed < 0.5)
                {
                    //绿色进度条
                    strbshow.Append("green");
                }
                else if (spaceUsed < 0.8)
                {
                    //换色进度条
                    strbshow.Append("yellow");
                }
                else
                {
                    //红色进度条
                    strbshow.Append("red");
                }
                strbshow.Append(".gif\" height=\"10\" width=\"");
                strbshow.Append(spaceUsed * 200.0);
                strbshow.Append("\" /><img src=\"images_process/white.gif\" height=\"10\" width=\"");
                strbshow.Append((1 - spaceUsed) * 200.0);
                strbshow.Append("\" /><img src=\"images_process/startandend.gif\" /><b>&nbsp;&nbsp;(");
                strbshow.Append(dr.GetInt16(4));
                strbshow.Append(" of ");
                strbshow.Append(dr.GetInt16(3));
                strbshow.Append(")</b>");
                strbshow.Append("<br /><br />帐户通知(消息):<strong>");
                strbshow.Append(dr.GetString(5));
                strbshow.Append("</strong>");
                if (dr.GetDateTime(6) == DateTime.Parse("11-12-1985"))
                    strbshow.Append("<br /><br /><strong><span style=\"color:red\">提示：你还没有把代码添加到你的BLOGCN中,注册后24小时没有添加代码,作为废帐号自动删除.<br />添加方法请点击左边的[安装帮助].</span></strong>");
                dr.Close();

            }
            else
            {
                strbshow.Append("<font colo=\"red\">系统出错！无法找到当前用户！</font>");
            }
            txtshow.Text = strbshow.ToString();
        }
        catch
        {
            //异常
            //txtshow.Text = "<font colo=\"red\">执行过程中出错!请联系管理员</font>";
        }
        finally
        {
            cmd.Dispose();
            conn.Close();
        }
    }
    


</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Language" content="zh-CN" />
    <link rel="stylesheet" rev="stylesheet" href="CSS/admin.css" type="text/css" media="screen" />
    <title>HOHO`` 系统管理</title>
</head>
<body>
    <div id="divMain">
        <div class="Header">
            帐户信息
        </div>
        <div id="divMain2">
            <form id="form1" runat="server">
                <font style="color: Highlight">
                    <asp:Label ID="txtshow" runat="server"></asp:Label><br />
                    <br />
                    <asp:Label ID="lab_moban" runat="server" Text="Label">以下代码为VIP用户的模版插入代码</asp:Label><br />
                    <asp:TextBox ID="txt_vip" runat="server" Height="90px" TextMode="MultiLine" Width="600px">
&lt;DIV id=visitors&gt;Nov30th Loading...&lt;/DIV&gt;
&lt;SCRIPT language=javascript src=&quot;http://hoho.lengyouyou.com/vr/blogcnNEW.aspx?&quot;&gt;&lt;/SCRIPT&gt;
                    </asp:TextBox><br />
                    <br />
                    <br />
                    登录后5秒钟为冷却时间,一些操作不能进行。
                    <br />
                    <br />
                    提示:<strong>如果您的电脑配置较低</strong>,在访问统计的时候就耐心等待吧.数据全部在你电脑上分析的,说不定会死机哦.请做好充分的心理准备.<br />
                    <br />
                    如果你是第一次使用,请参考 安装说明！不然贴到页面上的代码显示出来不是<font color="#0000ff">小花</font>，却是<font color="#0000ff">qzj_s
                        qzj_u</font>要笑死人了。女人们，看清楚说明。
                    <br />
                    填写<font color="#0000ff">真实的手机号码</font> . </font>
            </form>
        </div>
    </div>

    <script type="text/javascript">

	//斑马线
	var tables=document.getElementsByTagName("table");
	var b=false;
	for (var j = 0; j < tables.length; j++){

		var cells = tables[j].getElementsByTagName("tr");

		cells[0].style.background="#DAE2E8";
		for (var i = 1; i < cells.length; i++){
			if(b){
				cells[i].style.background="#FFFFFF";
				b=false;
			}
			else{
				cells[i].style.background="#F1F4F7";
				b=true;
			};
		};
	}

document.close();

    </script>

</body>
</html>
