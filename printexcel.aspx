<%@ Page Language="C#" EnableViewState="false" %>

<script runat="server">
    protected void Page_Load()
    {
        /***************************************
         * �ļ����ã�Output Data To Excel File
         * ������׼�ʻ���ȫ������
         * �汾:0.01
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
         * ������ȫ��飬����ִ�в���
         * **************************************/

        /******���¿�ʼ����ι���****************/
        if (Page.Session["vr_isverify"] == null)
            Response.Redirect("error.aspx?id=200&descript=����VIP�û�");
        if (!Page.IsPostBack)
        {
            System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
            string sql = ("select [ID],[username] as �û���,[time] as ����ʱ��,[count] as ���ʴ���,[nickname] as �ǳ�,[phylocal] as ����λ��,[ip] as IP��ֵַ,[referrer] as ��������,[isblog] as �Ƿ��Ա from [visitor] where belong=" + Page.Session["vr_blogid"].ToString() + " order by time DESC");
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
            //�������к���Ҫ�� attachment ������ʾ��Ϊ�������أ������Ըĳ� online���ߴ� 
            //filename=FileFlow.xls ָ������ļ������ƣ�ע������չ����ָ���ļ��������������Ϊ��.doc ���� .xls ���� .txt ����.htm���� 
            Response.AppendHeader("Content-Disposition", "attachment;filename=Nov30th.xls");
            Response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");
            //Response.ContentTypeָ���ļ����� ����Ϊapplication/ms-excel ���� application/ms-word ���� application/ms-txt ���� application/ms-html ���� �������������ֱ��֧���ĵ��� 
            Response.ContentType = "application/ms-excel";
            System.IO.StringWriter oStringWriter = new System.IO.StringWriter();
            System.Web.UI.HtmlTextWriter oHtmlTextWriter = new System.Web.UI.HtmlTextWriter(oStringWriter);
            MyDataGrid.RenderControl(oHtmlTextWriter);
            //this ��ʾ�����ҳ����Ҳ���԰�datagrid,������֧��obj.RenderControl()���ԵĿؼ����� 
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
