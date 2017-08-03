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
         * **************************************/

        /******以下开始程序段工作****************/

        if (!Page.IsPostBack && Request.QueryString["action"] != "Empty")
        {
            System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
            string sql = "select top 1 [ID],[username],[blogname],[expdate],[warncount],[maxcount],[limitcount],[lastlogin],[active],[showtype],[sex],[verify],[times],[blogtype],[lastrecount],[totalcount],[regtime] from [info]";
            conn.Open();
            System.Data.SqlClient.SqlDataAdapter myCommand = new System.Data.SqlClient.SqlDataAdapter(sql, conn);
            System.Data.DataSet ds = new System.Data.DataSet();
            myCommand.Fill(ds);
            MyDataGrid.DataSource = ds;
            MyDataGrid.DataBind();
            MyDataGrid.Dispose();
            myCommand.Dispose();
            conn.Close();
        }
        else if (Request.QueryString["action"] == "Empty")
        {
            txtsql.Text = "select * from [info] where username='" + Request.QueryString["name"].ToString() + "'";
        }

    }

    protected void btnapply_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
        string sql = txtsql.Text;
        System.Data.SqlClient.SqlDataAdapter myCommand = new System.Data.SqlClient.SqlDataAdapter(sql, conn);
        System.Data.DataSet ds = new System.Data.DataSet();
        conn.Open();
        try
        {
            myCommand.Fill(ds);
            MyDataGrid.DataSource = ds;
            MyDataGrid.DataBind();
        }
        catch
        {
            //error
        }
        finally
        {
            MyDataGrid.Dispose();
            myCommand.Dispose();
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
<body>
    <form runat="server">
        <asp:TextBox ID="txtsql" runat="server" Width="488px">select * from [info]</asp:TextBox>&nbsp;
        <br />
        <asp:Button ID="btnapply" runat="server" OnClick="btnapply_Click" Text="Apply" /></form>
    <br />
    <asp:DataGrid ID="MyDataGrid" runat="server" BorderColor="black" ShowFooter="false"
        CellPadding="3" CellSpacing="0" Font-Size="8pt" HeaderStyle-BackColor="#aaaadd"
        DataKeyField="ID">
        <Columns>
            <asp:HyperLinkColumn DataNavigateUrlField="ID" DataNavigateUrlFormatString="/vr/detail.aspx?id={0}"
                Text="Control" Target="_blank" />
        </Columns>
    </asp:DataGrid>
</body>
</html>
