<%@ Page Language="C#" EnableViewState="false" %>

<script runat="server">
    protected void Page_Load()
    {

        /******************
         * 安全检查
         * */
        StringBuilder chresult = new StringBuilder();
        using (System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]))
        {
            string sql = "select top 1 [id] from [info] where [username]=@username and [password]=@password";
            using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn))
            {
                conn.Open();
                try
                {
                    cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar, 20).Value = "hoho";
                    cmd.CommandText = "select top 1 [id] from [info] where [username]=@username";
                    System.Data.SqlClient.SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        int blogid = dr.GetInt32(0);
                        dr.Close();
                        //cmd.Parameters.Add("@blogid", System.Data.SqlDbType.Int).Value = blogid;
                        //string CellPhone = cmd.ExecuteScalar().ToString();
                        cmd.Parameters.Clear();
                        sql = "select [username],[time],[count],[nickname],[phylocal],[ip],[referrer],[onlineduring] from [visitor] where belong=@blogid";
                        cmd.Parameters.Add("@blogid", System.Data.SqlDbType.Int).Value = blogid;
                        sql += " order by time DESC";
                        cmd.CommandText = sql;
                        dr = cmd.ExecuteReader();
                        chresult.Append("<script language=\"javascript\">\nvar isVIP=true;\n");
                        while (dr.Read())
                        {
                            chresult.Append("showlist('");
                            //chresult.Append(dr.GetInt32(0));//ID
                            //chresult.Append("','");
                            chresult.Append(dr[0].ToString());//UserName
                            chresult.Append("','");
                            chresult.Append(dr.GetDateTime(1));//LastVisitTime
                            chresult.Append("','");
                            chresult.Append(dr.GetInt16(2));//Visit Count
                            chresult.Append("','");
                            chresult.Append(dr[3].ToString());//nickname
                            chresult.Append("','");
                            chresult.Append(dr.GetString(4));//local address
                            chresult.Append("','");
                            chresult.Append(dr.GetDouble(5));//ip value
                            chresult.Append("','");
                            chresult.Append(dr[6].ToString());//referrer address
                            //chresult.Append("','");
                            //chresult.Append(dr.GetInt16(7));//is blog
                            chresult.Append("',");
                            chresult.Append("1,");//blog type
                            chresult.Append(dr.GetInt16(7));
                            chresult.Append(");\n");
                        }
                        chresult.Append("</" + "script>");
                        labresult.Text = chresult.ToString();
                        dr.Close();
                        if ((null != Request.Cookies["VR"]) && ("OK" == Request.Cookies["VR"].Value.ToString()))
                            news.Text += "===Cookie Ready!===<br />";
                        else
                            news.Text += "===Cookie Failed!===<br />";
                        if ("true" == Page.Application["vr_isrun"])
                            news.Text += "===Service Ready!===<br />";
                        else
                            news.Text += "===Service Failed!===<br />";
                        news.Text += "<br /><b>Copyright:</b><br />" + ConfigurationSettings.AppSettings["VRCopyright"] + "<br /><b>Version:</b><br />";
                        news.Text += ConfigurationSettings.AppSettings["VRVersion"];
                        news.Text += "<br /><b>Server Time:</b><br />" + DateTime.Now.ToString();
                        news.Text += "<br /><b>Service Restarted At:</b><br />" + Page.Application["vr_starttime"];
                        news.Text += "<br /><b>Requests After Last Check:</b><br />" + Page.Application["vr_RequestCount"];
                        news.Text += "<br /><b>Last Requested Page:</b><a href=" + Page.Application["vr_LastRequestPage"] + " target=_blank><br />" + Page.Application["vr_LastRequestPage"] + "</a>";
                        news.Text += "<br /><b>Last Login Username:</b><br />" + Page.Application["vr_LastLoginUser"];
                        news.Text += "<br /><b>All Login Times After Check:</b><br />" + Page.Application["vr_AllLoginTimes"];
                        news.Text += "<br /><b>Incorrect Logins:</b><br />" + Page.Application["vr_IncorrectLogins"];
                        news.Text += "<br /><b>Last Incorrect Login:</b><br />" + Page.Application["vr_IncorrectLoginUsername"];
                        news.Text += "<br /><b>Program Run Error Times:</b><br />" + Page.Application["vr_ErrorTimes"];
                        news.Text += "<br /><b>Last Run Error Position:</b><br />" + Page.Application["vr_ErrorPosition"];
                        news.Text += "<br /><b>Visitors Blocked Count:</b><br />" + Page.Application["vr_VisitorBlockCount"];
                        news.Text += "<br /><b>Last Blocker's Username:</b><br />" + Page.Application["vr_VisitorBlock"];
                        news.Text += "<br />" + ConfigurationSettings.AppSettings["VRNews"];
                    }
                    else
                    {
                        labresult.Text = "帐号或密码错误!";
                    }
                }
                catch
                {
                    msg.Text = "执行中出错!";
                    labresult.Text = "执行中出错!";
                }
                finally
                {
                    cmd.Dispose();
                    conn.Close();
                }
            }
        }
    }
