<%@ Page Language="C#" %>

<script runat="server">
    protected void Page_Load()
    {
        /***************************************
         * 文件作用：VIP客户操作的主页面
         * 启动标准帐户安全检查过程
         * 版本:0.01
         * *************************************/
        if (null == Page.Application["vr_isrun"])
            Response.Redirect("startup.aspx?cmd=" + Server.UrlEncode(Request.RawUrl), true);
        if ("false" == Page.Application["vr_isrun"].ToString())
            Response.Redirect("error.aspx?id=400", true);
        if ((null == Request.Cookies["VR"]) || ("OK" != Request.Cookies["VR"].Value.ToString()))
            Response.Redirect("index.aspx?", true);
        if (null == Page.Session["vr_blogid"] || null == Page.Session["vr_username"])
            Response.Redirect("index.aspx", true);
        /****************************************
         * 结束安全检查，继续执行操作
         * **************************************/

        /******以下开始程序段工作****************/

        if (!isVIP())
        {
            btnCatage.Enabled = false;
            btnCleanCount.Enabled = false;
            btndeletevip.Enabled = false;
            btnOnlineDuring.Enabled = false;
        }
        else
        {
            System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
            string sql = "select top 1 [option] from [info] where id=@blogid";
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
            cmd.Parameters.Add("@blogid", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Page.Session["vr_blogid"]);
            conn.Open();
            try
            {
                //Load VIP option
                string stropt = Convert.ToString(cmd.ExecuteScalar());
                if (stropt == null || stropt == string.Empty)
                    stropt = "0";
                laboptvalue.Text = stropt;
                renameButtons(Convert.ToInt32(stropt));
            }
            catch
            {
                //错误处理
                msg.Text = "加载VIP数据出现错误!";
            }
            finally
            {
                cmd.Dispose();
                conn.Close();
            }
        }

    }

    /// <summary>
    /// 间隔时间控制
    /// </summary>
    /// <returns></returns>
    protected bool timeFree()
    {
        if (Page.Session["last_request"] != null && Page.Session["last_request"].ToString() != string.Empty)
        {
            if (DateTime.Parse(Page.Session["last_request"].ToString()).AddSeconds(5) > DateTime.Now)
            {
                msg.Text = "每个VIP操作之间的时间不能少于5秒!";
                return false;
            }
        }
        Page.Session["last_request"] = DateTime.Now.ToString();
        return true;
    }

    /// <summary>
    /// 检查是否VIP
    /// </summary>
    /// <returns></returns>
    protected bool isVIP()
    {
        if (Page.Session["vr_isverify"] == null || Page.Session["vr_isverify"].ToString() == string.Empty)
        {
            msg.Text = "你不是VIP,不能执行其中的功能.<br />VIP中的功能非常耗费服务器资源,只对少部分人开放.";
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// 重命名按钮名字
    /// </summary>
    /// <param name="optvalue"></param>
    protected void renameButtons(int optvalue)
    {
        btnOnlineDuring.Text = ((optvalue & 4) == 0) ? "开启页面逗留" : "关闭页面逗留";
    }

    /// <summary>
    /// 更新VIP设置数据
    /// </summary>
    /// <param name="optvalue"></param>
    /// <returns></returns>
    protected bool setToDatebase(int optvalue)
    {
        bool retval = false;
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
        string sql = "update [info] set [option]=@option where id=@id";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
        cmd.Parameters.Add("@option", System.Data.SqlDbType.Int).Value = optvalue;
        cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Page.Session["vr_blogid"]);
        conn.Open();
        try
        {
            if (cmd.ExecuteNonQuery() != 0)
            {
                retval = true;
                laboptvalue.Text = optvalue.ToString();
            }

        }
        catch
        {
            //错误处理
            retval = false;
        }
        finally
        {
            cmd.Dispose();
            conn.Close();
        }
        return retval;
    }

    protected void btnCatage_Click(object sender, EventArgs e)
    {
        if (!timeFree())
            return;
        if (isVIP())
            Response.Redirect("printexcel.aspx");
    }

    protected void btnCleanCount_Click(object sender, EventArgs e)
    {
        if (!timeFree())
            return;
        if (isVIP())
        {
            System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
            string sql = "update [visitor] set [count]=0, [onlineduring]=0 where [belong]=@id";
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
            conn.Open();
            try
            {
                cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Page.Session["vr_blogid"]);
                if (cmd.ExecuteNonQuery() != 0)
                    msg.Text = "真奇怪,全部访问次数都变为0类!";
                else
                    msg.Text = "啊哈哈,你已经没有数据可以变为0的了?";
            }
            catch
            {
                //错误处理
                msg.Text = "日,程序出错!";
            }
            finally
            {
                cmd.Dispose();
                conn.Close();
            }
        }
    }

    protected void btndeletevip_Click(object sender, EventArgs e)
    {
        if (Page.Session["vr_username"].ToString() == "lengyouyou0621")
        {
            msg.Text = "你好，冷UU。同学。根据国际惯例，永久VIP无法取消VIP资格！谢谢支持HOHO``系统";
            return;
        }
        if (!timeFree())
            return;
        if (isVIP())
        {
            System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
            string sql = "update [VIPCode] set [status]=1 where [status]=0 and [username]=@username";
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
            cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar, 30).Value = Page.Session["vr_username"];
            conn.Open();
            try
            {
                cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();
                cmd.CommandText = "update [info] set [option]=0 where [id]=@blogid";
                cmd.Parameters.Add("@blogid", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Page.Session["vr_blogid"]);
                cmd.ExecuteNonQuery();
                Page.Session["vr_isverify"] = null;
            }
            catch
            {
                //错误处理
                msg.Text = "日,程序出错!联系关系员好类.";
            }
            finally
            {
                cmd.Dispose();
                conn.Close();
            }
        }
        Response.Redirect("VIPcontrol.aspx");
    }

    protected void btnOnlineDuring_Click(object sender, EventArgs e)
    {
        if (!timeFree())
            return;
        int intopt = Convert.ToInt32(laboptvalue.Text);
        intopt ^= 4;//00000100
        if (setToDatebase(intopt))
        {
            msg.Text = "设置已经保存成功，即时生效!";
            renameButtons(intopt);
        }
        else
        {
            msg.Text = "数据库操作失败!";
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
            VIP操作</div>
        <div id="divMain2">
            <form id="control" runat="server">
                <asp:Label ID="laboptvalue" Visible="false" runat="server" />
                <table>
                    <tr>
                        <td style="width: 51px">
                        </td>
                        <td style="width: 100px">
                            功能</td>
                        <td style="width: 500px">
                            功能说明</td>
                    </tr>
                    <tr>
                        <td style="width: 51px; height: 22px;">
                        </td>
                        <td style="width: 100px; height: 22px;">
                            <asp:Button class="button" ID="btnCatage" runat="server" Text="下载所有记录" Width="100px"
                                OnClick="btnCatage_Click" /></td>
                        <td style="width: 500px; height: 22px;">
                            下载所有访问记录到格式为Excel能打开的文档。</td>
                    </tr>
                    <tr>
                        <td style="width: 51px; height: 22px;">
                        </td>
                        <td style="width: 100px; height: 22px;">
                            <asp:Button class="button" ID="btnCleanCount" runat="server" OnClick="btnCleanCount_Click"
                                Text="重置访问次数" Width="100px" /></td>
                        <td style="width: 500px; height: 22px;">
                            把记录里面访问次数和逗留时间全部置为0，作用于以后记录分析。</td>
                    </tr>
                    <tr>
                        <td style="width: 51px; height: 22px;">
                        </td>
                        <td style="width: 100px; height: 22px;">
                            <asp:Button class="button" ID="btndeletevip" runat="server" Text="删除自身VIP" Width="100px"
                                OnClick="btndeletevip_Click" /></td>
                        <td style="width: 500px; height: 22px;">
                            <a style="color: Red">解除VIP序列号的绑定。即取消VIP身份。</a></td>
                    </tr>
                    <tr>
                        <td style="width: 51px; height: 22px;">
                        </td>
                        <td style="width: 100px; height: 22px;">
                            <asp:Button class="button" ID="btnOnlineDuring" runat="server" Text="在线时长功能" Width="100px"
                                OnClick="btnOnlineDuring_Click" /></td>
                        <td style="width: 500px; height: 22px;">
                            开启此功能，会在统计里显示访问者逗留在页面的总时间。</td>
                    </tr>
                    <tr>
                        <td style="width: 51px">
                        </td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 500px">
                            <asp:Label ID="msg" runat="server" Font-Bold="True" ForeColor="Red" /></td>
                    </tr>
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
