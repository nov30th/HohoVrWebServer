<%@ Page Language="C#" EnableViewState="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load()
    {
	//Page.Application["vr_isrun"] = "false";
	//return;
        /*************************************
         * 文件作用
         * 检查是否允许启动数据库联接,并将启动结果写入service表
         * 以全局变量 vr_isrun 保存
         * true 允许启动
         * false 错误或者不允许启动
         * 
         * force=true 重新生成启动参数为允许
         * clear=true 清除当前状态
         * view=true  显示当前状态
         * sql=XXX&run=true 执行构造的XXX语句
         * **********************************/
        if (Request.QueryString["force"] == "true")
        {
            if (null != Page.Application["vr_isrun"] && null != Page.Application["vr_starttime"])//存在全局就写出
                Response.Write("isrun:" + Page.Application["vr_isrun"] + "<BR>time:" + Page.Application["vr_starttime"]);
            System.Data.SqlClient.SqlConnection connadmin = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
            connadmin.Open();
            System.Data.SqlClient.SqlCommand cmdadmin = new System.Data.SqlClient.SqlCommand("update [service] set [isrun]=1 where [referrer]='canrun'", connadmin);
            byte canrun = 1;
            if (cmdadmin.ExecuteNonQuery() == 0)
            {
                cmdadmin.CommandText = "insert into [service] (start,referrer,isrun) VALUES (@starttime,@referrer,@isrun)";
                cmdadmin.Parameters.Add("@starttime", System.Data.SqlDbType.DateTime).Value = DateTime.Now;
                cmdadmin.Parameters.Add("@referrer", System.Data.SqlDbType.VarChar).Value = "canrun";
                cmdadmin.Parameters.Add("@isrun", System.Data.SqlDbType.TinyInt).Value = canrun;
                cmdadmin.ExecuteNonQuery();
            }
            cmdadmin.Dispose();
            connadmin.Close();
            Page.Application.Clear();
            Response.Write("ok!");
            Response.End();
        }
        else if (Request.QueryString["clear"] == "true")
        {
            Page.Application.Clear();
            Response.Write("ok!");
            Response.End();
        }
        else if (Request.QueryString["view"] == "true")
        {
            if (Page.Application["vr_isrun"] == null)
                Response.Write("no run value!");
            else
                Response.Write(Page.Application["vr_isrun"]);
            Response.End();
        }
        else if (Request.QueryString["run"] == "true" && Request.QueryString["sql"] != "")
        {
            System.Data.SqlClient.SqlConnection connadmin = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
            connadmin.Open();
            System.Data.SqlClient.SqlCommand cmdadmin = new System.Data.SqlClient.SqlCommand(Request.QueryString["sql"].Trim(), connadmin);
            Response.Write(cmdadmin.ExecuteNonQuery());
            cmdadmin.Dispose();
            connadmin.Close();
            Response.End();
        }

        if ((null != Page.Application["vr_isrun"] && null != Page.Application["vr_starttime"]) || null == Request.QueryString["cmd"])
        {
            Response.Write("what?");
            Response.End();
        }
        Page.Application.Clear();
        string sql = "select top 1 [isrun] from [service] where [referrer]='canrun'";
        bool iscon = false;
        bool isrun = false;
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
        try
        {
            conn.Open();
            byte canrun = (byte)cmd.ExecuteScalar();
            isrun = true;
            Page.Application.Lock();
            if (0 == canrun)
            {
                Page.Application["vr_isrun"] = "false";
            }
            else
            {
                Page.Application["vr_isrun"] = "true";
            }
            Page.Application["vr_starttime"] = DateTime.Now.ToString();
            Page.Application.UnLock();
            sql = "insert into [service] (start,referrer,isrun) VALUES (@starttime,@referrer,@isrun)";
            cmd.CommandText = sql;
            cmd.Parameters.Add("@starttime", System.Data.SqlDbType.DateTime).Value = DateTime.Now;
            cmd.Parameters.Add("@referrer", System.Data.SqlDbType.VarChar, 50).Value = Server.UrlDecode(Request.QueryString["cmd"]);
            cmd.Parameters.Add("@isrun", System.Data.SqlDbType.TinyInt).Value = canrun;
            cmd.ExecuteNonQuery();
            ///Reset The Expire VIP DATA
            sql = "select [username] from [vipcode] where dateadd('d',[validtime],[createtime]) <= now() and [status]<> 1";
            cmd.CommandText = sql;
            cmd.Parameters.Clear();
            System.Text.StringBuilder sbusername = new System.Text.StringBuilder();
            System.Data.SqlClient.SqlDataReader dr = cmd.ExecuteReader();
            bool isfirstread = true;
            while (dr.Read())
            {
                if (isfirstread)
                {
                    isfirstread = false;
                }
                else
                {
                    sbusername.Append(",");
                }
                sbusername.Append("'");
                sbusername.Append(dr.GetString(0));
                sbusername.Append("'");
            }
            dr.Close();
            if (sbusername.Length > 0)
            {
                sql = "update [info] set [option]=0,[memo]='VIP于' & now() & '到期' where [username] in (" + sbusername.ToString() + ")";
                cmd.CommandText = sql;
                cmd.Parameters.Clear();
                cmd.ExecuteNonQuery();
                sql = "update [vipcode] set [status]=1 where [username] in (" + sbusername.ToString() + ")";
                cmd.CommandText = sql;
                cmd.Parameters.Clear();
                cmd.ExecuteNonQuery();
            }
            //删除24小时内没有添加代码的帐户
            cmd.Parameters.Clear();
            cmd.CommandText = "delete from [info] where [lastrecount]<#12-12-1985# and [regtime]<dateadd('d',-1,now())";
            cmd.ExecuteNonQuery();
        }
        catch
        {
            Page.Application.Lock();
		Page.Application["vr_isrun"] = "true";
            //Page.Application["vr_isrun"] = "false";
            Page.Application["vr_starttime"] = DateTime.Now.ToString();
            Page.Application.UnLock();
        }
        finally
        {
            conn.Close();
        }
        if (null != Request.QueryString["cmd"])
            Response.Redirect(Server.UrlDecode(Request.QueryString["cmd"]));
    }
</script>

