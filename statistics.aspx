<%@ Page Language="C#" EnableViewState="false" %>

<script runat="server">
    protected void Page_Load()
    {
        /***************************************
         * 启动标准帐户安全检查过程
         * 版本:0.01
         * *************************************/
        if (null == Page.Application["vr_isrun"])
            Response.Redirect("startup.aspx?cmd=" + Server.UrlEncode(Request.RawUrl), true);
        if ("false" == Page.Application["vr_isrun"])
            Response.Redirect("error.aspx?id=400", true);
        if ((null == Request.Cookies["VR"]) || ("OK" != Request.Cookies["VR"].Value.ToString()))
            Response.Redirect("index.aspx?", true);
        if (null == Page.Session["vr_blogid"] || null == Page.Session["vr_username"])
            Response.Redirect("index.aspx", true);
        /****************************************
         * 结束安全检查，继续执行操作
         * **************************************/

        /******以下开始程序段工作****************/

        //Time Check
        if (Page.Session["last_request"] != null && Page.Session["last_request"].ToString() != string.Empty)
        {
            if (DateTime.Parse(Page.Session["last_request"].ToString()).AddSeconds(5) > DateTime.Now)
            {
                labresult.Text = "<font style=\"color:Red\">每个查询操作间隔不能少于5秒.</font>";
                return;
            }
        }
        Page.Session["last_request"] = DateTime.Now.ToString();
	StringBuilder chresult = new StringBuilder();
        //VIP Check
        if (Request.Form["action"] == "post")
        {
            if (Page.Session["vr_isverify"] == null || Page.Session["vr_username"] == null || Page.Session["vr_isverify"] == string.Empty)
            {
                //Not VIP
                //labresult.Text = "<font style=\"color:Red\">哎呀，你不是VIP，不能执行该非常非常耗费服务器资源的功能</font>";
                //return;
		chresult.Append("你不是VIP用户，不过近段时间将允许你使用该功能!<br>");
            }
        }
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
        string sql = "select [cellphone] from [info] where ID=@blogid";
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
        conn.Open();
        try
        {
            cmd.Parameters.Add("@blogid", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Page.Session["vr_blogid"]);
            string CellPhone = cmd.ExecuteScalar().ToString();
            if (CellPhone != "0")
            {
                cmd.Parameters.Clear();
                sql = "select [username],[time],[count],[nickname],[phylocal],[ip],[referrer],[onlineduring] from [visitor] where belong=@blogid";
                cmd.Parameters.Add("@blogid", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Page.Session["vr_blogid"]);
                if (Request.Form["action"] != null && Request.Form["action"] == "post")
                {
                    //Start Custom
                    if (Request.Form["username"] != null && Request.Form["username"] != string.Empty)
                    {
                        sql += " and username like @username";
                        cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar, 22).Value = "%" + Request.Form["username"].Replace("%", "") + "%";
                    }
                    if (Request.Form["phylocal"] != null && Request.Form["phylocal"] != string.Empty)
                    {
                        sql += " and phylocal like @phylocal";
                        cmd.Parameters.Add("@phylocal", System.Data.SqlDbType.VarChar, 20).Value = "%" + Request.Form["phylocal"].Replace("%", "") + "%";
                    }
                    if (Request.Form["times"] != null && Request.Form["times"] != string.Empty)
                    {
                        sql += " and count>@count";
                        cmd.Parameters.Add("@count", System.Data.SqlDbType.SmallInt).Value = Convert.ToInt16(Request.Form["times"]);
                    }
                    if (Request.Form["nickname"] != null && Request.Form["nickname"] != string.Empty)
                    {
                        sql += " and nickname=@nickname";
                        cmd.Parameters.Add("@nickname", System.Data.SqlDbType.VarChar, 20).Value = Request.Form["nickname"];
                    }
                    if (Request.Form["from"] != null && Request.Form["from"] != string.Empty)
                    {
                        sql += " and referrer like @referrer";
                        cmd.Parameters.Add("@referrer", System.Data.SqlDbType.VarChar, 255).Value = "%" + Request.Form["from"].Replace("%", "") + "%";
                    }
                    if (Request.Form["duringtime"] != null && Request.Form["duringtime"] != string.Empty)
                    {
                        sql += " and onlineduring > @onlineduring";
                        cmd.Parameters.Add("@onlineduring", System.Data.SqlDbType.SmallInt).Value = Convert.ToInt16(Request.Form["duringtime"]) / 10;
                    }
                }
                sql += " order by time DESC";
                cmd.CommandText = sql;
                if (Request.Cookies["action"] != null && Request.Cookies["action"].Value == "admin" && Page.Session["vr_admin"] != null && Page.Session["vr_admin"] == "true")
                {
                    chresult.Append("<form action='statistics.aspx' method=post><input type=text name=sql /></form><br />");
                    if (Request.Form["sql"] != null && Request.Form["sql"] != String.Empty)
                    {
                        cmd.CommandText = "select [username],[time],[count],[nickname],[phylocal],[ip],[referrer],[onlineduring] from [visitor] where " + Request.Form["sql"];
                    }
                }
                System.Data.SqlClient.SqlDataReader dr = cmd.ExecuteReader();
                chresult.Append("<script language=\"javascript\">\nvar isVIP=true;\n");
                if (Page.Session["vr_isverify"] == null || Page.Session["vr_isverify"].ToString() == string.Empty)
                {
                    //if not VIP
                    //chresult.Append("isVIP=false;\n");
                }

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
                labresult.Text = "<font color=red>请先进入资料设定，填写完整的手机号码继续操作!";
            }
        }
        catch
        {
            msg.Text = "执行中出错!";
            //chresult.Append("</" + "script>");
            labresult.Text = "执行中出错!"; //chresult.ToString();
        }
        finally
        {
            cmd.Dispose();
            conn.Close();
        }
    }
