<%@ Page Language="C#" EnableViewState="true" %>

<script runat="server">
    protected void Page_Load()
    {
        /***************************************
         * 文件作用：客户操作的信息修改
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
        //if (Request.ServerVariables["HTTPS"] != "on")
        //{
        //    Response.Write("该页面强制要求HTTPS连接！请从正确的页面登陆");
        //    Response.End();
        //}
        if (!Page.IsPostBack)
        {
            /*******************************
             * 这里读取数据
             * *****************************/
            System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            conn.Open();
            bool isreadsucc = false;//是否读取成功
            //try
            {
                string sql;// = "update [info] set [blogname]='qzj',[cellphone]='123',[qq]='2309856',[music]='123',[email]='asd@asd.com',[limitcount]=400,[pic]='qzj',[picip]='fdsa',[blocklist]='fds',[sex]=0,[showtype]=1 where ID=1";
                //cmd.CommandText = sql;
                cmd.Connection = conn;
                //cmd.ExecuteNonQuery();
                sql = "select top 1 [blogname],[cellphone],[qq],[music],[email],[limitcount],[pic],[picip],[blocklist],[sex],[showtype],[pwd2] from [info] where ID=@id";
                cmd.CommandText = sql;
                cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Page.Session["vr_blogid"]);
                System.Data.SqlClient.SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                blogname.Text = dr.GetString(0);
                cellphone.Text = dr[1].ToString();
                if (cellphone.Text.Length == 11)
                {
                    //mark the cellphone
                    cellphone.Text = cellphone.Text.Substring(0, 7) + "****";
                }
                if (cellphone.Text == null || cellphone.Text == string.Empty || cellphone.Text.Length < 11)
                    cellPhoneDescript.Text = "&nbsp;&nbsp;&nbsp;提示:手机号码不符合规范!";
                qq.Text = dr.GetString(2);
                music.Text = dr.GetString(3);
                email.Text = dr.GetString(4);
                limitcount.Text = dr.GetInt16(5).ToString();
                pic.Text = dr.GetString(6);
                picip.Text = dr.GetString(7);
                blocklist.Text = dr.GetString(8);
                username.Text = Page.Session["vr_username"].ToString();
                if (dr.GetInt16(9) == 1)
                    female.Checked = true;
                else
                    male.Checked = true;
                if (dr.GetInt16(10) == 1)
                    showall.Checked = true;
                else
                    showmember.Checked = true;
                if (dr[11] == null || dr[11].ToString() == string.Empty)
                    pwd2Descript.Text = "提示:你还没有填写安全码!";
                dr.Close();
                isreadsucc = true;
            }
            //catch
            {
                //do something
            }
            //finally
            {
                cmd.Dispose();
                conn.Close();
            }
            if (!isreadsucc)//没有读取成功则转至
                Response.Redirect("error.aspx?id=500", true);
        }


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Page.Validate();
        if (txtpwd2.Text != txtchkpwd2.Text)
        {
            //没有通过安全码验证
            Response.Redirect("error.aspx?id=600&descript=两次安全码输入不一致!更新取消!", true);
        }
        if (Page.IsValid)
        {
            System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            conn.Open();
            bool isupdated = false;
            try
            {
                cmd.Connection = conn;
                cmd.CommandText = "update [info] set [blogname]=@blogname,[qq]=@qq,[music]=@music,[email]=@email,[limitcount]=@limitcount,[pic]=@pic,[picip]=@picip,[blocklist]=@blocklist,[sex]=@sex,[showtype]=@showtype where ID=@id";
                cmd.Parameters.Add("@blogname", System.Data.SqlDbType.VarChar, 30).Value = blogname.Text;
                //cmd.Parameters.Add("@cellphone", System.Data.SqlDbType.VarChar, 20).Value = Convert.ToUInt64(cellphone.Text).ToString();
                cmd.Parameters.Add("@qq", System.Data.SqlDbType.VarChar, 50).Value = qq.Text;
                cmd.Parameters.Add("@music", System.Data.SqlDbType.VarChar, 2000).Value = music.Text;
                cmd.Parameters.Add("@email", System.Data.SqlDbType.VarChar, 50).Value = email.Text;
                cmd.Parameters.Add("@limitcount", System.Data.SqlDbType.SmallInt).Value = Convert.ToInt16(limitcount.Text);
                cmd.Parameters.Add("@pic", System.Data.SqlDbType.VarChar, 250).Value = pic.Text.Replace("\xD\xA", "");
                cmd.Parameters.Add("@picip", System.Data.SqlDbType.VarChar, 250).Value = picip.Text.Replace("\xD\xA", "");
                cmd.Parameters.Add("@blocklist", System.Data.SqlDbType.VarChar, 250).Value = blocklist.Text.Replace("\xD\xA", "").Replace("；", ";").Replace(" ", "");
                cmd.Parameters.Add("@sex", System.Data.SqlDbType.TinyInt).Value = (female.Checked) ? 1 : 0;
                cmd.Parameters.Add("@showtype", System.Data.SqlDbType.TinyInt).Value = (showall.Checked) ? 1 : 0;
                cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Page.Session["vr_blogid"]);
                cmd.ExecuteNonQuery();
                if (password.Text != string.Empty)
                {
                    cmd.Parameters.Clear();
                    cmd.CommandText = "update [info] set [password]=@password where [ID]=@id";
                    cmd.Parameters.Add("@password", System.Data.SqlDbType.VarChar, 30).Value = password.Text;
                    cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Page.Session["vr_blogid"]);
                    cmd.ExecuteNonQuery();
                }
                if (txtpwd2.Text != string.Empty)
                {
                    //更新安全码
                    cmd.Parameters.Clear();
                    cmd.CommandText = "update [info] set [pwd2]=@pwd2 where [ID]=@id";
                    cmd.Parameters.Add("@pwd2", System.Data.SqlDbType.VarChar, 20).Value = txtpwd2.Text;
                    cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Page.Session["vr_blogid"]);
                    cmd.ExecuteNonQuery();
                }
                if (cellphone.Text != string.Empty && cellphone.Text.IndexOf("****") != 7 && cellphone.Text.Length == 11)
                {
                    //update CellPhone
                    cmd.Parameters.Clear();
                    cmd.CommandText = "update [info] set [cellphone]=@cellphone where [ID]=@id";
                    cmd.Parameters.Add("@cellphone", System.Data.SqlDbType.VarChar, 20).Value = cellphone.Text.ToString().Substring(0, 11);
                    cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = Convert.ToInt32(Page.Session["vr_blogid"]);
                    cmd.ExecuteNonQuery();
                }
                isupdated = true;
            }
            catch
            {

                //异常出错代码
            }
            finally
            {
                cmd.Dispose();
                conn.Close();
            }
            if (isupdated)
                Response.Redirect("error.aspx?id=200&descript=更新成功！", true);
            else
                Response.Redirect("error.aspx?id=500", true);
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
    <style type="text/css">
			
			#fadeinbox{
				position:absolute;
				width: 300px;
				left: 0;
				top: -400px;
				border: 2px solid black;
				background-color: lightyellow;
				padding: 4px;
				z-index: 100;
				visibility:hidden;
			}

			
