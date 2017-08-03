<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    protected void Page_Load()
    {
        if (Page.Session["vr_username"] == null || Page.Session["vr_username"] == string.Empty)
        {
            Response.Write("<html><script type='text/javascript'>window.top.location='index.aspx';</" + "script></html>");
            Response.End();
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Language" content="zh-CN" />
    <link rel="stylesheet" rev="stylesheet" href="CSS/admin.css" type="text/css" media="screen" />
    <style type="text/css">
body{
	margin:0;
	padding:0;
	background-color:#F0F6FC;
	background:url("image/common/topbacking4.gif") repeat-y;

}
p.button{
	margin:0 0 0 0;
	padding:4px 0 0 20px;
	height:18px;
	width:130px;
	background:url("image/common/topbacking3.gif") no-repeat;
}
p.button1{
	margin:0 0 0 0;
	padding:4px 0 0 20px;
	height:18px;
	width:130px;
	background:none;
}
	</style>

    <script>
function changeButtonColor(btnNow){
	var p=document.getElementsByTagName("p");
	for (var j = 0; j < p.length; j++){
		p[j].className="button1";
	}
	btnNow.parentNode.className="button";
	return true;
}
    </script>

</head>
<body>
    <p class="button1" style="cursor: pointer;">
        <a onclick='changeButtonColor(this)' href="index.aspx" target="_top">退出</a></p>
    <p class="button">
        <a onclick='return changeButtonColor(this)' href="client.aspx" target="main">系统首页</a></p>
    <p class="button1">
        <a onclick='return changeButtonColor(this)' href="personal.aspx" target="main">资料设定</a></p>
    <p class="button1">
        <a onclick='return changeButtonColor(this)' href="control.aspx" target="main">系统操作</a></p>
    <p class="button1">
        <a onclick='return changeButtonColor(this)' href="statistics.aspx" target="main">访问统计</a></p>
    <p class="button1">
        <a onclick='return changeButtonColor(this)' href="VIPcontrol.aspx" target="main">VIP操作</a></p>
    <p class="button1">
        <a onclick='return changeButtonColor(this)' href="vipstatus.aspx" target="main">VIP邀请</a></p>
    <div style="height: 8px;">
    </div>
    <p class="button1">
        <a onclick='return changeButtonColor(this)' href="help.aspx" target="main">安装说明</a></p>
    <p class="button1">
        <a onclick='return changeButtonColor(this)' href="faq.aspx" target="main">常见问题</a></p>
    <div style="height: 8px;">
    </div>
    <p class="button1">
        <a onclick='return changeButtonColor(this)' href="admin_admin.aspx" target="main">系统设置</a></p>
    <p class="button1">
        <a onclick='return changeButtonColor(this)' href="admin_datebase.aspx" target="main">
            数据库管理</a></p>
    <p class="button1">
        <a onclick='return changeButtonColor(this)' href="showmembers.aspx" target="main">用户管理</a></p>
    <p class="button1">
        <a onclick='return changeButtonColor(this)' href="admin_admin.aspx" target="main">备份与更新</a></p>
    <div style="height: 8px;">
    </div>
    <p class="button1">
        <a onclick='return changeButtonColor(this)' href="aboutus.aspx" target="main">关于程序</a></p>
</body>
</html>
