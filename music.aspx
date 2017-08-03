 
 <%@ Page Language="C#" EnableViewState="false" ContentType="audio/x-mpegurl" ResponseEncoding="gb2312"%>

<script runat="server">
    protected void Page_Load()
    {
        /***************************************
         * �������ʰ�ȫ������
         * �汾:0.01
         * *************************************/
        if (null == Page.Application["vr_isrun"])
            Response.Redirect("startup.aspx?cmd=" + Server.UrlEncode(Request.RawUrl), true);
        if ("false" == Page.Application["vr_isrun"])
            Response.Redirect("error.aspx?id=400", true);
        if (Request.RawUrl == null || Request.RawUrl == "" || Request.QueryString["id"] == null || Request.QueryString["id"] == "")
            Response.End();
        
        /*************************************
         * ��ȡ���ֵ�ַ�����
         * ***********************************/
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
        string sql = "select top 1 [music] from [info] where ID=@id";
        string musicAddress = "";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
        conn.Open();
        try
        {
            //¼���������ȡmusic��ַ
            cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Request.QueryString["id"]);
            musicAddress = (string)cmd.ExecuteScalar();
            if (musicAddress == "http://www.music.com/�������.mp3")
                Response.Write("http://nov.qzjcr.com/a/��������-���-��������/");
            else
                Response.Write(musicAddress);
        }
        catch
        {
            Response.Write("http://nov.qzjcr.com/a/��������-���-��������/");
        }
        finally
        {
            cmd.Dispose();
            conn.Close();
        }   
    }
</script>
