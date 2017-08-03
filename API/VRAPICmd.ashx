<%@ WebHandler Language="C#" Class="VRAPICmd" %>

using System;
using System.Web;
using System.Data.OleDb;

public class VRAPICmd : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.Cache.SetCacheability(HttpCacheability.Public);
        context.Response.BufferOutput = true;
        context.Response.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
        if (context.Request.QueryString["w1"] == null || context.Request.QueryString["c2"] == null || context.Request.QueryString["cmd"] == null || context.Request.QueryString["paprm"] == null)
            context.Response.End();
        if (System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(context.Request.QueryString["w1"].ToString() + ";QQ2460739_-" + DateTime.Now.Day.ToString() + "LengYOUYOU", "MD5").ToUpper() != context.Request.QueryString["c2"].ToString())
        {
            context.Response.Write("<ERROR>\n超时，请重新开启程序登录。");
            context.Response.End();
        }
        context.Response.Write(DoCommand(context.Request.QueryString["w1"].ToString(), context.Request.QueryString["cmd"].ToString(), context.Request.QueryString["paprm"].ToString()));
    }


    /// <summary>
    /// 执行命令
    /// </summary>
    /// <param name="strcmd"></param>
    /// <param name="strpaprm"></param>
    /// <returns></returns>
    private string DoCommand(string username, string strcmd, string strpaprm)
    {
        //检查参数完整
        if (strcmd == string.Empty)
            return "<ERROR>\n没有参数";
        string result;
        using (System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["VRConnString"]))
        {
            using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand())
            {
                cmd.Connection = conn;
                conn.Open();
                cmd.CommandText = "SELECT TOP 1 [id] FROM [INFO] WHERE [username] = @username";
                cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar, 20).Value = username;
                int blogid = Convert.ToInt32(cmd.ExecuteScalar());
                cmd.Parameters.Clear();

                switch (strcmd)
                {
                    case "DeleteAll":
                        cmd.CommandText = "delete from [visitor] where [belong]=@id";
                        cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = blogid;
                        break;
                    case "Delete3Days":
                        cmd.CommandText = "delete from [visitor] where [belong]=@id and [time]<@time";
                        cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = blogid;
                        cmd.Parameters.Add("@time", System.Data.SqlDbType.DateTime).Value = DateTime.Now.AddDays(-3);
                        break;
                    case "DeleteIPOnly":
                        cmd.CommandText = "delete from [visitor] where [belong]=@id and isblog=0";
                        cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = blogid;
                        break;
                    case "VIPResetCount":
                        cmd.CommandText = "update [visitor] set [count]=0 where [belong]=@id";
                        cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = blogid;
                        break;
                    case "VIPResetTime":
                        cmd.CommandText = "update [visitor] set [onlineduring]=0 where [belong]=@id";
                        cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = blogid;
                        break;
                    default:
                        return "啊。。你的客户端版本竟然比服务端的还新？！竟然还有无法识别的命令！！厉害厉害！！";
                        break;
                }
                if (cmd.ExecuteNonQuery() == 0)
                    result = "晕倒。没有数据可以操作了！";
                else if (cmd.ExecuteNonQuery() == -1)
                    result = "啊。。。出错了。。";
                else
                    result = "操作成功。谢谢合作！欢迎下次光临";
            }
        }
        return result;
    }


    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}