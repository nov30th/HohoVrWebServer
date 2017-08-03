<%@ Page Language="C#" EnableViewState="false" %>

<script runat="server">
    protected void Page_Load()
    {
        /***************************************
         * 文件作用：VIP邀请操作的主页面
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

        /******以下开始程序段工作****************/

        if (Page.Session["vr_username"].ToString() != "qzj")
            admin_createvip.Visible = false;//if not qzj then hide the creator
        if (!Page.IsPostBack)
        {
            System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
            string sql;
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            cmd.Connection = conn;
            if (Page.Session["vr_username"].ToString() == "qzj")
            {
                //show all vip code
                cmd.CommandText = "select [scoure],[username],[status],[createtime],[validtime],[code] from [VIPCode] order by [createtime] DESC";
            }
            else
            {
                //normal users
                cmd.CommandText = "select [scoure],[username],[status],[createtime],[validtime],[code] from [VIPCode] where [username]=@username or [scoure]=@user1 order by [createtime] DESC";
                cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar, 30).Value = Page.Session["vr_username"];
                cmd.Parameters.Add("@user1", System.Data.SqlDbType.VarChar, 30).Value = Page.Session["vr_username"];
            }
            conn.Open();
            StringBuilder tablestr = new StringBuilder();
            try
            {
                string outputvip = "";
                System.Data.SqlClient.SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    //Start Output VIP Information
                    tablestr.Append("<table><tr><td style=\"width:100px\">VIP邀请人</td><td style=\"width:100px\">VIP使用者</td><td style=\"width:60px\">有效时间</td><td style=\"width:100px\">开始时间</td><td style=\"width:60px\">状态</td><td style=\"width:200px\">VIP邀请编号</td></tr>");
                    do
                    {
                        tablestr.Append("\n<tr><td>");
                        tablestr.Append(dr.GetString(0));
                        tablestr.Append("</td><td>");
                        tablestr.Append(dr.GetString(1));
                        tablestr.Append("</td><td>");
                        tablestr.Append(day2string(dr.GetInt16(4)));
                        tablestr.Append("</td><td>");
                        tablestr.Append(dr.GetDateTime(3));
                        tablestr.Append("</td><td>");
                        switch (dr.GetInt16(2))
                        {
                            case 255:
                                tablestr.Append("<span style=\"color: Red;\">还没使用</span>");
                                break;
                            case 1:
                                tablestr.Append("<span style=\"color: blue;\">作废了</span>");
                                break;
                            case 0:
                                tablestr.Append("<span style=\"color: pink;\">已经绑定</span>");
                                break;
                        }
                        tablestr.Append("</td><td>");
                        outputvip = dr.GetString(5);
                        if (outputvip.Length == 32)
                        {
                            outputvip = outputvip.Insert(5, "-");
                            outputvip = outputvip.Insert(11, "-");
                            outputvip = outputvip.Insert(17, "-");
                            outputvip = outputvip.Insert(23, "-");
                            outputvip = outputvip.Insert(29, "-");
                            outputvip = outputvip.Insert(35, "-");
                        }
                        tablestr.Append(outputvip.ToUpper());
                        tablestr.Append("</td></tr>");
                    } while (dr.Read());
                    tablestr.Append("</table><br />如果状态为'还没使用'的邀请,可以把该邀请编号给别人或者自己使用成为VIP。<br />已经是VIP的更新邀请时,会使原来的邀请作废!");
                }
                else
                {
                    //No VIPCODE
                    tablestr.Append("没有任何关于你的VIP邀请信息<br /><br />你可以在这里输入你得到的VIP邀请编号体验VIP功能.");
                }
            }
            catch
            {

            }
            finally
            {
                cmd.Dispose();
                conn.Close();
            }
            tabletext.Text = tablestr.ToString();
        }
    }

    protected void btnnewcode_Click(object sender, EventArgs e)
    {
        if (Page.Session["vr_username"].ToString() == "lengyouyou")
        {
            tabletext.Text = "你好，冷UU。同学。根据国际惯例，永久VIP不能绑定其他VIP号码！谢谢支持HOHO``系统";
            return;
        }
        //屏蔽列表！！！
        
        bool isBlocked = false;
        string blockList = ";8510795;";
        if (blockList.IndexOf(";" + Page.Session["vr_username"].ToString() + ";") > -1)
        {
            isBlocked = true;
        }
        string strcode = txtcode.Text.ToLower().Replace("o", "0").Replace("-", string.Empty);
        if (strcode.Length != 32)
        {
            //Code not length 32
            tabletext.Text = "VIP邀请码格式错误!";
            return;
        }
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
        string sql = "select TOP 1 [lastrecount] from [info] where ID=@id";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
        cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Page.Session["vr_blogid"].ToString());
        cmd.CommandText = sql;
        cmd.Connection = conn;
        conn.Open();
        if (DateTime.Parse("11-12-1985") == Convert.ToDateTime(cmd.ExecuteScalar()))
        {
            tabletext.Text = "如果要绑定VIP，您至少要成功添加代码到您的主页上。";
            cmd.Dispose();
            conn.Close();
            return;
        }

        sql = "update [VIPCode] set [username]=@username,[status]=@statusafter where [code]=@code and [status]=@status and [username]<>@user1";
        cmd.Parameters.Clear();
        if (txtcode.Text.ToLower() == "ac849013545f8bd2938111a3507a0a7b")
        {
            //Administrator To Create VIP Code
            string strPassword = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(DateTime.Now.TimeOfDay.ToString(), "MD5").ToLower();
            cmd.CommandText = "insert into [VIPCode] (username,validtime,scoure,code,codetype,status,createtime) VALUES (@username,@validtime,@scoure,@code,@codetype,@status,@createtime)";
            cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar, 30).Value = "未绑定";
            cmd.Parameters.Add("@validtime", System.Data.SqlDbType.SmallInt).Value = Convert.ToInt16(31);//Days To BE VIP
            cmd.Parameters.Add("@scoure", System.Data.SqlDbType.VarChar).Value = Page.Session["vr_username"];
            cmd.Parameters.Add("@code", System.Data.SqlDbType.VarChar, 32).Value = strPassword;
            cmd.Parameters.Add("@codetype", System.Data.SqlDbType.TinyInt).Value = Convert.ToByte(1);
            cmd.Parameters.Add("@status", System.Data.SqlDbType.TinyInt).Value = Convert.ToByte(255);//Status 255 is Ready to BD
            cmd.Parameters.Add("@createtime", System.Data.SqlDbType.DateTime).Value = DateTime.Now;
            tabletext.Text = strPassword.ToUpper();
        }
        else if (strcode == "00000000000000000000000000000000")
        {
            //套装
            string strPassword = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(DateTime.Now.TimeOfDay.ToString(), "MD5").ToLower();
            cmd.CommandText = "insert into [VIPCode] (username,validtime,scoure,code,codetype,status,createtime) VALUES (@username,@validtime,@scoure,@code,@codetype,@status,@createtime)";
            cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar, 30).Value = Page.Session["vr_username"];
            cmd.Parameters.Add("@validtime", System.Data.SqlDbType.SmallInt).Value = 62;//Days To BE VIP
            cmd.Parameters.Add("@scoure", System.Data.SqlDbType.VarChar).Value = "新年VIP特权";
            cmd.Parameters.Add("@code", System.Data.SqlDbType.VarChar, 32).Value = "Happy New Year!";
            cmd.Parameters.Add("@codetype", System.Data.SqlDbType.TinyInt).Value = Convert.ToByte(1);
            cmd.Parameters.Add("@status", System.Data.SqlDbType.TinyInt).Value = Convert.ToByte(0);//Status 255 is Ready to BD
            cmd.Parameters.Add("@createtime", System.Data.SqlDbType.DateTime).Value = DateTime.Parse("2008-2-6");
            strcode = "Happy New Year!";
        }
        else
        {
            //Normal Users to BD
            cmd.CommandText = sql;
            cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar, 30).Value = Page.Session["vr_username"];
            cmd.Parameters.Add("@statusafter", System.Data.SqlDbType.TinyInt).Value = isBlocked ? Convert.ToByte(1) : Convert.ToByte(0);//Status 0 is BDed
            cmd.Parameters.Add("@code", System.Data.SqlDbType.VarChar, 32).Value = strcode;
            cmd.Parameters.Add("@status", System.Data.SqlDbType.TinyInt).Value = Convert.ToByte(255);
            cmd.Parameters.Add("@user1", System.Data.SqlDbType.VarChar, 30).Value = Page.Session["vr_username"];
        }
        try
        {
            int retval = (int)cmd.ExecuteNonQuery();

            if (retval == 0)
            {
                //No Code
                cmd.Parameters.Clear();
                cmd.CommandText = "select [username] from [vipcode] where [code] = @code";
                cmd.Parameters.Add("@code", System.Data.SqlDbType.VarChar, 32).Value = strcode;
                string strname = Convert.ToString(cmd.ExecuteScalar());
                if (strname == string.Empty)
                {
                    tabletext.Text = "<a style=\"color: Red\">没有该邀请序列,请检查是否输入出错!</a>";
                }
                else
                {
                    tabletext.Text = "该邀请序列已经被<a style=\"color: Red\"><strong>" + strname + "</strong></a>绑定!";
                }
            }
            else if (txtcode.Text.ToLower() == "ac849013545f8bd2938111a3507a0a7b")
            {
                //Add new code success!
                tabletext.Text += "成功添加一组VIP邀请编号!";
            }
            else
            {
                //屏蔽
                string sql1 = "update [VIPCode] set [status]=@status where [username]=@username and [code]<>@code";
                string sql2 = "update [info] set [memo]='新VIP邀请编号在" + DateTime.Now.ToString() + "启用成功!' where [id]=@uid";
                if (isBlocked)
                {
                    sql2 = "update [info] set [memo]='新VIP邀请编号在" + DateTime.Now.ToString() + "启用失败!' where [id]=@uid";
                }

                //Found Code
                cmd.CommandText = sql1;
                cmd.Parameters.Clear();
                cmd.Parameters.Add("@status", System.Data.SqlDbType.TinyInt).Value = Convert.ToByte(1);//Status 1 is InValid
                cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar, 30).Value = Page.Session["vr_username"];
                cmd.Parameters.Add("@code", System.Data.SqlDbType.VarChar, 32).Value = strcode;
                cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();
                //update account news
                cmd.CommandText = sql2;
                cmd.Parameters.Add("@uid", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Page.Session["vr_blogid"]);
                cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();
                cmd.CommandText = "UPDATE [info] SET [expdate]='2008/7/13' where [username]=@username";
                cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar, 30).Value = Page.Session["vr_username"];
                cmd.ExecuteNonQuery();
                tabletext.Text = "<scr" + "ipt type=\"text/javascript\">alert(\"成功更新邀请编号!请重新登录以便生效.\");</scr" + "ipt>";
            }

        }
        catch
        {

        }
        finally
        {
            cmd.Dispose();
            conn.Close();
        }
    }

    protected void btncreate_Click(object sender, EventArgs e)
    {
        if (Page.Session["vr_username"].ToString() == "qzj")
        {
            System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
            string sql = "update [VIPCode] set [username]=@username,[status]=@statusafter where [code]=@code and [status]=@status and [username]<>@user1";
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = sql;
            string strPassword = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(DateTime.Now.TimeOfDay.ToString(), "MD5").ToLower();
            cmd.CommandText = "insert into [VIPCode] (username,validtime,scoure,code,codetype,status,createtime) VALUES (@username,@validtime,@scoure,@code,@codetype,@status,@createtime)";
            cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar, 30).Value = "未绑定";
            cmd.Parameters.Add("@validtime", System.Data.SqlDbType.SmallInt).Value = Convert.ToInt16(txtvalidtime.Text);//Days To BE VIP
            cmd.Parameters.Add("@scoure", System.Data.SqlDbType.VarChar).Value = txtusername.Text;
            cmd.Parameters.Add("@code", System.Data.SqlDbType.VarChar, 32).Value = strPassword;
            cmd.Parameters.Add("@codetype", System.Data.SqlDbType.TinyInt).Value = Convert.ToByte(1);
            cmd.Parameters.Add("@status", System.Data.SqlDbType.TinyInt).Value = Convert.ToByte(255);//Status 255 is Ready to BD
            cmd.Parameters.Add("@createtime", System.Data.SqlDbType.DateTime).Value = DateTime.Now;
            tabletext.Text = "邀请创建成功：" + strPassword.ToUpper();
            conn.Open();
            try
            {
                int retval = (int)cmd.ExecuteNonQuery();
                if (retval != 1)
                    tabletext.Text = "不知道为什么没有创建成功!";
            }
            catch
            {
                tabletext.Text = "创建遇到错误！！";
            }
            finally
            {
                cmd.Dispose();
                conn.Close();
            }
        }
        else
        {
            tabletext.Text = "你没有权限";
        }
    }


    private string day2string(int days)
    {
        if (days < 31)
            return days.ToString() + "天";
        if (days == 32767)
            return "<font color=\"blue\"><strong>永久</strong></font>";
        System.Text.StringBuilder retval = new System.Text.StringBuilder();
        int years = 0, months = 0;
        years = days / 365;
        months = (days % 365) / 31;
        days = days - years * 365 - months * 31;
        if (years != 0)
        {
            retval.Append("<strong>");
            retval.Append(years);
            retval.Append("</strong><font color=\"red\">年</font>");
        }
        if (months != 0)
        {
            retval.Append("<strong>");
            retval.Append(months);
            retval.Append("</strong><font color=\"#208060\">个月</font>");
        }
        if (days != 0)
        {
            retval.Append("<strong>");
            retval.Append(days);
            retval.Append("</strong><font color=\"#208060\">天</font>");
        }
        return retval.ToString();
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
            VIP邀请</div>
        <div id="divMain2">
            <form id="control" runat="server">
                <asp:Label ID="tabletext" runat="server" Text=""></asp:Label>
                <br />
                <br />
                <table>
                    <tr>
                        <td style="width: 100px">
                            使用新邀请编号:</td>
                        <td style="width: 250px">
                            <asp:TextBox Width="240px" ID="txtcode" runat="server" MaxLength="38"></asp:TextBox>
                        </td>
                        <td style="width: 100px">
                            <asp:Button ID="btnnewcode" runat="server" Text="更新邀请" OnClick="btnnewcode_Click"
                                ToolTip="输入32位邀请更新" />
                        </td>
                    </tr>
                    <asp:Label ID="admin_createvip" runat="server">
                        <tr>
                            <td>
                                创建给用户:</td>
                            <td style="width: 100px" colspan="2">
                                <asp:TextBox Width="100px" ID="txtusername" runat="server" MaxLength="30"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                有效天数:
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="txtvalidtime" runat="server" MaxLength="6" Width="40px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="text-align: center">
                                <asp:Button ID="btncreate" runat="server" Text="创建邀请" ToolTip="给用户创建" OnClick="btncreate_Click" /></td>
                        </tr>
                    </asp:Label>
                </table>
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
