<%@ Page Language="C#" EnableSessionState="false" EnableViewState="false" ResponseEncoding="gb2312" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load()
    {
        /******************************
         * 接受提交的访问数据并处理
         * 如果参数中有qzj=true则表示pass referrer检查
         * 
         * 
         * 版本0.01
         * *****************************/
        const string WEBSITE = "http://www.nov30th.com/vr/"; //系统BASE地址
        const string WEBLOGO = "http://www.nov30th.com/vr/vpic/hidemember.gif"; //系统LOGO地址

        //Debug *********************************************
        //Page.Application.Lock();
        //Page.Application["vr_isrun"] = "true";
        //Page.Application.UnLock();
        //***************************************************

        //*************************************************
        //检查VR系统是否启动
        if (null == Page.Application["vr_isrun"])
            Response.Redirect("startup.aspx?cmd=" + Server.UrlEncode(Request.RawUrl), true);
        //检查是否允许数据库操作
        if ("true" != Page.Application["vr_isrun"])
        {
            Response.End();
        }

        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
        string sql = "select top 15 [nickname],[referrer],[time],[username] from [visitor] where [referrer] like 'qzj://Blogcn:%' and [belong]=1 order by [time] DESC";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
        try
        {
            conn.Open();
            System.Data.SqlClient.SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string BlogAdd;
                BlogAdd = dr[1].ToString().Replace("'", "\\'").Substring(13);
                //Output The Referrer Data
                Response.Write("document.write(\"<a href=http://");
                Response.Write(BlogAdd);
                Response.Write(".blogcn.com target=_blank title=点击访问页面>");
                if (dr[3].ToString() == BlogAdd)
                {
                    Response.Write(dr.GetString(0));
                }
                else
                {
                    Response.Write(BlogAdd);
                }
                Response.Write("</a>&nbsp;&nbsp;");
                Response.Write(dr.GetDateTime(2).ToLongDateString());
                Response.Write("<br />\");\n");
            }
            dr.Close();
        }
        catch
        {
            //do something
        }
        finally
        {
            cmd.Dispose();
            conn.Close();
            conn.Dispose();
        }
        Response.End();
    }
        
</script>