<%@ Page Language="C#" EnableViewState="false" %>

<script runat="server">
    protected void Page_Load()
    {

        /******************
         * 安全检查
         * */
        if (Request.QueryString["w1"] == null || Request.QueryString["c2"] == null)
            Response.End();
        if (System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(Request.QueryString["w1"].ToString() + ";QQ2460739_-" + DateTime.Now.Day.ToString() + "LengYOUYOU","MD5").ToUpper() != Request.QueryString["c2"].ToString())
        {
            Response.Write("超时，请重新开启程序登录。");
            //Response.Write(System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(Request.QueryString["w1"].ToString() + ";QQ2460739_-" + DateTime.Now.Day.ToString() + "LengYOUYOU", "MD5").ToUpper());
            Response.End();
        }
        StringBuilder chresult = new StringBuilder();
        using (System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]))
        {
            string sql = "select top 1 [id] from [info] where [username]=@username and [password]=@password";
            using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn))
            {
                conn.Open();
                try
                {
                    cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar, 20).Value = Request.QueryString["w1"].ToString();
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
    <title>HOHO`` 统计表格</title>
    <style type="text/css">
    *
{
    font-size: 12px;
}
body, table, td
{
    line-height: 18px;
    font-size: 12px;
    color: #000000;
    font-family: Arial, Helvetica, sans-serif;
}
h1, h2, h3, h4, h5, h6
{
    font-size: 18px;
    padding: 0;
    margin: 0;
}
a
{
    text-decoration: none;
}
a:link
{
    color: #0066CC;
    text-decoration: none;
}
a:visited
{
    color: #0066CC;
    text-decoration: none;
}
a:hover
{
    color: #FF7F50;
    text-decoration: underline;
}
a:active
{
    color: #FF7F50;
    text-decoration: underline;
}
p
{
    margin: 0;
    padding: 5px;
}
table
{
    border-collapse: collapse;
    border: 1px solid #333333;
    background: #ffffff;
    margin-top: 10px;
}
td
{
    border: 1px solid #333333;
    margin: 0;
    padding: 3px;
}
img
{
    border: 0;
}
hr
{
    border: 0px;
    border-top: 1px solid #666666;
    background: #666666;
    margin: 2px 0 4px 0;
    padding: 0;
    height: 0px;
}
img
{
    margin: 0;
    padding: 0;
}
form
{
    margin: 0;
    padding: 0;
}
input, select
{
    border: 1px solid #CCCCCC;
    font-family: Arial, Helvetica, sans-serif;
    font-size: 12px;
}
textarea
{
    font-family: "Tahoma";
    border-width: 1px;
    font-size: 12px;
    color: #000000;
}
input.button
{
    background: url(  "../image/edit/fade-butt.png" );
    border: 1px double #909090;
    border-left-color: #c0c0c0;
    border-top-color: #c0c0c0;
    color: #333;
    padding: 0.05em 0.25em 0.05em 0.25em;
}    
    </style>

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
				            document.write(hour + '小时' + minute + '分' + second + '秒');
				        else if (minute!=0)
				            document.write(minute + '分' + second + '秒');
				        else if (second!=0)
				            document.write(second + '秒');
				        else
				            document.write('无记录');
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
					    document.write('<td align="right" colspan="9">来自收藏夹或者直接输入地址访问.');
					}
					document.write('</td></tr>');
					if (iisload != true)
					{
						document.getElementById('DivLoading').innerHTML='<h2><font color="red">正在分析并解析数据。请耐心等待！速度视你电脑快慢而定!<br /><br />如果有提示显示,请选择 <h1>否</h1>!! 才能显示全部数据。</font></h2>';
						iisload = true;
					}
				}
			}
    </script>

</head>
<body>
    <center>
        当前列出<strong>全部</strong>的访问记录。
        <br />
        &nbsp;
        <br />
        <br />
        <div id="DivLoading">
            <asp:Label ID="msg" runat="server" Font-Bold="True" Font-Overline="True" Font-Strikeout="False"
                Font-Underline="True" ForeColor="Red"></asp:Label><font color="red">请点击IE上面黄色的部分，选择<strong>允许阻止的内容</strong>。</font></div>
        <table bgcolor="#ffcc66" border="1" bordercolor="#ffffcc">
            <tbody>
                <tr>
                    <td>
                        最后访问<br />
                        (GMT+8:00)</td>
                    <td>
                        昵称</td>
                    <td>
                        次数</td>
                    <td>
                        用户名</td>
                    <td>
                        物理位置</td>
                    <td>
                        IP地址<br />
                        (IPv4)</td>
                    <td>
                        逗留时间<br />
                        (VIP功能)</td>
                </tr>
                <asp:Label ID="labresult" runat="server" /></tbody></table>
    </center>

    <script>
			
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
