<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    protected void Page_Load()
    {
        /***************************************
        * 文件作用：程序关于
        * 不需要检查
        * 版本:0.01
        * *************************************/

        labversion.Text = ConfigurationSettings.AppSettings["VRVersion"];
        labcopyright.Text = ConfigurationSettings.AppSettings["VRCopyright"];
    }
</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Language" content="zh-CN" />
    <link rel="stylesheet" rev="stylesheet" href="CSS/admin.css" type="text/css" media="screen" />
    <title>HOHO`` 系统管理</title>
</head>
<body>
    <div id="divMain">
        <div class="Header">
            关于程序
        </div>
        <div id="divMain2">
            <br />
            系统版本:
            <asp:Label ID="labversion" runat="server" Text="" />
            <br />
            版权所有:
            <asp:Label ID="labcopyright" runat="server" Text="" />
            <hr />
            <br />
            功能:<br />
            <br />
            <ul>
                <li>和其他统计一样,拥有地理位置和IP纪录.</li><br />
                <li>最详细的中国IP数据库支持.</li><br />
                <li>从什么页面来的记录,比如从Google搜索了什么关键词到了你的BLOG。</li><br />
                <li><strong>屏蔽功能,定义IP段,城市名字,省名,详细物理地址,用户名进行屏蔽浏览者.</strong></li><br />
                <li><strong>页面停留时间,即每一位浏览者看了你BLOG多少时间,精确到秒.</strong></li><br />
                <li>记录访问你BLOG的BLOGCNer用户名及昵称.</li><br />
                <li>访问者动态显示在BLOG页面上.(可选隐藏)</li><br />
                <li>自定义显示在BLOG页面上数据的风格和内容.</li><br />
                <li>背景音乐扩展,直接在资料中写入多个地址,连续播放在BLOG页面上.</li><br />
                <li>记录筛选,数据不分页,直接快速定位到要找的信息.</li><br />
                <li>记录直接下载保存为Microsoft Excel电子表格文件.</li><br />
                <li>...</li>
            </ul>
            <br />
            不开放注册原因:BLOGCN官方几度认为本人的系统为"偷窃"BLOGCN用户资料并使系统商业化而建立，固停止对外注册。<br />
            系统来源:本人接触ASP.Net开发的第一个小型程序。学业原因现在只对其少许维护，不会增加新的功能。<br />
            系统背景:最初目的为LengYouYou0621提供的程序。<br />
        </div>
    </div>
</body>
</html>