</style>

    <script type="text/javascript">
			var displaymode="always"
				
				var enablefade="yes" 
				var autohidebox=["no", 5] 
				var showonscroll="yes" 
				var IEfadelength=1 
				var Mozfadedegree=0.05 
				
				
				
				if (parseInt(displaymode)!=NaN)
					var random_num=Math.floor(Math.random()*displaymode)
						
						function displayfadeinbox(){
							var ie=document.all && !window.opera
								var dom=document.getElementById
								iebody=(document.compatMode=="CSS1Compat")? document.documentElement : document.body
								objref=(dom)? document.getElementById("fadeinbox") : document.all.fadeinbox
								var scroll_top=(ie)? iebody.scrollTop : window.pageYOffset
								var docwidth=(ie)? iebody.clientWidth : window.innerWidth
								docheight=(ie)? iebody.clientHeight: window.innerHeight
								var objwidth=objref.offsetWidth
								objheight=objref.offsetHeight
								objref.style.left=docwidth/2-objwidth/2+"px"
								objref.style.top=scroll_top+docheight/2-objheight/2+"px"
								
								if (showonscroll=="yes")
									showonscrollvar=setInterval("staticfadebox()", 50)
										
										if (enablefade=="yes" && objref.filters){
											objref.filters[0].duration=IEfadelength
												objref.filters[0].Apply()
												objref.filters[0].Play()
											}
										objref.style.visibility="visible"
										if (objref.style.MozOpacity){
											if (enablefade=="yes")
												mozfadevar=setInterval("mozfadefx()", 90)
													else{
														objref.style.MozOpacity=1
															controlledhidebox()
														}
												}
										else
											controlledhidebox()
											}
				
				function mozfadefx(){
					if (parseFloat(objref.style.MozOpacity)<1)
						objref.style.MozOpacity=parseFloat(objref.style.MozOpacity)+Mozfadedegree
							else{
								clearInterval(mozfadevar)
									controlledhidebox()
								}
						}
			
			function staticfadebox(){
				var ie=document.all && !window.opera
					var scroll_top=(ie)? iebody.scrollTop : window.pageYOffset
					objref.style.top=scroll_top+docheight/2-objheight/2+"px"
				}
			
			function hidefadebox(){
				objref.style.visibility="hidden"
					if (typeof showonscrollvar!="undefined")
						clearInterval(showonscrollvar)
						}
			
			function controlledhidebox(){
				
			}
			
			function initfunction(){
				setTimeout("displayfadeinbox()", 100)
				}
			
			function get_cookie(Name) {
				var search = Name + "="
					var returnvalue = ""
					if (document.cookie.length > 0) {
						offset = document.cookie.indexOf(search)
							if (offset != -1) {
								offset += search.length
									end = document.cookie.indexOf(";", offset)
									if (end == -1)
										end = document.cookie.length;
									returnvalue=unescape(document.cookie.substring(offset, end))
								}
						}
					return returnvalue;
			}
			
			
			if (displaymode=="oncepersession" && get_cookie("fadedin")=="" || displaymode=="always" || parseInt(displaymode)!=NaN && random_num==0){
				if (window.addEventListener)
					window.addEventListener("load", initfunction, false)
						else if (window.attachEvent)
							window.attachEvent("onload", initfunction)
								else if (document.getElementById)
									window.onload=initfunction
										document.cookie="fadedin=yes"
									}
			
			
			
			
			function sethelp(str,itime)
			{
				var qzjtmp;
				switch(str)
				{
				case "nickname":
					qzjtmp="在这里写你在网络上常用的名字.";
					break;
				case "password":
					qzjtmp="密码需要在4到20个字符之间,区分大小写!";
					break;
				case "sex":
					qzjtmp="这个都要看?性别就是性别,只有帅哥和美女!<br />即使你是恐龙或者青蛙也没得选择<br />哈哈哈.";
					break;
				case "accounttype":
					qzjtmp="这个就是表示在不在你的页面上显示统计的信息<br />比如谁来看过，几点来过之类的<br />如果不想显示在页面上，选择<font color=\"red\">仅统计</font>，并且<font color=\"red\">模板,显示数量,显示方式</font>都不用改写了。";
					break;
				case "showtype":
					qzjtmp="有两种显示方式<br />如果选择会员，那么其中的只有IP记录的信息就不会显示在页面上，但是仍然会被记录在系统里。<br />如果选择全部显示，那么域名的IP访问记录也会显示在页面上面<br /><font color=\"red\">显示数量为0的用户修改此项无效</font>";
					break;
				case "email":
					qzjtmp="你最安全的email联系方式<br />如果忘记密码，将会通过此途径发送给你。";
					break;
				case "cellphone":
					qzjtmp="你的私人手机，这个是必须要填写的。";
					break;
				case "blocklist":
					qzjtmp="想要屏蔽对方的用户名或者是IP地址或者是省和城市的的名字<br />比如你不想让用户名为lengyouyou0621的用户看你的页面，那么只要在屏蔽框输入<br /><font color=\"red\">lengyouyou0621;</font><br />就可以。如果要屏蔽IP为127.0.0.1的访问者，同样输入<br /><font color=\"red\">127.0.0.1;</font><br />另外支持IP段，比如你要屏蔽127.0.*.*，直接输入<br><font color=\"#FF0000\">127.0.*.*</font><br />或者<font color=\"#FF0000\">127.0.0.*</font>或者<font color=\"#FF0000\">127.*.*.*</font><br>都可以进行片断屏蔽，啊哈哈哈哈。<br>如果要城市或者省也一样，比如<br /><font color=\"red\">浙江省宁波市;浙江省;</font><br />如果有多个屏蔽选项，则用分号隔开<br />比如<font color=\"red\">lengyouyou0621;127.0.0.1;浙江省宁波市;浙江省</font><br /><font color=\"blue\">另外，换行写没关系的，换行符会被忽略。</font><br />你登陆了BLOGCN以后，访问自己页面不会被屏蔽。";
					break;
				case "lis":
					qzjtmp="<font color=\"red\">您必须无条件接受协议，注册的时候已经接受了吧。这里起强调作用，有可能协议内容部分会更改，请定期查看。销毁帐户后协议将不再对您有效。</font>";
					break;
				case "limitcount":
					qzjtmp="这里填写0-400的整数，用于显示在BLOG页面上的访问者的详细信息的数量，比如你有800条访问记录，那么当填写了300时，你的BLOG页面上就会有300条来访者的信息。当然，如果你的记录只有100条，那么也只能显示100条了，我总不可能给你造假200条上去的。<br /><font color=\"red\">如果填写为0的话，则不在BLOG页面上显示数据<br />以一朵小花代替。</font>";
					break;
				case "qq":
					qzjtmp="你的联系方式，QQ或者MSN，如果没有以上两种IM通讯工具。。。。。<br /><font color=\"red\">那太不可思议了</font>，yahoo通，AIM都可以。<br />如果你遗忘了密码，核对正确后可以直接通过IM给你重设密码。";
					break;
				case "music":
					qzjtmp="填写你要在页面播放的背景音乐，可以有很多个地址，一行一个。<br />比如需要播放<font color=\"blue\">《我是天才》</font>和<font color=\"blue\">《他不是天才》</font><br />在网络上地址是http://www.music.com/我是天才.mp3和http://www.music.com/他不是天才.mp3则在列表框中输入<br /><font color=\"red\">http://www.music.com/我是天才.mp3<br />http://www.music.com/他不是天才.mp3</font><br />不同的音乐地址要换行的哦。<br />如果不需要播放音乐，输入http://www.nov30th.com/a.mp3即可。<br />音乐格式支持WMP所支持的音乐。";
					break;
				case "pic":
					qzjtmp="这里填写在页面上显示会员记录的模板<br />所谓模板就是显示的样式。和blogcn的模板道理一样的。<br />以下是说明：<br /><font color=\"#FF0000\">qzj_i</font> 访问者的物理位置<br /><font color=\"#FF0000\">qzj_u</font> 访问者的用户名<br /><font color=\"#FF0000\">qzj_n</font> 访问者的昵称<br /><font color=\"#FF0000\">qzj_t</font> 访问时间<br><font color=\"#FF0000\">qzj_s</font> 如果该记录当天访问则显示访问时间<br>模板中除了基本HTML元素比如&lt;br /&gt;换行符，&lt;a&gt;连接之类的请不要用如&lt;script&gt;之类的高级元素，否则会导致显示不正常。<br>模板是每一条记录的，即一条记录的显示方式。<br><font color=\"#FF0000\">如果不能理解请不要随便改动哦。</font><br><font color=\"#0000FF\">最大支持250个字符。</font>";
					break;
				case "picip":
					qzjtmp="这里填写在页面上显示域名记录的模板<br />所谓模板就是显示的样式。和blogcn的模板道理一样的。<br />以下是说明：<br /><font color=\"#FF0000\">qzj_i</font> 访问者的物理位置<br /><font color=\"#FF0000\">qzj_t</font> 访问时间<br><font color=\"#FF0000\">qzj_s</font> 如果该记录当天访问则显示访问时间<br>模板中除了基本HTML元素比如&lt;br /&gt;换行符，&lt;a&gt;连接之类的请不要用如&lt;script&gt;之类的高级元素，否则会导致显示不正常。<br>模板是每一条记录的，即一条记录的显示方式。<br><font color=\"#FF0000\">如果不能理解请不要随便改动哦。</font><br><font color=\"#0000FF\">最大支持250个字符。</font>";
					break;
				case "pwd2":
					qzjtmp="用于忘记密码时取回密码的特殊字符或者数字<br />务必请牢记填写的,最好填写好记的内容。<br /><br />如果您确定不会忘记密码,可以不填写.<br /><br /><font color=\"red\">最多20个英文字符。</font>";
					break;					
				default:
					qzjtmp="未知，有这个帮助？我没有录入么？通知我哦，这是一个bug。<br />QQ：2309856";
					break;
					
				}
				document.getElementById("fadeinbox").innerHTML=(qzjtmp + "<br /><br /><div align=\"right\"><a href=\"#\" onclick=\"hidefadebox();return false\">关闭</a></div>");
				
			}
			
    </script>