</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta name="Keywords" content="Nov30th,June19th,HOHO``,Lengyouyou,Lengyouyou0621,冷UU" />
    <meta name="Description" content="Nov30th,June19th,HOHO``,Lengyouyou,Lengyouyou0621,冷UU" />
    <link rel="stylesheet" rev="stylesheet" href="http://www.nov30th.com/blog/style/macromedia.css"
        type="text/css" media="screen" />
    <link rel="stylesheet" rev="stylesheet" href="http://www.nov30th.com/blog/css/print.css"
        type="text/css" media="print" />

    <script language="JavaScript" src="http://www.nov30th.com/blog/script/common.js"
        type="text/javascript"></script>

    <title>Nov30th Satan QZJ July13th-Visitors</title>
</head>
<body class="multi tags">

    <script language="JavaScript" type="text/javascript">
	var str00="http://www.nov30th.com/blog/";
	var str01="Name or emaril can not be empty";
	var str02="Name format or email format is not right";
	var str03="Commentary can not be empty or too long";
	var str06="Display UBB Smiles>>";
	var intMaxLen="1000";
    </script>

    <script type="text/javascript">
            /**********************
            **代码完全由HOHO编写***
            **      欢迎盗版    ***
            **********************/
			var icurrentrecord = 0;
			var iisload = false;
			var isListDebug = false;
			var old_bg="";
			var olddate = "1985-11-12";
			var todaycount = 0;
			//时间比对
			
			function inStyle(obj)
			{
				old_bg=obj.style.background;
				obj.style.background="#FFFF99";
			}
			
			function inStyle2(obj)
			{
				old_bg=obj.style.background;
				obj.style.background="#E3FFF0";
			}
			
			function outStyle(obj)
			{
				obj.style.background=old_bg;
			}
			
			function ReplaceAll(strOrg,strFind,strReplace)
			{
				var index = 0;
				while(strOrg.indexOf(strFind,index) != -1)
				{
					strOrg = strOrg.replace(strFind,strReplace);
					index = strOrg.indexOf(strFind,index);
				}
				return strOrg;
			}
			
			function LoadUsername(url)
			{
				if (url.indexOf('qzj://') != 0)
					return '分析数据失败1!';
				if (url.indexOf(':') == -1)
					return '分析数据失败2!';
				var tmp_index = url.lastIndexOf(':');
				var tmp_blog = '';
				var tmp_name = '';
				var retval = '';
				tmp_blog = url.substring(6, tmp_index);
				tmp_name = url.substring(tmp_index + 1, url.length);
				if (isListDebug)
					alert('blog:' + tmp_blog + '\nblogname:' + tmp_name);
				switch(tmp_blog)
				{
				case 'Blogcn':
					retval = ('<a href=http://' + tmp_name + '.blogcn.com/ target=_blank>' + '来自Blogcn页面:<font color=red>' + tmp_name + '</font></a>');
					break;
				default:
					retval = '分析数据失败3!';
					break;
				}
				return retval;
			}
			
			function LoadSearchUrl(url)
			{
				if (url.indexOf('/vr/statistics.aspx') != -1)
					return '对方从Nov30th记录中点击访问。';
				else if (url.indexOf('/vr/aboutus.aspx') != -1)
					return 'July13th关于。';
				if (url.indexOf('http://') == 0)
					return '<a href="' + url + '" target="_blank" title="点击打开链接">' + url + '</a>';
				if (url.indexOf(':') == -1 || url.indexOf(':') == url.length - 1)
					return '分析数据失败5!';
				var tmp_index = url.indexOf(':');
				var retval = '';
				var tmp_urltype = url.substring(0,tmp_index);
				var tmp_urlparm = url.substring(tmp_index + 1, url.length);
				if (isListDebug)
					alert('type:' + tmp_urltype + '\nparm:' + tmp_urlparm);
				switch(tmp_urltype)
				{
				case 'Blogcn':
					retval = ('<a href="http://search.blogcn.com/search?key=' + tmp_urlparm + '" target=_blank>来自BlogCn搜索:<font color=red>' + tmp_urlparm + '</font></a>');
					break;
				case 'BC':
					retval = ('<font style="color: black">来自BLOGCN控制面板--好友文章更新 或者 最新留言</font>');
					break;
				case 'Google':
					retval = ('<a href="http://www.google.com/search?q=' + tmp_urlparm + '" target=_blank>来自Google搜索:<font color=red>' + decodeURIComponent(tmp_urlparm) + '</font></a>');
					break;
				case 'Baidu':
					retval = ('<a href="http://www.baidu.com/s?ie=utf-8&wd=' + encodeURI(tmp_urlparm) + '" target=_blank>来自Baidu搜索:<font color=red>' + tmp_urlparm + '</font></a>');
					break;
				case 'Soqq':
					retval = ('<a href="http://so.qq.com/q?w=' + tmp_urlparm + '" target=_blank>来自QQ搜索:<font color=red>' + tmp_urlparm + '</font></a>');
					break;
				case '3721':
					retval = ('<a href="http://seek.3721.com/index.htm?name=' + tmp_urlparm + '" target=_blank>来自3721搜索:<font color=red>' + tmp_urlparm + '</font></a>');
					break;
				default:
					retval = '分析数据失败6!';
					break;
				}
				retval = "<font color=blue>" + retval + "</font>"
					return retval;
			}
			
			
			function showlist(us,la,ti,ni,lo,ip,co,blogtype,ot)
			{
				var newdate = la.substring(0,la.indexOf (" "));
				if (olddate != newdate)
				{
					document.write("<TR onmouseover=inStyle2(this) onmouseout=outStyle(this)><TD colSpan=9>");
					if (todaycount != 0)
						document.write("<b>当天记录" + todaycount + "条.</b>");
					document.write("&nbsp;</TD></TR><TR onmouseover=inStyle2(this) onmouseout=outStyle(this)><TD colSpan=9><center><font color=red><B>" + newdate + "</B></font></center></TD></TR>");
					olddate = newdate;
					todaycount = 0;
				}
				todaycount++;
				var ip1,ip2,ip3,ip4;
				ip4 = ip & 0x000000FF;
				ip1 = (ip>>24)  & 0x000000FF;
				ip2 = (ip>>16)  & 0x000000FF;
				ip3 = (ip>>8)  & 0x000000FF;
				var conext,conext1;
				conext = ReplaceAll(co,'<','&lt;');
				conext1 = ReplaceAll(conext,'>','&gt;');
				if (blogtype==1)
				{
					document.write('<tr onmouseover=inStyle(this) onmouseout=outStyle(this)><td>' + la + '</td><td>' + ni + '</td><td>' + ti + '</td><td><a href=http://' + us + '.blogcn.com target=_blank title=访问当前用户的BLOG>' + us + '</a></td><td>' + lo + '</td><td>');
					document.write(ip1 + '.' + ip2 + '.' + ip3 + '.' + ip4 + '</td><td>');
					if (isVIP)
					{
					    ot *= 10;
					    var second,minute,hour;
					    hour = Math.floor(ot / 3600);
					    second = ot % 60;
					    minute = Math.floor((ot - (hour * 3600)) / 60);
				        if (hour!=0)
				            document.write(hour + 'H' + minute + 'M' + second + 'S');
				        else if (minute!=0)
				            document.write(minute + 'Min' + second + 'Sec');
				        else if (second!=0)
				            document.write(second + 'Sec');
				        else
				            document.write('NO REC');
					}
					document.write('</td></tr>');
					document.write('<tr onmouseover=inStyle2(this) onmouseout=outStyle(this)>');
					if (conext1 != '')
					{
					    document.write('<td align="left" colspan="9">');
						if (conext1.indexOf('qzj://') == 0)
							document.write(LoadUsername(conext1));
						else
							document.write(LoadSearchUrl(conext1));
					}
					else
					{
					    document.write('<td align="right" colspan="9">Direct Enter.');
					}
					document.write('</td></tr>');
					if (iisload != true)
					{
						document.getElementById('DivLoading').innerHTML='正在分析并解析数据。请耐心等待！';
						iisload = true;
					}
				}
			}
    </script>

    <div id="divAll">
        <div id="divPage">
            <div id="divMiddle">
                <div id="divTop">
                    <h1 id="BlogTitle">
                        <a href="http://www.nov30th.com/blog/">July13th</a></h1>
                    <h2 id="BlogSubTitle">
                        Nov30th</h2>
                </div>
                <div id="divNavBar">
                    <h3>
                        Navigation</h3>
                    <ul>
                        <li><a href="http://www.nov30th.com/blog/"><span>Index</span></a></li>
                        <li><a href="http://www.nov30th.com/blog/search.asp"><span>Search</span></a></li>
                        <li><a href="http://www.nov30th.com/blog/tags.asp"><span>TagCloud</span></a></li>
                        <li><a href="http://www.nov30th.com/blog/guestbook.asp"><span>GuestBook</span></a></li>
                        <li><a href="http://www.nov30th.com/blog/cmd.asp?act=login"><span>Admin</span></a></li>
                    </ul>
                </div>
                <div id="divMain">
                    <div class="post">
                        <h4 class="post-date">
                        </h4>
                        <h2 class="post-title">
                            Blog Visitors</h2>
                        <div class="post-body">
                            <center>
                                <div id="DivLoading">
                                    <asp:Label ID="msg" runat="server" Font-Bold="True" Font-Overline="True" Font-Strikeout="False"
                                        Font-Underline="True" ForeColor="Red"></asp:Label><font color="red">Loading, please
                                            wait....</font></div>
                                <table border="0">
                                    <tbody>
                                        <tr>
                                            <td>
                                                Last Visit</td>
                                            <td>
                                                NM</td>
                                            <td>
                                                Times</td>
                                            <td>
                                                UM</td>
                                            <td>
                                                Posi</td>
                                            <td>
                                                IPv4</td>
                                            <td>
                                                During</td>
                                        </tr>
                                        <asp:Label ID="labresult" runat="server" /></tbody></table>
                            </center>
                        </div>
                    </div>
                </div>
                <div id="divSidebar">
                    <div class="function" id="divMisc">
                        <h3>
                            Misc</h3>
                        <ul>
                            <li>
                                <asp:Label ID="news" runat="server"></asp:Label>
                            </li>
                        </ul>
                    </div>
                </div>
                <div id="divBottom">
                    <h3 id="BlogPowerBy">
                        Powered By HOHO``.</h3>
                    <h2 id="BlogCopyRight">
                        Copyright 1985-2007 Nov30th.Com All Rights Reserved.</h2>
                </div>
            </div>
        </div>
    </div>

    <script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
    </script>

    <script type="text/javascript">
_uacct = "UA-527422-1";
urchinTracker();
    </script>

    <script type="text/javascript" src="http://hoho.lengyouyou.com/vr/blogHOHO.aspx?"></script>

    <script type="text/javascript">
			
			//斑马线
			var tables=document.getElementsByTagName("table");
			var b=false;
			for (var j = 0; j < tables.length; j++){
				
				var cells = tables[j].getElementsByTagName("tr");
				
				cells[0].style.background="#DAE2E8";
				for (var i = 1; i < cells.length; i++){
					if(b){
						cells[i].style.background="#FFFFFF";
						b=false;
					}
					else{
						cells[i].style.background="#F1F4F7";
						b=true;
					};
				};
			}
			document.getElementById('DivLoading').innerHTML='';
			document.close();
			
    </script>

</body>
</html>
