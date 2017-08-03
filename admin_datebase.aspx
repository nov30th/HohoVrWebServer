<%@ Page Language="C#" EnableViewState="true" %>

<script runat="server">
    protected void Page_Load()
    {
        /*************************************
         * 文件作用：数据库管理
         * 不需要任何验证既可以访问
         * *********************************/
        /******以下开始程序段工作****************/

    }




    protected void btnChangeT_Click(object sender, EventArgs e)
    {
        if (txtvalue.Text == ConfigurationSettings.AppSettings["VRPassword"])
        {
            Page.Application.Lock();
            Page.Application["vr_isrun"] = "true";
            Page.Application["vr_starttime"] = DateTime.Now.ToString();
            Page.Application.UnLock();
            msg.Text = "成功强制开始!";
        }
        else
        {
            msg.Text = "小B玩儿,日翻你!";
        }
    }

    protected void btnChangeF_Click(object sender, EventArgs e)
    {
        if (txtvalue.Text == ConfigurationSettings.AppSettings["VRPassword"])
        {
            Page.Application.Lock();
            Page.Application["vr_isrun"] = "false";
            Page.Application["vr_starttime"] = DateTime.Now.ToString();
            Page.Application.UnLock();
            msg.Text = "成功关闭!";
        }
        else
        {
            msg.Text = "小B玩儿,日翻你!";
        }
    }

    protected void btnenable_Click(object sender, EventArgs e)
    {
        if (txtvalue.Text == ConfigurationSettings.AppSettings["VRPassword"])
        {
            System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
            string sql = "update [service] set isrun=@isrun where referrer='canrun'";
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
            conn.Open();
            try
            {
                cmd.Parameters.Add("@isrun", System.Data.SqlDbType.TinyInt).Value = chkenable.Checked ? 1 : 0;
                if (cmd.ExecuteNonQuery() != 0)
                    msg.Text = "执行成功!";
                else
                    msg.Text = "执行失败!请检查数据库是否有相关记录!";
            }
            catch
            {
                msg.Text = "执行中遇到错误!";
            }
            finally
            {
                cmd.Dispose();
                conn.Close();
            }
        }
        else
        {
            msg.Text = "小B玩儿,日翻你!";
        }
    }

    protected void btnclear_Click(object sender, EventArgs e)
    {
        if (txtvalue.Text == ConfigurationSettings.AppSettings["VRPassword"])
        {
            Page.Application.Clear();
            msg.Text = "程序数据连接强制关闭!";
        }
        else
        {
            msg.Text = "小B玩儿,日翻你!";
        }
    }

    protected void btnbuild_Click(object sender, EventArgs e)
    {
        if (txtvalue.Text == ConfigurationSettings.AppSettings["VRPassword"])
        {
            System.Data.SqlClient.SqlConnection connadmin = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
            connadmin.Open();
            System.Data.SqlClient.SqlCommand cmdadmin = new System.Data.SqlClient.SqlCommand("update [service] set [isrun]=1 where [referrer]='canrun'", connadmin);
            byte canrun = 1;
            if (cmdadmin.ExecuteNonQuery() == 0)
            {
                cmdadmin.CommandText = "insert into [service] (start,referrer,isrun) VALUES (@starttime,@referrer,@isrun)";
                cmdadmin.Parameters.Add("@starttime", System.Data.SqlDbType.DateTime).Value = DateTime.Now;
                cmdadmin.Parameters.Add("@referrer", System.Data.SqlDbType.VarChar).Value = "canrun";
                cmdadmin.Parameters.Add("@isrun", System.Data.SqlDbType.TinyInt).Value = 1;
                cmdadmin.ExecuteNonQuery();
            }
            cmdadmin.Dispose();
            connadmin.Close();
            msg.Text = "成功建立数据库!";
        }
        else
        {
            msg.Text = "小B玩儿,日翻你!";
        }
    }

    protected void btncleardb_Click(object sender, EventArgs e)
    {
        if (txtvalue.Text == ConfigurationSettings.AppSettings["VRPassword"])
        {
            System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
            string sql = "delete from [service]";
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
            conn.Open();
            try
            {
                cmd.ExecuteNonQuery();
                msg.Text = "成功清除启动日志!";
            }
            catch
            {
                //错误处理
                msg.Text = "执行中遇到错误";
            }
            finally
            {
                cmd.Dispose();
                conn.Close();
            }
        }
        else
        {
            msg.Text = "小B玩儿,日翻你!";
        }
    }

    protected void btnnews_Click(object sender, EventArgs e)
    {
        if (txtvalue.Text == "sjquite")
        {
            if (txtnews.Text == string.Empty || txtnews.Text == null)
            {
                System.IO.StreamReader objreader = new System.IO.StreamReader(Server.MapPath("News.txt"), System.Text.Encoding.GetEncoding("GB2312"));
                txtnews.Text = objreader.ReadToEnd();
                objreader.Close();
                msg.Text = "读取完成，下一步请更改新闻进行更新";
            }
            else
            {
                System.IO.StreamWriter objwriter = new System.IO.StreamWriter(Server.MapPath("News.txt"), false, System.Text.Encoding.GetEncoding("GB2312"));
                objwriter.Write(txtnews.Text);
                objwriter.Close();
                msg.Text = "写入完成！";
            }
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
            数据库联接操作</div>
        <div id="divMain2">
            <br />
            <br />
            <form runat="server" action="admin_datebase.aspx">
                管理员操作~非管理员就不要尝试了!<br />
                MD5 32位 密码：<asp:TextBox ID="txtvalue" runat="server" TextMode="Password" /><br />
                <asp:TextBox ID="txtnews" runat="server" Height="201px" TextMode="MultiLine" Width="374px"></asp:TextBox><br />
                <asp:Button class="button" ID="btnenable" runat="server" Text="ChangeDB" OnClick="btnenable_Click" />
                <asp:CheckBox ID="chkenable" runat="server" Text="Enable" /><br />
                <asp:Button class="button" ID="btnChangeT" runat="server" Text="SetTrue" OnClick="btnChangeT_Click" />
                <asp:Button class="button" ID="btnChangeF" runat="server" Text="SetFalse" OnClick="btnChangeF_Click" />
                <asp:Button class="button" ID="btnclear" runat="server" OnClick="btnclear_Click"
                    Text="Force End App" /><br />
                <asp:Button class="button" ID="btnbuild" runat="server" OnClick="btnbuild_Click"
                    Text="重建启动标志" />
                <asp:Button class="button" ID="btncleardb" runat="server" OnClick="btncleardb_Click"
                    Text="清除启动日志" /><br />
                <asp:Button class="button" ID="btnnews" runat="server" Text="获取/建立新闻" OnClick="btnnews_Click" /><br />
                <asp:Label ID="msg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </form>
        </div>
    </div>
</body>
</html>
