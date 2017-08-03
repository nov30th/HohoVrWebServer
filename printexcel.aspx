<%@ Page Language="C#" EnableViewState="false" %>

<script runat="server">
    protected void Page_Load()
    {
        /***************************************
         * 文件作用：Output Data To Excel File
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
        if (Page.Session["vr_isverify"] == null)
            Response.Redirect("error.aspx?id=200&descript=不是VIP用户");
        if (!Page.IsPostBack)
        {
            System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
            string sql = ("select [ID],[username] as 用户名,[time] as 访问时间,[count] as 访问次数,[nickname] as 昵称,[phylocal] as 物理位置,[ip] as IP地址值,[referrer] as 从哪里来,[isblog] as 是否会员 from [visitor] where belong=" + Page.Session["vr_blogid"].ToString() + " order by time DESC");
            conn.Open();
            System.Data.SqlClient.SqlDataAdapter myCommand = new System.Data.SqlClient.SqlDataAdapter(sql, conn);
            System.Data.DataSet ds = new System.Data.DataSet();
            myCommand.Fill(ds, "visitor");
            MyDataGrid.DataSource = ds.Tables["visitor"].DefaultView;
            MyDataGrid.DataBind();
            MyDataGrid.Dispose();
            myCommand.Dispose();
            conn.Close();
            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "gb2312";
            //下面这行很重要， attachment 参数表示作为附件下载，您可以改成 online在线打开 
            //filename=FileFlow.xls 指定输出文件的名称，注意其扩展名和指定文件类型相符，可以为：.doc 　　 .xls 　　 .txt 　　.htm　　 
            Response.AppendHeader("Content-Disposition", "attachment;filename=Nov30th.xls");
            Response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");
            //Response.ContentType指定文件类型 可以为application/ms-excel 　　 application/ms-word 　　 application/ms-txt 　　 application/ms-html 　　 或其他浏览器可直接支持文档　 
            Response.ContentType = "application/ms-excel";
            System.IO.StringWriter oStringWriter = new System.IO.StringWriter();
            System.Web.UI.HtmlTextWriter oHtmlTextWriter = new System.Web.UI.HtmlTextWriter(oStringWriter);
            MyDataGrid.RenderControl(oHtmlTextWriter);
            //this 表示输出本页，你也可以绑定datagrid,或其他支持obj.RenderControl()属性的控件　　 
            Response.Write(oStringWriter.ToString());
            Response.End();
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
    <asp:DataGrid ID="MyDataGrid" runat="server" BorderColor="black" ShowFooter="false"
        CellPadding="3" CellSpacing="0" Font-Size="12pt" HeaderStyle-BackColor="#aaaadd"
        DataKeyField="ID">
    </asp:DataGrid>
</body>
</html>
