<%@ Page Language="C#" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
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
         * **************************************/
        if (!IsPostBack && Request.QueryString["id"] != null && Request.QueryString["id"] != "")
        {
            System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
            string sql = "select top 1 [verify],[active],[expdate],[username],[memo],[maxcount],[errmsg] from [info] where id=@id";
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
            conn.Open();
            try
            {
                cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Request.QueryString["id"]);
                //读取基本数据
                System.Data.SqlClient.SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                averify.Checked = (dr.GetInt16(0) == 1 ? true : false);
                aactive.Checked = (dr.GetInt16(1) == 0 ? false : true);
                txtexpdate.Text = dr.GetDateTime(2).ToString();
                txtusername.Text = dr.GetString(3);
                txtmessage.Text = dr.GetString(4);
                txtmaxcount.Text = dr.GetInt16(5).ToString();
                txterrmsg.Text = dr.GetString(6).ToString();
                aid.Text = Request.QueryString["id"];
                msg.Text = "Ready To Run!";
            }
            catch
            {
                msg.Text = "Read Error";
            }
            finally
            {
                cmd.Dispose();
                conn.Close();
            }
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
        string sql = "update [info] set [verify]=@verify, [active]=@active, [expdate]=@expdate, [username]=@username, [memo]=@memo ,[maxcount]=@maxcount, [errmsg]=@errmsg where id=@id";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
        conn.Open();
        try
        {
            cmd.Parameters.Add("verify", System.Data.SqlDbType.TinyInt).Value = averify.Checked ? 1 : 0;
            cmd.Parameters.Add("active", System.Data.SqlDbType.TinyInt).Value = aactive.Checked ? 1 : 0;
            cmd.Parameters.Add("expdate", System.Data.SqlDbType.DateTime).Value = DateTime.Parse(txtexpdate.Text);
            cmd.Parameters.Add("username", System.Data.SqlDbType.VarChar).Value = txtusername.Text;
            cmd.Parameters.Add("memo", System.Data.SqlDbType.VarChar).Value = txtmessage.Text;
            cmd.Parameters.Add("maxcount", System.Data.SqlDbType.SmallInt).Value = Convert.ToInt16(txtmaxcount.Text);
            cmd.Parameters.Add("errmsg", System.Data.SqlDbType.VarChar).Value = txterrmsg.Text;
            cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Request.QueryString["id"]);
            if (cmd.ExecuteNonQuery() == 1)
                msg.Text = "Success!";
            else
                msg.Text = "Update Failed!";
        }
        catch
        {
            msg.Text = "Error!";
        }
        finally
        {
            cmd.Dispose();
            conn.Close();
        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
        string sql = "delete from [info] where id=@id";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
        conn.Open();
        try
        {
            cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Request.QueryString["id"]);
            //delete account
            if (cmd.ExecuteNonQuery() == 1)
                msg.Text = "Account Success Deleted!";
            else
                msg.Text = "Account Delete Failed!";
            //delete visitor
            cmd.Parameters.Clear();
            cmd.CommandText = "delete from [visitor] where belong=@id";
            cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Request.QueryString["id"]);
            if (cmd.ExecuteNonQuery() == 0)
                msg.Text += "<br>Visitor Success Deleted!";
            else
                msg.Text += "<br>Visitor Delete None!";
        }
        catch
        {
            msg.Text = "Error!";
        }
        finally
        {
            cmd.Dispose();
            conn.Close();
        }
    }
</script>

<html>
<head>
    <meta http-equiv="Content-Language" content="en-us" />
    <title>HOHO`` [Nov30th.Com]</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="style.css" rel="stylesheet" type="text/css" />
</head>

<script> 
            var isNN,isIE; 
            if (parseInt(navigator.appVersion.charAt(0))>=4){ 
            isNN=(navigator.appName=="Netscape")?1:0; 
            isIE=(navigator.appName.indexOf("Microsoft")!=-1)?1:0;} 
            width=400; 
            height=500; 
            function reSizeToImage(){ 
                if (isIE){ 
                window.resizeTo(1,10); 
                window.resizeTo(width,height+80);} 
                if (isNN){ 
                window.innerWidth=width; 
                window.innerHeight=height+80;} 
            }
            reSizeToImage(); 
</script>

<body>
    <form runat="server">
        ID:<asp:Label ID="aid" runat="server"></asp:Label><br />
        <asp:CheckBox ID="aactive" runat="server" Text="Actived~" /><br />
        <asp:TextBox ID="txtexpdate" runat="server" Width="210px"></asp:TextBox><br />
        <asp:CheckBox ID="averify" runat="server" Text="Verifyed~" /><br />
        <asp:TextBox ID="txtmaxcount" runat="server" Width="210px"></asp:TextBox><br />
        <asp:TextBox ID="txtusername" runat="server" Width="210px"></asp:TextBox><br />
        <asp:TextBox ID="txtmessage" runat="server" Height="127px" TextMode="MultiLine" Width="216px"></asp:TextBox><br />
        <asp:TextBox ID="txterrmsg" runat="server" Height="127px" TextMode="MultiLine" Width="216px"></asp:TextBox>
        <br />
        <asp:Label ID="msg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label><br />
        <asp:Button ID="btnUpdate" runat="server" Text="Update DATA" onmouseover="this.style.backgroundColor='yellow'"
            onmouseout="this.style.backgroundColor='buttonface'" OnClick="btnUpdate_Click" />
        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete Account" />
    </form>
</body>
</html>
