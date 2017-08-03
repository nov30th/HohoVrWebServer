<%@ WebHandler Language="C#" Class="VRAPILogin" %>

using System;
using System.Web;
using System.IO;
using System.Data.OleDb;
using System.Text;
/// <summary>
/// API
/// </summary>
public class VRAPILogin : IHttpHandler
{
    string vipExpDate, vipValidTime,lastLogin;
    bool isolder = false;

    public void ProcessRequest(HttpContext context)
    {
        //context.Response.ContentType = "image/jpeg";
        context.Response.Cache.SetCacheability(HttpCacheability.Public);
        context.Response.BufferOutput = true;
        context.Response.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
        if (context.Request.QueryString["v3"] == null || context.Request.QueryString["w1"] == null || context.Request.QueryString["c2"] == null || context.Request.QueryString["t4"] == null)
        {
            context.Response.Write("请求无效");
            return;
        }
        //版本检查
        if (context.Request.QueryString["v3"].ToString() == "0100")
        {
            isolder = true;
        }
        else if (context.Request.QueryString["v3"].ToString() != "0022")
        {
            context.Response.Write("您的版本已经过期\r\r请到 vr.nov30th.com 下载新版本。");
            context.Response.End();
        }
        string retval = SafeCheck(context.Request.QueryString["w1"].ToString(), context.Request.QueryString["c2"].ToString(), context.Request.QueryString["v3"].ToString(), context.Request.ServerVariables["REMOTE_HOST"].ToString());
        if (retval != "OK")
            context.Response.Write(retval);
        else
        {
            context.Response.Write("OK<COMMAND>\n");
            context.Response.Write(GetUserInfo(context.Request.QueryString["w1"].ToString()));
        }
    }

