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

        /******以下开始程序段工作****************/

        //几个按钮确认
        btndisable.Attributes.Add("OnClick", "if(confirm('确定要销毁帐户?销毁帐户以后将不能再次用同样用户名注册!')!=true) return false;");
        btnrescue.Attributes.Add("OnClick", "if(confirm('确定要恢复到出厂设置?\\n你以前编辑的模版信息都回丢失哦!\\n模板版本:V1.02')!=true) return false;");
        btnclearall.Attributes.Add("OnClick", "if(confirm('确定清楚所有记录?不能恢复的啊!')!=true) return false;");
    }



    protected void btnclearall_Click(object sender, EventArgs e)
    {
        if (Page.Session["last_request"] != null && Page.Session["last_request"].ToString() != string.Empty)
        {
            if (DateTime.Parse(Page.Session["last_request"].ToString()).AddSeconds(5) > DateTime.Now)
            {
                msg.Text = "每个普通操作之间的时间不能少于5秒!";
                return;
            }
        }
        Page.Session["last_request"] = DateTime.Now.ToString();
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
        string sql;
        sql = "delete from [visitor] where [belong]=@id";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
        conn.Open();
        try
        {
            cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Page.Session["vr_blogid"]);
            int resultcount = cmd.ExecuteNonQuery();
            cmd.CommandText = "update [info] set [totalcount] = [totalcount] + @num where ID=@id";
            cmd.Parameters.Clear();
            cmd.Parameters.Add("@num", System.Data.SqlDbType.Int).Value = resultcount;
            cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Page.Session["vr_blogid"]);
            if (cmd.ExecuteNonQuery() != 0)
                msg.Text = "删除所有数据成功!";
            else
                msg.Text = "没有数据了还想删除?";
        }
        catch
        {
            //错误处理
            msg.Text = "删除中出现错误,!";
        }
        finally
        {
            cmd.Dispose();
            conn.Close();
        }
    }


    protected void btncleardays_Click(object sender, EventArgs e)
    {
        if (Page.Session["last_request"] != null && Page.Session["last_request"].ToString() != string.Empty)
        {
            if (DateTime.Parse(Page.Session["last_request"].ToString()).AddSeconds(5) > DateTime.Now)
            {
                msg.Text = "每个普通操作之间的时间不能少于5秒!";
                return;
            }
        }
        Page.Session["last_request"] = DateTime.Now;
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
        string sql = "delete from [visitor] where [belong]=@id and [time]<@time";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
        conn.Open();
        try
        {
            cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Page.Session["vr_blogid"]);
            cmd.Parameters.Add("@time", System.Data.SqlDbType.DateTime).Value = DateTime.Now.AddDays(-3);
            int resultcount = cmd.ExecuteNonQuery();
            cmd.CommandText = "update [info] set [totalcount] = [totalcount] + @num where ID=@id";
            cmd.Parameters.Clear();
            cmd.Parameters.Add("@num", System.Data.SqlDbType.Int).Value = resultcount;
            cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Page.Session["vr_blogid"]);
            if (cmd.ExecuteNonQuery() != 0)
                msg.Text = "删除数据成功!";
            else
                msg.Text = "没有数据了还想删除?";
        }
        catch
        {
            //错误处理
            msg.Text = "删除中出现错误,!";
        }
        finally
        {
            cmd.Dispose();
            conn.Close();
        }

    }

    protected void btnclearip_Click(object sender, EventArgs e)
    {
        if (Page.Session["last_request"] != null && Page.Session["last_request"].ToString() != string.Empty)
        {
            if (DateTime.Parse(Page.Session["last_request"].ToString()).AddSeconds(5) > DateTime.Now)
            {
                msg.Text = "每个普通操作之间的时间不能少于5秒!";
                return;
            }
        }
        Page.Session["last_request"] = DateTime.Now;
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
        string sql = "delete from [visitor] where [belong]=@id and isblog=0";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
        conn.Open();
        try
        {
            cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Page.Session["vr_blogid"]);
            int resultcount = cmd.ExecuteNonQuery();
            cmd.CommandText = "update [info] set [totalcount] = [totalcount] + @num where ID=@id";
            cmd.Parameters.Clear();
            cmd.Parameters.Add("@num", System.Data.SqlDbType.Int).Value = resultcount;
            cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Page.Session["vr_blogid"]);
            if (cmd.ExecuteNonQuery() != 0)
                msg.Text = "删除数据成功!";
            else
                msg.Text = "没有数据了还想删除?";
        }
        catch
        {
            //错误处理
            msg.Text = "删除中出现错误,!";
        }
        finally
        {
            cmd.Dispose();
            conn.Close();
        }

    }

    protected void btndisable_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
        string sql = "update [info] set active=0,errmsg='用户自己销毁帐户' where ID=@id";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
        conn.Open();
        try
        {
            cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Page.Session["vr_blogid"]);
            cmd.ExecuteNonQuery();
            msg.Text = "销户成功!请按退出系统激活销户";
        }
        catch
        {
            //错误处理
            msg.Text = "销户中出现错误,!";
        }
        finally
        {
            cmd.Dispose();
            conn.Close();
        }

    }

    protected void btnrescue_Click(object sender, EventArgs e)
    {
        if (Page.Session["last_request"] != null && Page.Session["last_request"].ToString() != string.Empty)
        {
            if (DateTime.Parse(Page.Session["last_request"].ToString()).AddSeconds(5) > DateTime.Now)
            {
                msg.Text = "每个普通操作之间的时间不能少于5秒!";
                return;
            }
        }
        Page.Session["last_request"] = DateTime.Now;
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
        string sql = "update [info] set [showtype]=1,[limitcount]=400,[pic]='<IMG src=\"http://www.blogcn.com/icon/7/32pic61.gif\" border=0><A title=\"来访者用户名:qzj_u&#10;来访者位置:qzj_i&#10;最近到访时间:qzj_t&#10;\" href=\"http://qzj_u.blogcn.com/\" target=_blank>qzj_n</A> qzj_s<br>',[picip]='<IMG src=\"http://www.blogcn.com/icon/7/32pic125.gif\" border=0>qzj_i qzj_s<BR>' where ID=@id";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
        conn.Open();
        try
        {
            cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Page.Session["vr_blogid"]);
            cmd.ExecuteNonQuery();
            msg.Text = "恢复数据成功";
        }
        catch
        {
            //错误处理
            msg.Text = "数据恢复失败，！";
        }
        finally
        {
            cmd.Dispose();
            conn.Close();
        }
    }

    protected void btnhidepic_Click(object sender, EventArgs e)
    {
        if (Page.Session["last_request"] != null && Page.Session["last_request"].ToString() != string.Empty)
        {
            if (DateTime.Parse(Page.Session["last_request"].ToString()).AddSeconds(5) > DateTime.Now)
            {
                msg.Text = "每个普通操作之间的时间不能少于5秒!";
                return;
            }
        }
        Page.Session["last_request"] = DateTime.Now;
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
        string sql = "update [info] set [verify]=1 where ID=@id";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
        conn.Open();
        try
        {
            cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Page.Session["vr_blogid"]);
            cmd.ExecuteNonQuery();
            msg.Text = "小花不会在页面显示了！";
        }
        catch
        {
            //错误处理
            msg.Text = "处理中出错,联系程序作者.";
        }
        finally
        {
            cmd.Dispose();
            conn.Close();
        }
    }

    protected void btnshowpic_Click(object sender, EventArgs e)
    {
        if (Page.Session["last_request"] != null && Page.Session["last_request"].ToString() != string.Empty)
        {
            if (DateTime.Parse(Page.Session["last_request"].ToString()).AddSeconds(5) > DateTime.Now)
            {
                msg.Text = "每个普通操作之间的时间不能少于5秒!";
                return;
            }
        }
        Page.Session["last_request"] = DateTime.Now;
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
        string sql = "update [info] set [verify]=0 where ID=@id";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
        conn.Open();
        try
        {
            cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Page.Session["vr_blogid"]);
            cmd.ExecuteNonQuery();
            msg.Text = "小花将会显示在页面！";
        }
        catch
        {
            //错误处理
            msg.Text = "处理中出错,联系程序作者.";
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
            系统操作</div>
        <div id="divMain2">
            <form id="control" runat="server">
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
                        <td style="width: 51px">
                        </td>
                        <td style="width: 100px">
                            <asp:Button class="button" ID="btnclearall" runat="server" Text="清除所有日志" Width="100px"
                                OnClick="btnclearall_Click" /></td>
                        <td style="width: 500px">
                            把访问统计里的资料全部清空，如果你的记录满了而没有整理的话，可能会被暂停使用。</td>
                    </tr>
                    <tr>
                        <td style="width: 51px; height: 22px">
                        </td>
                        <td style="width: 100px; height: 22px;">
                            <asp:Button class="button" ID="btncleardays" runat="server" Text="清除3天前日志" Width="100px"
                                OnClick="btncleardays_Click" /></td>
                        <td style="width: 500px; height: 22px;">
                            清除访问记录，保留最近3天内的访问。</td>
                    </tr>
                    <tr>
                        <td style="width: 51px">
                        </td>
                        <td style="width: 100px">
                            <asp:Button class="button" ID="btnclearip" runat="server" Text="清除非会员日志" Width="100px"
                                OnClick="btnclearip_Click" /></td>
                        <td style="width: 500px">
                            清除所有只有IP地址信息的记录，有其他比如用户名信息的记录会被保留下来。</td>
                    </tr>
                    <tr>
                        <td style="width: 51px">
                        </td>
                        <td style="width: 100px">
                            <asp:Button class="button" ID="btndisable" runat="server" Text="销毁帐户" Width="100px"
                                OnClick="btndisable_Click" /></td>
                        <td style="width: 500px">
                            即终止使用，也将终止履行HOHO``协议。销毁后不能再注册。</td>
                    </tr>
                    <tr>
                        <td style="width: 51px">
                        </td>
                        <td style="width: 100px">
                            <asp:Button class="button" ID="btnrescue" runat="server" Text="出厂设置还原" Width="100px"
                                OnClick="btnrescue_Click" /></td>
                        <td style="width: 500px">
                            恢复资料设定中的部分系统数据到系统初始化时，请谨慎操作。</td>
                    </tr>
                    <tr>
                        <td style="width: 51px">
                        </td>
                        <td style="width: 100px">
                            <asp:Button class="button" ID="btnhidepic" runat="server" Text="隐藏" Width="49px"
                                OnClick="btnhidepic_Click" /><asp:Button class="button" ID="btnshowpic" runat="server" Text="显示" Width="49px" OnClick="btnshowpic_Click" />
                        </td>
                        <td style="width: 500px">
                            就是插入代码的地方,要不要在前面显示一朵绿色小花呢。</td>
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

    <script>

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
