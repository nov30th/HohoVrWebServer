<%@ Page Language="C#" ResponseEncoding="UTF-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load()
    {
        if (null == Page.Application["vr_isrun"])
            Response.Redirect("startup.aspx?cmd=" + Server.UrlEncode(Request.RawUrl), true);
        if ("false" == Page.Application["vr_isrun"])
            Response.Redirect("error.aspx?id=400", true);


        if (Request.UrlReferrer == null || Request.UrlReferrer.ToString().IndexOf("blogcn.com") <= 0 || Request.QueryString["id"] == null)
        {
            Response.End();
        }
        if (Page.Request.Cookies["vr_visitor_id_" + Request.QueryString["id"].ToString()] == null)
        {
            Page.Response.Cookies["vr_visitor_id_" + Request.QueryString["id"].ToString()].Value = DateTime.Now.AddSeconds(9).ToString();
            //Response.Write("first");
        }
        else
        {
            try
            {
                //if have time
                if (DateTime.Parse(Page.Request.Cookies["vr_visitor_id_" + Request.QueryString["id"].ToString()].ToString()) > DateTime.Now)
                {
                    // in 10 seconds
                    //Response.Write("in 10");
                    Response.End();
                }
            }
            catch
            {
                Response.End();
            }
            Page.Response.Cookies["vr_visitor_id_" + Request.QueryString["id"].ToString()].Value = DateTime.Now.AddSeconds(9).ToString();
            //Response.Write("ok");
        }
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
        string sql = "update [visitor] set [onlineduring] = [onlineduring] + 1 where [id]=@id";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
        cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Request.QueryString["id"]);
        conn.Open();
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch
        {
            //Response.Write("err");
            //错误处理
        }
        finally
        {
            cmd.Dispose();
            conn.Close();
        }
    }
</script>