    private string SafeCheck(string username, string password, string clientVersion, string ipAddress)
    {
        using (System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["VRConnString"]))
        {
            using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand())
            {
                ///***********************************
                ///检查IP是否被屏蔽
                ///***********************************
                ///
                cmd.Connection = conn;
                conn.Open();
                cmd.CommandText = "select count(ID) from [loginblock] where ip=@ipaddress";
                cmd.Parameters.Add("@ipaddress", System.Data.SqlDbType.VarChar).Value = ipAddress;
                int blockCount = (int)cmd.ExecuteScalar();
                if (blockCount > 2)
                {
                    return "您的IP已经被屏蔽,请半小时后再试";
                }
                else
                {
                    cmd.Parameters.Clear();
                    cmd.CommandText = "select top 1 [ID],[active],[password],[lastlogin],[cellphone] from [info] where [username]=@username";
                    cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar).Value = username;
                    System.Data.SqlClient.SqlDataReader dr = cmd.ExecuteReader();
                    if (false == dr.Read())
                    {
                        //没有用户名
                        return "没有该用户名";
                    }
                    else
                    {
                        //验证密码
                        if (password.ToUpper() != System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(username + ";" + dr.GetString(2) + "QQ2460739" + DateTime.Now.Day.ToString(), "MD5").ToUpper())
                        {
                            //密码错误
                            dr.Close();
                            cmd.Parameters.Clear();
                            cmd.CommandText = "insert into [loginblock] ([username], [password],[ip]) VALUES(@username,@password,@ip)";
                            cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar).Value = username;
                            cmd.Parameters.Add("@password", System.Data.SqlDbType.VarChar).Value = "HOHO Client";
                            cmd.Parameters.Add("@ip", System.Data.SqlDbType.VarChar).Value = ipAddress;
                            cmd.ExecuteNonQuery();
                            return "密码错误,累计3次将屏蔽IP!";
                        }
                        else if (0 == dr.GetInt16(1))
                        {
                            //帐户关闭
                            dr.Close();
                            return "帐户已经被关闭,详细请登录网页查看";
                        }
                        else if (dr.GetString(4).Length < 10)
                        {
                            dr.Close();
                            return "请登录网页填写真实的手机号码。";
                        }
                        else
                        {
                            lastLogin = dr.GetDateTime(3).ToString();
                            //密码验证通过
                            dr.Close();
                            //登陆更新
                            {
                                cmd.Parameters.Clear();
                                cmd.CommandText = "update [info] set [times]=[times]+1, [lastlogin]=@time, [ip]=@ip where [username]=@username";
                                cmd.Parameters.Add("@time", System.Data.SqlDbType.DateTime).Value = DateTime.Now;
                                cmd.Parameters.Add("@ip", System.Data.SqlDbType.VarChar).Value = ipAddress;
                                cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar).Value = username;
                                cmd.ExecuteNonQuery();
                            }
                            //删除过期的屏蔽记录
                            cmd.Parameters.Clear();
                            cmd.CommandText = "delete from [loginblock] where time < @time";
                            cmd.Parameters.Add("@time", System.Data.SqlDbType.DateTime).Value = DateTime.Now.AddMinutes(30);
                            cmd.ExecuteNonQuery();
                            //Check If VIP

                            cmd.Parameters.Clear();
                            cmd.CommandText = "select top 1 [createtime],[validtime],[id] from [VIPCode] where [username]=@username and [status]=0 and [codetype]=1";
                            cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar, 30).Value = username;
                            dr = cmd.ExecuteReader();
                            if (dr.Read())
                            {
                                //OK! VIP
                                vipExpDate = dr.GetDateTime(0).AddDays(dr.GetInt16(1)).ToString();
                                vipValidTime = dr.GetInt16(1).ToString();
                                dr.Close();
                                //吸入最后客户端登录日期
                                {
                                    cmd.Parameters.Clear();
                                    cmd.CommandText = "update [info] set [errmsg]=@errmsg where [username]=@username";
                                    cmd.Parameters.Add("@errmsg", System.Data.SqlDbType.VarChar, 32).Value = DateTime.Now.ToString();
                                    cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar, 32).Value = username;
                                    cmd.ExecuteNonQuery();
                                }
                                return "OK";
                            }
                            else
                            {
                                //NO VIP Record
                                return "不是VIP用户,不过您可以到主页上获得最新的体验VIP序列号.";
                            }
                        }
                    }
                }
            }
        }
    }


    /// <summary>
    /// 读取用户信息
    /// </summary>
    /// <param name="username">用户名</param>
    /// <returns>返回客户端的信息</returns>
    private string GetUserInfo(string username)
    {
        using (System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["VRConnString"]))
        {
            using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand())
            {
                StringBuilder retval = new StringBuilder();
                cmd.Connection = conn;
                conn.Open();
                cmd.CommandText = "SELECT TOP 1 * FROM [info] WHERE [username]=@username";
                cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar, 20).Value = username;
                System.Data.SqlClient.SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    retval.Append("[username]\n");
                    retval.Append(username);
                    retval.Append("\n[maxcount]\n");
                    retval.Append(dr["maxcount"]);
                    retval.Append("\n[regtime]\n");
                    retval.Append(dr["regtime"]);
                    retval.Append("\n[vipexpdate]\n");
                    retval.Append(vipExpDate);
                    retval.Append("\n[accountexpdate]\n");
                    retval.Append(dr["expdate"]);
                    retval.Append("\n[vipvalidtime]\n");
                    retval.Append(vipValidTime);
                    retval.Append("\n[onlinetime]\n");
                    retval.Append((Convert.ToByte(dr["option"]) & 4));
                    retval.Append("\n[warncount]\n");
                    retval.Append(dr["warncount"]);
                    retval.Append("\n[lastlogin]\n");
                    retval.Append(lastLogin);
                    if (isolder)
                    {
                        retval.Append("\n[MESSAGE]\n");
                        retval.Append("您的版本不是最新版本。\r\r程序升级到0.20版本\r增加许多常用的记录操作以及模板代码安装正确检测。\r你可以在www.nov30th.com/vr/下载");
                    }
                    retval.Append("\n[SERVERKEY]\n");
                    retval.Append(System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(username + ";QQ2460739_-" + DateTime.Now.Day.ToString() + "LengYOUYOU", "MD5").ToUpper());
                }
                dr.Close();
                return retval.ToString();
            }
        }
    }


    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}
