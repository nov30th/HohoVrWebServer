 
 <%@ Page Language="C#" EnableViewState="false" ContentType="audio/x-mpegurl" ResponseEncoding="gb2312"%>

<script runat="server">
    protected void Page_Load()
    {
        /***************************************
         * 启动访问安全检查过程
         * 版本:0.01
         * *************************************/
        if (null == Page.Application["vr_isrun"])
            Response.Redirect("startup.aspx?cmd=" + Server.UrlEncode(Request.RawUrl), true);
        if ("false" == Page.Application["vr_isrun"])
            Response.Redirect("error.aspx?id=400", true);
        if (Request.RawUrl == null || Request.RawUrl == "" || Request.QueryString["id"] == null || Request.QueryString["id"] == "")
            Response.End();
        
        /*************************************
         * 读取音乐地址并输出
         * ***********************************/
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
        string sql = "select top 1 [music] from [info] where ID=@id";
        string musicAddress = "";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
        conn.Open();
        try
        {
            //录入参数并获取music地址
            cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Request.QueryString["id"]);
            musicAddress = (string)cmd.ExecuteScalar();
            if (musicAddress == "http://www.music.com/我是天才.mp3")
                Response.Write("http://nov.qzjcr.com/a/忘不了你-孙楠-美丽的神话/");
            else
                Response.Write(musicAddress);
        }
        catch
        {
            Response.Write("http://nov.qzjcr.com/a/忘不了你-孙楠-美丽的神话/");
        }
        finally
        {
            cmd.Dispose();
            conn.Close();
        }   
    }
</script>
