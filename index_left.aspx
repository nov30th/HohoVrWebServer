<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

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
	<script type="text/javascript">
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
<p class="button" ><a onclick='return changeButtonColor(this)' href="login.aspx" target="main">登录系统</a></p>
<p class="button1" ><a onclick='return changeButtonColor(this)' href="getpwd.aspx" target="main">忘记密码</a></p>
<p class="button1" ><a onclick='return changeButtonColor(this)' href="register.aspx" target="main">注册用户</a></p>

<div style="height:8px;"> </div>
<p class="button1"><a onclick='return changeButtonColor(this)' href="faq.aspx" target="main">常见问题</a></p>
<div style="height:8px;"> </div>
<p class="button1"><a onclick='return changeButtonColor(this)' href="admin_datebase.aspx" target="main">数据库管理</a></p>
<div style="height:8px;"> </div>
<p class="button1"><a onclick='return changeButtonColor(this)' href="aboutus.aspx" target="main">关于程序</a></p>
</body>
</html>