<%@ Page Language="C#" %>

<script runat="server">
    protected void Page_Load()
    {
        /***************************************
         * 启动管理员帐户安全检查过程
         * 版本:0.01
         * 非管理员权限重定向到error.asp?id=403
         * 管理员验证：action小甜饼为admin,session["vr_admin"]为true
         * 
         * *************************************/
        if (null == Page.Application["vr_isrun"])
            Response.Redirect("startup.aspx?cmd=" + Server.UrlEncode(Request.RawUrl), true);
        if ("false" == Page.Application["vr_isrun"])
            Response.Redirect("error.aspx?id=400", true);
        if ((null == Request.Cookies["VR"]) || ("OK" != Request.Cookies["VR"].Value.ToString()))
            Response.Redirect("index.aspx?", true);
        if (null == Page.Session["vr_blogid"] || null == Page.Session["vr_username"])
            Response.Redirect("index.aspx", true);
        if (Request.Cookies["action"] == null || Request.Cookies["action"].Value != "admin" || Page.Session["vr_admin"] == null || Page.Session["vr_admin"] != "true")
            Response.Redirect("error.aspx?id=403", true);
        /****************************************
         * 结束安全检查，继续执行操作
         * **************************************

        /******以下开始程序段工作****************/


    }



    protected void btnenable_Click(object sender, EventArgs e)
    {
        if (txtvalue.Text == "")
        {
            msg.Text = "没有参数!";
        }
        else
        {
            System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
            string sql = "update [info] set [active]=@active,[errmsg]=@msg where username=@username";
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
            conn.Open();
            try
            {
                cmd.Parameters.Add("@active", System.Data.SqlDbType.TinyInt).Value = chkactive.Checked ? 1 : 0;
                cmd.Parameters.Add("@msg", System.Data.SqlDbType.VarChar).Value = txtvalue.Text;
                cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar).Value = txtvalue.Text;
                int resultcount = cmd.ExecuteNonQuery();
                if (resultcount != 0)
                    msg.Text = chkactive.Checked ? "帐户激活成功!" : "帐户停用成功!";
                else
                    msg.Text = "找不到用户名!";
            }
            catch
            {
                //错误处理
                msg.Text = "激活或禁止中出现错误,请联系管理员!";
            }
            finally
            {
                cmd.Dispose();
                conn.Close();
            }
        }

    }

    protected void btnchangeuser_Click(object sender, EventArgs e)
    {
        if (txtvalue.Text == "")
        {
            msg.Text = "没有参数!";
        }
        else
        {
            System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
            string sql = "select [ID] from [info] where [username]=@username";
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
            conn.Open();
            try
            {
                cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar).Value = txtvalue.Text;
                int tmpid = (int)cmd.ExecuteScalar();
                Page.Session["vr_blogid"] = Convert.ToInt16(tmpid);
                Page.Session["vr_username"] = txtvalue.Text;
                msg.Text = "更换用户名为! " + txtvalue.Text + " 成功!";
                cmd.Parameters.Clear();
                cmd.CommandText = "insert into [service] (start,referrer,isrun) VALUES (@starttime,@referrer,@isrun)";
                cmd.Parameters.Add("@starttime", System.Data.SqlDbType.DateTime).Value = DateTime.Now;
                cmd.Parameters.Add("@referrer", System.Data.SqlDbType.VarChar).Value = "admin to " + txtvalue.Text;
                cmd.Parameters.Add("@isrun", System.Data.SqlDbType.TinyInt).Value = 3;
                cmd.ExecuteNonQuery();
            }
            catch
            {
                //错误处理
                msg.Text = "搞笑,没有这个用户名!你个白痴!";
            }
            finally
            {
                cmd.Dispose();
                conn.Close();
            }
        }
    }

    protected void btnsql_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
        string sql = txtvalue.Text;
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
        conn.Open();
        int itmp = -1;
        try
        {
            itmp = cmd.ExecuteNonQuery();
        }
        catch
        {
            //kkk
        }
        finally
        {
            msg.Text = "受影响数(-1为执行失败):" + itmp.ToString();
        }
    }

    protected void btnshowusers_Click(object sender, EventArgs e)
    {
        if (txtvalue.Text == "")
            Response.Redirect("showmembers.aspx");
        else
            Response.Redirect("showmembers.aspx?action=Empty&name=" + txtvalue.Text);
    }

    protected void btnDelOldData_Click(object sender, EventArgs e)
    {
        const int MAXACCOUNT = 5000;//NOTICE HERE SHOULD BE LARGER

        if (txtvalue.Text == string.Empty)
            return;
        DateTime lastlogin = DateTime.Parse(txtvalue.Text);
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
        string sql = "select [id] from [info] where [lastlogin] < @lastlogin order by lastlogin DESC";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
        conn.Open();
        int[] ids = new int[MAXACCOUNT];
        int i = 0;
        try
        {
            cmd.Parameters.Add("lastlogin", System.Data.SqlDbType.DateTime).Value = lastlogin;
            System.Data.SqlClient.SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read() && i < MAXACCOUNT)
            {
                //read userid from DataBase And Save it into ids Array.
                ids[i++] = dr.GetInt32(0);
            }
            if (i == MAXACCOUNT)
                msg.Text = "Account So Many!!";
            //Read Data Over
            dr.Close();
            StringBuilder idNeedToBeDel = new StringBuilder();
            idNeedToBeDel.Append("delete from [visitor] where belong in (");
            while (--i != -1)
            {
                idNeedToBeDel.Append(ids[i]);
                idNeedToBeDel.Append(",");
            }
            idNeedToBeDel.Append("0)");
            cmd.Parameters.Clear();
            cmd.CommandText = idNeedToBeDel.ToString();
            int retval = cmd.ExecuteNonQuery();
            msg.Text += "Deleted " + retval + " Record(s)";
        }
        catch
        {
            msg.Text = "Error!!";
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
            <br />
            <form id="Form1" runat="server">
                <asp:Button class="button" ID="btnenable" runat="server" Text="激活/禁止帐户" ToolTip="激活/禁止帐户并设置错误提示为文本框内容"
                    OnClick="btnenable_Click" />&nbsp;<asp:CheckBox ID="chkactive" runat="server" Text="激活帐户" />
                <asp:Button class="button" ID="btnchangeuser" runat="server" Text="改变用户" ToolTip="改变用户的用户名从现有的用户至文本框的名字"
                    OnClick="btnchangeuser_Click" />
                <asp:Button class="button" ID="btnshowusers" runat="server" Text="显示所有用户" OnClick="btnshowusers_Click" />
                <asp:Button class="button" ID="btnsql" runat="server" OnClick="btnsql_Click" Text="执行SQL语句" /><br />
                <asp:TextBox ID="txtvalue" runat="server" Height="186px" TextMode="MultiLine" Width="526px"></asp:TextBox><br />
                <asp:Button class="button" ID="btnDelOldData" runat="server" OnClick="btnDelOldData_Click" Text="删除旧的数据"
                    ToolTip="文本框内输入帐户最后登陆需要的日期" /><br />
                <br />
                &nbsp;
                <asp:Label ID="msg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label><br />
            </form>
        </div>
    </div>
</body>
</html>