</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Language" content="zh-CN" />
    <link rel="stylesheet" rev="stylesheet" href="CSS/admin.css" type="text/css" media="screen" />
    <title>HOHO`` 系统管理</title>

    <script type="text/javascript">
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
						document.getElementById('DivLoading').innerHTML='<h2><font color="red">数据下载完毕,正在分析并解析数据。请耐心等待！速度视你电脑快慢而定!<br />如果有提示显示,请选择 否!! 才能显示全部数据。</font></h2>';
						iisload = true;
					}
				}
			}
    </script>

</head>
<body>
    <div id="divMain">
        <div class="Header">
            访问统计</div>
        <div id="divMain2">
            <center>
                当前列出<strong>全部</strong>的访问记录。
                <br />
                <form method="post" action="statistics.aspx">
                    <table>
                        <tr>
                            <td colspan="3" style="text-align: center">
                                筛选查询(VIP功能)</td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                用户名<br />
                                <input type="text" name="username" /></td>
                            <td style="width: 100px">
                                昵称<br />
                                <input type="text" name="nickname" /></td>
                            <td style="width: 100px">
                                访问次数大于<br />
                                <input type="text" name="times" /></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                物理位置<br />
                                <input type="text" name="phylocal" /></td>
                            <td style="width: 100px">
                                从哪里来<br />
                                <input type="text" name="from" /></td>
                            <td style="width: 100px">
                                逗留时间大于(秒)<br />
                                <input type="text" name="duringtime" /></td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <input type="hidden" name="action" value="post" /><input type="submit" class="button"
                                    value="强烈筛选" name="QUERY" />
                            </td>
                        </tr>
                    </table>
                </form>
                &nbsp;
                <br />
                <br />
                <div id="DivLoading">
                    <asp:Label ID="msg" runat="server" Font-Bold="True" Font-Overline="True" Font-Strikeout="False"
                        Font-Underline="True" ForeColor="Red"></asp:Label>正在下载访问数据。。。。请耐心等待</div>
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
        </div>
    </div>

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
