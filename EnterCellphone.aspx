<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
        if ((null == Request.Cookies["VR"]) || ("OK" != Request.Cookies["VR"].Value.ToString()))
            Response.Redirect("index.aspx?", true);
        /****************************************
         * 结束安全检查，继续执行操作
         * **************************************/
        version.Text = ConfigurationSettings.AppSettings["VRVersion"];
        copyright.Text = ConfigurationSettings.AppSettings["VRCopyright"];

        /******以下开始程序段工作****************/

        if (Request.Form["username"] != null && Request.Form["password"] != null && Request.Form["cellphone"] != null)
        {
            string username = Request.Form["username"].ToString();
            string password = Request.Form["password"].ToString();
            string cellphone = Request.Form["cellphone"].ToString();
            int isok = 0;
            if (username == string.Empty || password == string.Empty || cellphone == string.Empty)
            {
                Response.Redirect("error.aspx?id=200&descript=资料输入不完整");
            }
            try
            {
                cellphone = Convert.ToInt64(cellphone).ToString();
            }
            catch
            {
                cellphone = "0";
            }
            if (cellphone.Length != 11)
            {
                Response.Redirect("error.aspx?id=200&descript=手机号码长度不正确，请输入11位非0开头的数字");
            }
            System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
            string sql = "update [info] set [cellphone]=@cellphone,[active]=true where [username]=@username and [password]=@password and [cellphone]='0'";
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
            conn.Open();
            try
            {
                cmd.Parameters.Add("@cellphone", System.Data.SqlDbType.VarChar).Value = cellphone;
                cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar).Value = username;
                cmd.Parameters.Add("@password", System.Data.SqlDbType.VarChar).Value = password;

                isok = cmd.ExecuteNonQuery();
                cmd.Dispose();
            }
            catch
            {
                //
            }
            finally
            {
                conn.Close();
                conn.Dispose();
            }
            if (isok != 0)
            {
                Response.Redirect("error.aspx?id=200&descript=执行成功！帐户已经激活！");
            }
            else
            {
                Response.Redirect("error.aspx?id=200&descript=填写密码或者用户错误或者你已经填写了手机号码！");
            }
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
<body bgcolor="#ffcc66" leftmargin="0" topmargin="0">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td width="100%">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td>
                            <table border="0" cellpadding="0" cellspacing="0" width="690">
                                <tr>
                                    <td>
                                        <table border="0" cellpadding="0" cellspacing="0" width="690">
                                            <tr>
                                                <td>
                                                    <table border="0" cellpadding="0" cellspacing="0" width="442">
                                                        <tr>
                                                            <td>
                                                                <img border="0" src="images1/nov30thtitle.png" width="442" height="147" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <img name="layout_r2_c1" src="images1/layout_r2_c1.jpg" width="442" height="8" border="0"
                                                                    alt="" /></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td>
                                                    <img border="0" src="images1/layout_r1_c6.png" width="248" height="155" /></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table border="0" cellpadding="0" cellspacing="0" width="690">
                                            <tr>
                                                <td>
                                                    <img name="layout_r3_c1" src="images1/layout_r3_c1.jpg" width="24" height="23" border="0"
                                                        alt="" /></td>
                                                <td width="100%" background="images1/layout_r3_c3.jpg">
                                                    <a href="client.aspx?">
                                                        <img onmouseover="this.src='images1/status1.png'" onmouseout="this.src='images1/status.png'"
                                                            border="0" src="images1/status.png" width="70" height="23" /></a><a href="personal.aspx"><img
                                                                onmouseover="this.src='images1/settings1.png'" onmouseout="this.src='images1/settings.png'"
                                                                border="0" src="images1/settings.png" width="70" height="23" /></a><a href="statistics.aspx"><img
                                                                    onmouseover="this.src='images1/visitors1.png'" onmouseout="this.src='images1/visitors.png'"
                                                                    border="0" src="images1/visitors.png" width="70" height="23" /></a><a href="control.aspx?"><img
                                                                        onmouseover="this.src='images1/control1.png'" onmouseout="this.src='images1/control.png'"
                                                                        border="0" src="images1/control.png" width="70" height="23" /></a><a href="help.aspx?"><img
                                                                            onmouseover="this.src='images1/help1.png'" onmouseout="this.src='images1/help.png'"
                                                                            border="0" src="images1/help.png" width="70" height="23" /></a><a href="faq.aspx"><img
                                                                                onmouseover="this.src='images1/faq1.png'" onmouseout="this.src='images1/faq.png'"
                                                                                border="0" src="images1/faq.png" width="70" height="23" /></a><a href="index.aspx?"><img
                                                                                    onmouseover="this.src='images1/exit1.png'" onmouseout="this.src='images1/exit.png'"
                                                                                    border="0" src="images1/exit.png" width="70" height="23" /></a><a href="admin.aspx?"><img
                                                                                        onmouseover="this.src='images1/admin1.png'" onmouseout="this.src='images1/admin.png'"
                                                                                        border="0" src="images1/admin.png" width="70" height="23" /></a><a href="database.aspx?"><img
                                                                                            onmouseover="this.src='images1/database1.png'" onmouseout="this.src='images1/database.png'"
                                                                                            border="0" src="images1/database.png" width="70" height="23" /></a></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table border="0" cellpadding="0" cellspacing="0" width="690">
                                            <tr>
                                                <td>
                                                    <img name="layout_r4_c1" src="images1/layout_r4_c1.jpg" width="442" height="15" border="0"
                                                        alt="" /></td>
                                                <td>
                                                    <img name="layout_r4_c6" src="images1/layout_r4_c6.jpg" width="248" height="15" border="0"
                                                        alt="" /></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="100%" background="images1/layout_r1_c7.jpg">
                            <img name="layout_r1_c7" src="images1/layout_r1_c7.jpg" width="70" height="193" border="0"
                                alt="" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <center>
                    <br />
                    You Have To Enter Your Mobile Number to Active Your Account!<br />
                    Notice:手机为系统重大更新(几月一次)及地址变更(几年一次)的消息通知方式,不会产生费用.不会泄露给第三者。
                    Cellphone is the way to receive big system update news.<br />
                    <br />
                    <span style="color: #ff0033">再次提示：该系统无法也没有能力就从你输入的一串数字中扣费用。<br />
                        </span><form action="entercellphone.aspx" method="post">
                        USERNAME:<input type="text" name="username" /><br />
                        PASSWORD:<input type="password" name="password" /><br />
                        CELLPHONE:<input type="cellphone" name="cellphone" /><br />
                        <input type="submit" name="submit" value="激活" />
                    </form>
                </center>
            </td>
        </tr>
        <tr>
            <td>
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td>
                            <table border="0" cellpadding="0" cellspacing="0" width="690">
                                <tr>
                                    <td>
                                        <table border="0" cellpadding="0" cellspacing="0" width="690">
                                            <tr>
                                                <td>
                                                    <img name="layout_r17_c1" src="images1/layout_r17_c1.jpg" width="212" height="16"
                                                        border="0" alt="" /></td>
                                                <td>
                                                    <img name="layout_r17_c5" src="images1/layout_r17_c5.jpg" width="478" height="16"
                                                        border="0" alt="" /></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table border="0" cellpadding="0" cellspacing="0" width="690">
                                            <tr>
                                                <td>
                                                    <img name="layout_r18_c1" src="images1/layout_r18_c1.jpg" width="16" height="59"
                                                        border="0" alt="" /></td>
                                                <td>
                                                    <table border="0" cellpadding="0" cellspacing="0" width="674">
                                                        <tr>
                                                            <td height="49" background="images1/layout_r18_c2.jpg">
                                                                <asp:Label ID="copyright" runat="server" Text="loading..."></asp:Label><br />
                                                                Version:<asp:Label ID="version" runat="server" Text="loading"></asp:Label></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <img name="layout_r19_c2" src="images1/layout_r19_c2.jpg" width="674" height="10"
                                                                    border="0" alt="" /></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="100%" background="images1/layout_r17_c7.jpg">
                            <img name="layout_r17_c7" src="images1/layout_r17_c7.jpg" width="70" height="75"
                                border="0" alt="" /></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>
