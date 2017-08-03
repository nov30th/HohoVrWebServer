<%@ Page Language="C#" EnableViewState="false" %>

<script runat="server">
    protected void Page_Load()
    {
        /***************************************
         * 文件作用：提示错误信息的详细内容
         * 错误代码含义
         * 版本:0.01     
         * 301：客户端浏览器不支持Cookies
         * 400：服务器没有运行
         * 403：没有Admin权限
         * 500：服务器过程执行错误
         * 200：执行成功,说明由descript提供
         * 
         * 
         * 
         * *************************************/

        /******以下开始程序段工作****************/

        if (Request.QueryString["id"] != null)
        {
            switch (Request.QueryString["id"])
            {
                case "301":
                    error.Text = "对不起,您的浏览器不支持Cookies,不能访问本系统!";
                    break;
                case "400":
                    error.Text = "数据库没有连接,最后一次尝试时间在<BR>" + Page.Application["vr_starttime"] + "<br /><a href=\"http://www.nov30th.com/vr/status.aspx\">&gt;&gt;服务器状态&lt;&lt;</a>";
                    break;
                case "403":
                    error.Text = "您不是管理员,没有这个功能.";
                    break;
                case "500":
                    error.Text = "在处理数据过程中出现错误,请联系管理员。";
                    break;
                case "200":
                    error.Text = Request.QueryString["descript"].ToString();
                    break;
                default:
                    error.Text = "未知错误";
                    break;
            }
        }

        StringBuilder chresult = new StringBuilder();
        chresult.Append("<b>Copyright:</b>&nbsp;" + ConfigurationSettings.AppSettings["VRCopyright"] + "<br /><b>Version:</b>&nbsp;");
        chresult.Append(ConfigurationSettings.AppSettings["VRVersion"]);
        chresult.Append("<br /><b>Server Time:</b>&nbsp;" + DateTime.Now.ToString());
        chresult.Append("<br /><b>Service Restarted At:</b>&nbsp;" + Page.Application["vr_starttime"]);
        chresult.Append("<br /><b>Requests After Last Check:</b>&nbsp;" + Page.Application["vr_RequestCount"]);
        chresult.Append("<br /><b>Last Requested Page:</b><a href=" + Page.Application["vr_LastRequestPage"] + " target=_blank>&nbsp;" + Page.Application["vr_LastRequestPage"] + "</a>");
        chresult.Append("<br /><b>Last Login Username:</b>&nbsp;" + Page.Application["vr_LastLoginUser"]);
        chresult.Append("<br /><b>All Login Times After Check:</b>&nbsp;" + Page.Application["vr_AllLoginTimes"]);
        chresult.Append("<br /><b>Incorrect Logins:</b>&nbsp;" + Page.Application["vr_IncorrectLogins"]);
        chresult.Append("<br /><b>Last Incorrect Login:</b>&nbsp;" + Page.Application["vr_IncorrectLoginUsername"]);
        chresult.Append("<br /><b>Program Run Error Times:</b>&nbsp;" + Page.Application["vr_ErrorTimes"]);
        chresult.Append("<br /><b>Last Run Error Position:</b>&nbsp;" + Page.Application["vr_ErrorPosition"]);
        chresult.Append("<br /><b>Visitors Blocked Count:</b>&nbsp;" + Page.Application["vr_VisitorBlockCount"]);
        chresult.Append("<br /><b>Last Blocker's Username:</b>&nbsp;" + Page.Application["vr_VisitorBlock"]);
        chresult.Append("<br />" + ConfigurationSettings.AppSettings["VRNews"]);
        Label1.Text = chresult.ToString();
    }
    


</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Language" content="zh-CN" />
    <link rel="stylesheet" rev="stylesheet" href="CSS/admin.css" type="text/css" media="screen" />
    <title>HOHO`` 系统管理</title>
    <style type="text/css">
        P
        {
            font-size: 9pt;
        }
        TD
        {
            font-size: 9pt;
        }
        INPUT
        {
            font-size: 9pt;
        }
    </style>
</head>
<body>
    <div id="divMain">
        <div class="Header">
            提示信息</div>
        <div id="divMain2">
            <center>
                <table bordercolor="#ef8f00" cellspacing="0" bordercolordark="#ef8f00" cellpadding="2"
                    width="300" bordercolorlight="#ef8f00" border="1">
                    <tbody>
                        <tr>
                            <td width="100%" bgcolor="#ef8f00">
                                <font color="#ffffff">系统操作提示信息：</font>
                            </td>
                        </tr>
                        <tr>
                            <td width="100%">
                                <table cellspacing="10" width="100%" border="0">
                                    <tbody>
                                        <tr>
                                            <td width="100%">
                                                <br>
                                                <asp:Label ID="error" runat="server" Text="ErrorMessage"></asp:Label><br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="100%">
                                                <p align="right">
                                                    <!--<input onclick="javascript:history.back();" type="button" class="button" value="返回" name="B3">-->
                                                </p>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        <tr><td>
                        System Info:<br /><asp:Label ID="Label1" runat="server" Text="ErrorMessage"></asp:Label><br />
                        </td></tr>
                    </tbody>
                </table>
            </center>
        </div>
    </div>
</body>
</html>
