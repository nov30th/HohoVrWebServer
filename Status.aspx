<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    
    protected void Page_Load()
    {
        //Response.Write("必须以管理员身份登陆操作。");
        //Response.End();
        /*************************************************
         * 文件作用
         * 服务器状态显示
         * ************************************************/
        if ((null != Request.Cookies["VR"]) && ("OK" == Request.Cookies["VR"].Value.ToString()))
            news.Text += "===Cookie Ready!===<br />";
        if ("true" == Page.Application["vr_isrun"])
            news.Text += "===Service Ready!===<br />";
        news.Text += "<br />&nbsp;&nbsp;<b>Copyright:</b>&nbsp;" + ConfigurationSettings.AppSettings["VRCopyright"] + "<br />&nbsp;&nbsp;<b>Version:</b>&nbsp;";
        news.Text += ConfigurationSettings.AppSettings["VRVersion"];
        news.Text += "<br />&nbsp;&nbsp;<b>Server Time:</b>&nbsp;" + DateTime.Now.ToString();
        news.Text += "<br />&nbsp;&nbsp;<b>Service Restarted At:</b>&nbsp;" + Page.Application["vr_starttime"];
        news.Text += "<br />&nbsp;&nbsp;<b>Requests After Last Check:</b>&nbsp;" + Page.Application["vr_RequestCount"];
        news.Text += "<br />&nbsp;&nbsp;<b>Last Requested Page:</b><a href=" + Page.Application["vr_LastRequestPage"] + " target=_blank>&nbsp;" + Page.Application["vr_LastRequestPage"] + "</a>";
        news.Text += "<br />&nbsp;&nbsp;<b>Last Login Username:</b>&nbsp;" + Page.Application["vr_LastLoginUser"];
        news.Text += "<br />&nbsp;&nbsp;<b>All Login Times After Check:</b>&nbsp;" + Page.Application["vr_AllLoginTimes"];
        news.Text += "<br />&nbsp;&nbsp;<b>Incorrect Logins:</b>&nbsp;" + Page.Application["vr_IncorrectLogins"];
        news.Text += "<br />&nbsp;&nbsp;<b>Last Incorrect Login:</b>&nbsp;" + Page.Application["vr_IncorrectLoginUsername"];
        news.Text += "<br />&nbsp;&nbsp;<b>Program Run Error Times:</b>&nbsp;" + Page.Application["vr_ErrorTimes"];
        news.Text += "<br />&nbsp;&nbsp;<b>Last Run Error Position:</b>&nbsp;" + Page.Application["vr_ErrorPosition"];
        news.Text += "<br />&nbsp;&nbsp;<b>Visitors Blocked Count:</b>&nbsp;" + Page.Application["vr_VisitorBlockCount"];
        news.Text += "<br />&nbsp;&nbsp;<b>Last Blocker's Username:</b>&nbsp;" + Page.Application["vr_VisitorBlock"];
        news.Text += "<br />" + ConfigurationSettings.AppSettings["VRNews"];
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="style.css" rel="stylesheet" type="text/css" />
    <title>Service Running Status... [HOHO``]</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="news" runat="server" Text=""></asp:Label></div>
    </form>
</body>
</html>