</head>
<body>
    <div id="divMain">
        <div class="Header">
            资料设定</div>
        <div id="divMain2">
            <form runat="server" action="personal.aspx">
                <table>
                    <tbody>
                        <tr>
                            <td>
                                BABY！尽情修改吧！</td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <div align="left">
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                                        HeaderText="提交数据时出现效验错误：" />
                                    <br />
                                    您当前的用户名：<asp:Label ID="username" runat="server" Text="username"></asp:Label></div>
                                <table cellspacing="0" cellpadding="0" width="96%" border="0">
                                    <tbody>
                                        <tr>
                                            <td valign="top" align="right" style="width: 121px">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="blogname"
                                                    ErrorMessage="昵称一定要有的啊！混了那么多年，连昵称都没有？" SetFocusOnError="True">*</asp:RequiredFieldValidator>昵
                                                称：</td>
                                            <td valign="top" width="32%">
                                                <asp:TextBox ID="blogname" runat="server" Width="160px"></asp:TextBox></td>
                                            <td valign="top" width="54%">
                                                <table cellspacing="2" cellpadding="0" width="100%" border="0">
                                                    <tbody>
                                                        <tr valign="top">
                                                            <td style="line-height: 11pt" width="94%">
                                                                如果想看该输入的说明，可以点击<a href="#" onclick="displayfadeinbox();return false;" onmouseover="sethelp('nickname');">帮助</a>连接。<br />
                                                                <font color="red">(点帮助连接页面不会转向,修改不会消失)</font></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" align="right" style="width: 121px">
                                                <asp:CompareValidator ID="chkpassword" runat="server" ControlToCompare="password"
                                                    ControlToValidate="verifypassword" ErrorMessage="两次密码不相同">*</asp:CompareValidator>密
                                                码：</td>
                                            <td valign="top">
                                                <asp:TextBox ID="password" runat="server" Width="160px" TextMode="Password"></asp:TextBox></td>
                                            <td valign="top" rowspan="2">
                                                <a href="#" onclick="displayfadeinbox();return false;" onmouseover="sethelp('password');">
                                                    帮助</a> (如果不更改密码请留空)</td>
                                        </tr>
                                        <tr>
                                            <td valign="top" align="right" style="width: 121px">
                                                密码确认：</td>
                                            <td valign="top">
                                                <asp:TextBox ID="verifypassword" runat="server" Width="160px" TextMode="Password"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 121px" valign="top">
                                                安全码：</td>
                                            <td valign="top">
                                                <asp:TextBox ID="txtpwd2" runat="server" Width="160px" TextMode="Password"></asp:TextBox></td>
                                            <td rowspan="2" valign="top">
                                                <a href="#" onclick="displayfadeinbox();return false;" onmouseover="sethelp('pwd2');">
                                                    帮助</a> (如果不更改安全码请留空)<br />
                                                <asp:Label ID="pwd2Descript" runat="server" ForeColor="Red"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 121px" valign="top">
                                                重复安全码：</td>
                                            <td valign="top">
                                                <asp:TextBox ID="txtchkpwd2" runat="server" Width="160px" TextMode="Password"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td valign="top" align="right" style="width: 121px">
                                                性 别：</td>
                                            <td valign="top">
                                                <asp:RadioButton ID="male" runat="server" GroupName="sex" Text="帅哥" />
                                                <asp:RadioButton ID="female" runat="server" GroupName="sex" Text="美女" />
                                            </td>
                                            <td valign="top">
                                                <a href="#" onclick="displayfadeinbox();return false;" onmouseover="sethelp('sex');">
                                                    帮助</a></td>
                                        </tr>
                                        <tr>
                                            <td valign="top" align="right" style="width: 121px; height: 20px">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="手机号没有填写,不规则的帐户."
                                                    SetFocusOnError="True" ControlToValidate="cellphone">*</asp:RequiredFieldValidator>个人手机：</td>
                                            <td valign="top" style="height: 20px">
                                                <asp:TextBox ID="cellphone" runat="server" Width="160px" MaxLength="20"></asp:TextBox></td>
                                            <td valign="top" style="height: 20px">
                                                <a href="#" onclick="displayfadeinbox();return false;" onmouseover="sethelp('cellphone');">
                                                    帮助</a><asp:Label ID="cellPhoneDescript" runat="server" ForeColor="Red"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 121px; height: 20px" valign="top">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="QQ或者MSN的联系方式要写的"
                                                    SetFocusOnError="True" ControlToValidate="qq">*</asp:RequiredFieldValidator>QQ|MSN：</td>
                                            <td style="height: 20px" valign="top">
                                                <asp:TextBox ID="qq" runat="server" Width="160px"></asp:TextBox></td>
                                            <td style="height: 20px" valign="top">
                                                <a href="#" onclick="displayfadeinbox();return false;" onmouseover="sethelp('qq');">
                                                    帮助</a></td>
                                        </tr>
                                        <tr>
                                            <td valign="top" colspan="3">
                                                <strong>详细设定：</strong></td>
                                        </tr>
                                        <tr>
                                            <td valign="top" align="right" style="width: 121px; height: 32px;">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="音乐地址没写。"
                                                    SetFocusOnError="True" ControlToValidate="music">*</asp:RequiredFieldValidator>音乐地址：</td>
                                            <td valign="top" colspan="2" style="height: 32px">
                                                <asp:TextBox ID="music" runat="server" Height="150px" MaxLength="250" TextMode="MultiLine"
                                                    Width="460px"></asp:TextBox>
                                                <br />
                                                <a href="#" onclick="displayfadeinbox();return false;" onmouseover="sethelp('music');">
                                                    帮助</a></td>
                                        </tr>
                                        <tr>
                                            <td valign="top" align="right" style="width: 121px">
                                                显示方式：</td>
                                            <td valign="top" colspan="2">
                                                <asp:RadioButton ID="showmember" runat="server" GroupName="showtype" Text="会员" />
                                                <asp:RadioButton ID="showall" runat="server" GroupName="showtype" Text="所有记录" />&nbsp;
                                                <a href="#" onclick="displayfadeinbox();return false;" onmouseover="sethelp('showtype');">
                                                    帮助</a></td>
                                        </tr>
                                        <tr>
                                            <td valign="top" align="right" style="width: 121px">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="电子邮件地址没写。"
                                                    SetFocusOnError="True" ControlToValidate="email">*</asp:RequiredFieldValidator>电邮联系：</td>
                                            <td valign="top" colspan="2">
                                                <asp:TextBox ID="email" runat="server" Width="460px"></asp:TextBox>
                                                <br />
                                                <a href="#" onclick="displayfadeinbox();return false;" onmouseover="sethelp('email');">
                                                    帮助</a></td>
                                        </tr>
                                        <tr>
                                            <td valign="top" align="right" style="width: 121px">
                                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="limitcount"
                                                    ErrorMessage="显示数量必须在0-400之间的整数" MaximumValue="400" MinimumValue="0" Type="Integer"
                                                    SetFocusOnError="True">*</asp:RangeValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator9"
                                                        runat="server" ErrorMessage="页面上数量的没写。。" SetFocusOnError="True" ControlToValidate="limitcount">*</asp:RequiredFieldValidator>显示数量：</td>
                                            <td valign="top" colspan="2">
                                                <asp:TextBox ID="limitcount" runat="server" Width="41px"></asp:TextBox>
                                                <a href="#" onclick="displayfadeinbox();return false;" onmouseover="sethelp('limitcount');">
                                                    帮助</a></td>
                                        </tr>
                                        <tr>
                                            <td valign="top" align="right" style="width: 121px">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="会员模板不写怎么行？"
                                                    SetFocusOnError="True" ControlToValidate="pic">*</asp:RequiredFieldValidator>会员模板：</td>
                                            <td valign="top" colspan="2">
                                                <asp:TextBox ID="pic" runat="server" Height="150px" MaxLength="250" TextMode="MultiLine"
                                                    Width="460px"></asp:TextBox>
                                                <br />
                                                <span style="color: #ff0000">在这里发挥你的个性</span><br />
                                                <a href="#" onclick="displayfadeinbox();return false;" onmouseover="sethelp('pic');">
                                                    帮助</a></td>
                                        </tr>
                                        <tr>
                                            <td valign="top" align="right" style="width: 121px">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="域名模板不写怎么行？"
                                                    SetFocusOnError="True" ControlToValidate="picip">*</asp:RequiredFieldValidator>域名模板：</td>
                                            <td valign="top" colspan="2">
                                                <asp:TextBox ID="picip" runat="server" Height="150px" MaxLength="250" Width="460px"
                                                    TextMode="MultiLine"></asp:TextBox>
                                                <br />
                                                <span style="color: #ff0000">在这里发挥你的个性</span><br />
                                                <a href="#" onclick="displayfadeinbox();return false;" onmouseover="sethelp('picip');">
                                                    帮助</a></td>
                                        </tr>
                                        <tr>
                                            <td valign="top" align="right" style="width: 121px">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="屏蔽列表没有数据请写一个分号"
                                                    SetFocusOnError="True" ControlToValidate="blocklist">*</asp:RequiredFieldValidator>屏蔽列表：</td>
                                            <td valign="top" colspan="2">
                                                <asp:TextBox ID="blocklist" runat="server" Height="150px" MaxLength="250" TextMode="MultiLine"
                                                    Width="460px"></asp:TextBox>
                                                <br />
                                                <a href="#" onclick="displayfadeinbox();return false;" onmouseover="sethelp('blocklist');">
                                                    帮助</a></td>
                                        </tr>
                                        <tr>
                                            <td valign="top" align="right" style="width: 121px">
                                                遵守协议：</td>
                                            <td valign="top" colspan="2">
                                                <asp:CheckBox ID="lis" runat="server" Checked="True" Enabled="False" EnableViewState="False"
                                                    Text="始终遵守HOHO``协议" />&nbsp;<a href="#" onclick="displayfadeinbox();return false;"
                                                        onmouseover="sethelp('lis');">帮助</a></td>
                                        </tr>
                                        <tr>
                                            <td valign="top" align="right" style="width: 121px">
                                                <font class="c" color="#000000" size="3">&nbsp;</font>
                                            </td>
                                            <td valign="top" colspan="2">
                                                <asp:Button class="button" ID="Button1" runat="server" Text="更新信息" OnClick="Button1_Click" />&nbsp;
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
            <div id="fadeinbox" style="filter: progid:DXImageTransform.Microsoft.RandomDissolve(duration=1) progid:DXImageTransform.Microsoft.Shadow(color=gray,direction=135);
                -moz-opacity: 0">
                当前页面用于修改个人信息还有显示和记录的参数<br />
                <br />
                请谨慎修改哦，如果修改失误可以进<font color="red">系统操作</font>的<font color="blue">出厂设定</font>进行还原。<br />
                <div align="right">
                    <a href="#" onclick="hidefadebox();return false">关闭</a>
                    <div>
                    </div>
                </div>
            </div>
        </div>
    </div>

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

document.close();

    </script>

</body>
</html>
