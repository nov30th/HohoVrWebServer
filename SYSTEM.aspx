<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Language" content="zh-CN" />
	<link rel="stylesheet" rev="stylesheet" href="CSS/admin.css" type="text/css" media="screen" />
	<title>帐户管理</title>
</head>
<frameset rows="80,*" framespacing="0" border="0" frameborder="0">
	<frame name="banner" scrolling="no" src="admin_top.aspx" noresize="noresize"  marginwidth="0" marginheight="0" frameborder="0">
	<frameset cols="150,*">
		<frame name="list" target="main" src="admin_left.aspx"  noresize="noresize"  marginwidth="0" marginheight="0" frameborder="0" scrolling="none">
		<frame name="main" src="client.aspx" noresize="noresize" marginwidth="0" marginheight="0" frameborder="0" scrolling="yes">
	</frameset>
</frameset>
</html>