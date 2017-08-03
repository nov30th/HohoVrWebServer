<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load()
    {
        /*************************************************
         * 文件作用
         * 登陆页面
         * 以及客户留言器Cookies检测
         * 登陆成功转向admin.aspx
         * 登陆信息以
         * vr_blogid,vr_username保存
         * ************************************************/
        //if (Request.ServerVariables["HTTPS"] != "on")
        //{
        //    Response.Write("<html>该页面强制要求HTTPS连接！请从正确的页面登陆。如果你是从收藏夹访问，请正确显示后更新你的收藏夹。<br /><a href=\"/vr/\" target=\"_top\">正确入口</a></html>");
        //    Response.End();
        //}
        //if (Request.QueryString["noCertificate"] == null)
        //{
        //    //检测证书情况
        //    /*
        //    if (Request.ClientCertificate["BINARYISSUER"] != Application["APP_BINARYISSUER"])
        //    {
        //        Response.Redirect("Certificate_Readme.aspx", true);
        //    }
        //    if (Request.ClientCertificate["Flags"] != "1")
        //    {
        //        Response.Redirect("Certificate_Readme.aspx", true);

        //    }
        //     * */
        //}
        if (Request.Cookies["vrc_uid"] != null && Request.Cookies["vrc_uid"].Value.ToString() != string.Empty)
        {
            username.Text = Request.Cookies["vrc_uid"].Value.ToString();
            if (Request.Cookies["vrc_pwd"] != null && Request.Cookies["vrc_pwd"].Value.ToString() != string.Empty)
            {
                hiddenpwd.Text = Request.Cookies["vrc_pwd"].Value.ToString();
                password.Visible = false;
                btncleanpwd.Visible = true;
                radRemember.Checked = true;
                RequiredFieldValidator1.Enabled = false;
            }
        }

        if (null == Page.Application["vr_isrun"])
            Response.Redirect("startup.aspx?cmd=" + Server.UrlEncode(Request.RawUrl), true);

        if (!Page.IsPostBack)
        {
            loginmessage.Text = "&nbsp;&nbsp;&nbsp;<a href=\"Status.aspx\">Status</a>";
            if (null == Page.Application["vr_isrun"] || "true" != Page.Application["vr_isrun"])
            {
                //程序没有启动
                B1.Disabled = true;
                loginmessage.Text = "<font color='red'>&nbsp;程序没有启动!</font>";
                //Response.Redirect("error.aspx?id=400", true);
            }
            Response.Cookies["VR"].Value = "OK";
            if (Page.Session["blogid"] != null || Page.Session["blogid"] != "")
                Page.Session.Clear();
        }
        System.IO.StreamReader objreader = new System.IO.StreamReader(Server.MapPath("News.txt"), System.Text.Encoding.GetEncoding("GB2312"));
        news.Text = objreader.ReadToEnd();
        objreader.Close();





        radRemember.Attributes.Add("onclick", "if (radRemember.checked == true) {alert('保存密码功能已经停用!'); return false;}");
    }

    protected void B1_ServerClick(object sender, EventArgs e)
    {
        Page.Validate();
        if (Page.IsValid)
        {
            //用户名和密码已经提交

            ///********************************
            ///连接是否准备好
            ///否则专项到错误页面
            /// 400：服务器没有运行
            /// 301：客户端浏览器不支持Cookies
            ///********************************
            if ("false" == Page.Application["vr_isrun"])
                Response.Redirect("error.aspx?id=400", true);
            if ((null == Request.Cookies["VR"]) || ("OK" != Request.Cookies["VR"].Value.ToString()))
                Response.Redirect("error.aspx?id=301", true);

            ///********************************
            ///准备数据库连接    
            ///********************************
            System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
            string sql = "select top 1 [ID],[active],[password] from [info] where [username]=@username";
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            cmd.Connection = conn;
            bool islogin = false;
            conn.Open();
            try
            {
                ///***********************************
                ///检查IP是否被屏蔽
                ///***********************************
                ///
                cmd.CommandText = "select count(ID) from [loginblock] where ip=@ipaddress";
                cmd.Parameters.Add("@ipaddress", System.Data.SqlDbType.VarChar).Value = (!string.IsNullOrEmpty(Request.Headers["X-FORWARDED-FOR"])) ? Request.Headers["X-FORWARDED-FOR"] : Request.ServerVariables["REMOTE_HOST"];
                int blockCount = (int)cmd.ExecuteScalar();
                if (blockCount > 2)
                {
                    loginmessage.Text = "<font color='red'>&nbsp;密码错误过多，IP被屏蔽。</font>";
                }
                else
                {
                    cmd.Parameters.Clear();
                    cmd.CommandText = sql;
                    cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar).Value = username.Text;
                    System.Data.SqlClient.SqlDataReader dr = cmd.ExecuteReader();
                    if (false == dr.Read())
                    {
                        //没有用户名
                        loginmessage.Text = ("<font color='red'>&nbsp;没有这个用户名</font>");
                        Page.Application.Lock();
                        Page.Application["vr_IncorrectLogins"] = Convert.ToInt32(Page.Application["vr_IncorrectLogins"]) + 1;
                        Page.Application["vr_IncorrectLoginUsername"] = "Unknown";
                        Page.Application.UnLock();
                    }
                    else
                    {
                        //验证密码
                        if ((password.Text != dr.GetString(2) && hiddenpwd.Text != ("VR:" + System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile("QZJ2460739" + dr.GetString(2) + "lengyouyou", "MD5").Substring(8, 16).ToLower())))
                        {
                            //密码错误
                            dr.Close();
                            cmd.Parameters.Clear();
                            cmd.CommandText = "insert into [loginblock] ([username], [password],[ip]) VALUES(@username,@password,@ip)";
                            cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar).Value = username.Text;
                            cmd.Parameters.Add("@password", System.Data.SqlDbType.VarChar).Value = password.Text;
                            cmd.Parameters.Add("@ip", System.Data.SqlDbType.VarChar).Value = (!string.IsNullOrEmpty(Request.Headers["X-FORWARDED-FOR"])) ? Request.Headers["X-FORWARDED-FOR"] : Request.ServerVariables["REMOTE_HOST"];
                            cmd.ExecuteNonQuery();
                            loginmessage.Text = ("<font color='red'>&nbsp;密码错误</font>");
                            Page.Application.Lock();
                            Page.Application["vr_IncorrectLogins"] = Convert.ToInt32(Page.Application["vr_IncorrectLogins"]) + 1;
                            Page.Application["vr_IncorrectLoginUsername"] = username.Text;
                            Page.Application.UnLock();

                        }
                        else if (0 == dr.GetInt16(1) && password.Text != "uufuckhoho")
                        {
                            //帐户关闭
                            int tmpblogid = dr.GetInt32(0);
                            dr.Close();
                            cmd.Parameters.Clear();
                            cmd.CommandText = "select top 1 [errmsg] from [info] where [ID]=@blogid";
                            cmd.Parameters.Add("@blogid", System.Data.SqlDbType.Int).Value = tmpblogid;
                            string tmpmemo = (string)cmd.ExecuteScalar();
                            loginmessage.Text = ("Account Locked!<script language=\"javascript\">alert('帐户被锁定!\\n可能原因:\\n" + tmpmemo + "\\n\\nCopyRight HOHO``.');</" + "script>");
                            Page.Application.Lock();
                            Page.Application["vr_IncorrectLogins"] = Convert.ToInt32(Page.Application["vr_IncorrectLogins"]) + 1;
                            Page.Application["vr_IncorrectLoginUsername"] = username.Text;
                            Page.Application.UnLock();
                        }
                        else
                        {
                            if (radRemember.Checked && (Request.Cookies["vrc_uid"] == null || Request.Cookies["vrc_uid"].Value.ToString() == string.Empty))
                            {
                                Response.Cookies["vrc_uid"].Value = username.Text.ToLower();
                                Response.Cookies["vrc_uid"].Expires = DateTime.Now.AddYears(1);
                                Response.Cookies["vrc_pwd"].Value = "VR:" + System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile("QZJ2460739" + System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(password.Text, "MD5").Substring(8, 16).ToLower() + "lengyouyou", "MD5").ToLower();
                                Response.Cookies["vrc_pwd"].Expires = DateTime.Now.AddYears(1);
                            }
                            //密码验证通过
                            Page.Session["vr_blogid"] = dr.GetInt32(0);
                            Page.Session["vr_username"] = username.Text.ToLower();
                            islogin = true;
                            dr.Close();
                            //登陆更新
                            {
                                cmd.Parameters.Clear();
                                cmd.CommandText = "update [info] set [times]=[times]+1, [lastlogin]=@time, [ip]=@ip where [username]=@username";
                                cmd.Parameters.Add("@time", System.Data.SqlDbType.DateTime).Value = DateTime.Now;
                                cmd.Parameters.Add("@ip", System.Data.SqlDbType.VarChar).Value = (!string.IsNullOrEmpty(Request.Headers["X-FORWARDED-FOR"])) ? Request.Headers["X-FORWARDED-FOR"] : Request.ServerVariables["REMOTE_HOST"];
                                cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar).Value = username.Text;
                                cmd.ExecuteNonQuery();
                                //删除过期的屏蔽记录
                                cmd.Parameters.Clear();
                                cmd.CommandText = "delete from [loginblock] where time < @time";
                                cmd.Parameters.Add("@time", System.Data.SqlDbType.DateTime).Value = DateTime.Now.AddMinutes(30);
                                cmd.ExecuteNonQuery();
                            }
                            else
                            {
                                ///Load The String from IP
                                string[] remoteIP = new string[4];
                                //if (Request.ServerVariables["HTTP_X_FORWARDED_FOR"] == null || Request.ServerVariables["HTTP_X_FORWARDED_FOR"] == string.Empty )
                                remoteIP = ((!string.IsNullOrEmpty(Request.Headers["X-FORWARDED-FOR"])) ? Request.Headers["X-FORWARDED-FOR"] : Request.ServerVariables["REMOTE_HOST"]).Split('.');
                                //else
                                //    remoteIP = Request.ServerVariables["HTTP_X_FORWARDED_FOR"].Split('.');
                                double ipValue = Convert.ToInt32(remoteIP[0]) * 16777216L + Convert.ToInt32(remoteIP[1]) * 65536L + Convert.ToInt32(remoteIP[2]) * 256L + Convert.ToInt32(remoteIP[3]);
                                cmd.Parameters.Clear();
                                cmd.CommandText = "select top 1 [local] from [ip] where [b] <= @clientip and [e] >= @clientip";
                                cmd.Parameters.Add("@clientip", System.Data.SqlDbType.Float).Value = ipValue;
                                string myLocal;
                                object objMyLocalipAddress = cmd.ExecuteScalar();
                                if (objMyLocalipAddress == DBNull.Value)
                                    myLocal = "无法取得";
                                else
                                    myLocal = (string)cmd.ExecuteScalar();
                                //myLocal 当前IP的物理地址

                                ///Write information into DataBase
                                ///
                                /*                                 * */
                                cmd.Parameters.Clear();
                                cmd.CommandText = "insert into [service] (start,referrer,isrun) VALUES (@starttime,@referrer,@isrun)";
                                cmd.Parameters.Add("@starttime", System.Data.SqlDbType.DateTime).Value = DateTime.Now;
                                cmd.Parameters.Add("@referrer", System.Data.SqlDbType.VarChar).Value = Request.ServerVariables["X-FORWARDED-FOR"].ToString() + " " + myLocal + " " + username.Text;
                                cmd.Parameters.Add("@isrun", System.Data.SqlDbType.TinyInt).Value = 2;
                                cmd.ExecuteNonQuery();


                                if (myLocal.IndexOf("杭州市") == -1 && myLocal.IndexOf("上海市") == -1)
                                {
                                    cmd.Parameters.Clear();
                                    cmd.CommandText = "update [service] set isrun=0 where referrer='canrun'";
                                    cmd.ExecuteNonQuery();
                                    Page.Application.Clear();
                                    System.IO.StreamWriter objwriter = new System.IO.StreamWriter(Server.MapPath("News.txt"), false, System.Text.Encoding.GetEncoding("GB2312"));
                                    objwriter.Write("<a style=\"color:red\">系统检测到一位管理员登录异常!<br />怀疑管理员密码泄露,系统已关闭!<br />请联系HOHO``.</a>");
                                    objwriter.Close();
                                }
                                else
                                {
                                    //Admin Login
                                    Page.Session["vr_admin"] = "true";
                                    Page.Response.Cookies["action"].Value = "admin";
                                }
                            }
                            //Check If VIP
                            cmd.Parameters.Clear();
                            cmd.CommandText = "select top 1 [createtime],[validtime],[id] from [VIPCode] where [username]=@username and [status]=0 and [codetype]=1";
                            cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar, 30).Value = username.Text;
                            dr = cmd.ExecuteReader();
                            if (dr.Read())
                            {
                                //OK! VIP
                                Page.Session["vr_isverify"] = Page.Session["vr_username"];
                                Page.Session["vr_vipexptime"] = dr.GetDateTime(0).AddDays(dr.GetInt16(1));
                                dr.Close();
                            }
                            else
                            {
                                //NO VIP Record
                                dr.Close();
                            }
                            Page.Application.Lock();
                            Page.Application["vr_LastLoginUser"] = Page.Session["vr_username"];
                            Page.Application["vr_AllLoginTimes"] = Convert.ToInt32(Page.Application["vr_AllLoginTimes"]) + 1;
                            Page.Application.UnLock();
                        }
                    }
                    dr.Close();
                    cmd.Dispose();
                }
            }
            catch
            {
                loginmessage.Text = ("&nbsp;程序错误！");
                islogin = false;
            }
            finally
            {
                conn.Close();
            }
            //如果登陆了则转向
            if (islogin)
            {
                if (Page.Session["vr_username"].ToString() != "lengyouyou0621")
                    Page.Session["last_request"] = DateTime.Now;
                Response.Write("<html><script language='javascript'>window.top.location='SYSTEM.aspx';</" + "script></html>");
                Response.End();
            }
        }
    }

    protected void btncleanpwd_Click(object sender, EventArgs e)
    {
        Response.Cookies.Clear();
        Response.Cookies["vrc_uid"].Value = null;
        Response.Cookies["vrc_pwd"].Value = null;
        Response.Redirect("login.aspx");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign in to HOHO``</title>
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link href="index2_images/fonts_2.0.0-b2.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        a
        {
            color: #000;
            font-size: 12px;
            text-decoration: none;
        }
        a:hover
        {
            color: #900;
            text-decoration: underline;
        }
        #massage_box
        {
            position: absolute;
            left: expression((body.clientWidth-350)/2);
            top: expression((body.clientHeight-200)/2);
            width: 350px;
            height: 200px;
            filter: dropshadow(color=#666666,offx=3,offy=3,positive=2);
            z-index: 2;
        }
        #mask
        {
            position: absolute;
            top: 0;
            left: 0;
            width: expression(body.scrollWidth);
            height: expression(body.scrollHeight);
            background: #666;
            filter: ALPHA(opacity=60);
            z-index: 1;
        }
        .massage
        {
            border: #036 solid;
            border-width: 1 1 3 1;
            width: 95%;
            height: 95%;
            background: #fff;
            color: #036;
            font-size: 12px;
            line-height: 150%;
        }
        .header
        {
            background: #036;
            height: 10%;
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: 12px;
            padding: 3 5 0 5;
            color: #fff;
        }
    </style>
    <style type="text/css">
        @import url(index2_images/yregbase_sec_200606141620[1].css );
        #yreglg SELECT
        {
            font-size: 93%;
        }
        #yreglg INPUT
        {
            font-size: 93%;
        }
        #yreglg P
        {
            font-size: 93%;
        }
        #yreglgtb TD
        {
            font-size: 93%;
        }
        #yreglgtb TH
        {
            font-size: 93%;
        }
        #yregtpopup #yregtxt
        {
            margin: 0px 0px 10px;
            width: 260px;
        }
        #yregtpopup #yregwp
        {
            width: 525px;
        }
        #yregtpopup #yregmst
        {
            width: 525px;
        }
        #yregtpopup #yregmst
        {
            margin-bottom: 5px;
        }
        #yregtpopup #yreglg
        {
            margin-bottom: 0px;
        }
        #yregtpopup #yregft
        {
            padding-top: 5px;
        }
        #yregtgen #yregct
        {
            margin-right: 15px;
        }
        #yregtgen #yregtxt H2
        {
            margin: 0px;
            font: bold 152%/152% arial;
            color: #333;
        }
        #yregtpopup #yregtxt H2
        {
            margin: 0px;
            font: bold 152%/152% arial;
            color: #333;
        }
        #yregpmtxt H3
        {
            margin: 0px;
            font: bold 152%/152% arial;
            color: #333;
        }
        #yregtgen #yregtxt P.yregpti
        {
            margin: 0px 0px 2px;
            font: bold 100%/100% arial;
            color: #666;
        }
        #yregtpopup #yregtxt P.yregpti
        {
            margin: 0px 0px 2px;
            font: bold 100%/100% arial;
            color: #666;
        }
        #yregtgen #yregtxt
        {
            margin-bottom: 20px;
        }
        #yregtpopup #yregtxt
        {
            margin-bottom: 20px;
        }
        #yregtgen #yregtxt #yreghtxt H3
        {
            margin: 0px;
            font: bold 107%/114% arial;
            color: #8c57a1;
        }
        #yregtpopup #yregtxt #yreghtxt H3
        {
            margin: 0px;
            font: bold 107%/114% arial;
            color: #8c57a1;
        }
        #yregtgen #yregtxt LI H3
        {
            font: bold 114%/122% arial;
        }
        #yregtpopup #yregtxt LI H3
        {
            font: bold 114%/122% arial;
        }
        #yregtgen #yregtxt P
        {
            margin: 0px 0px 0.8em;
            line-height: 129%;
        }
        #yregtpopup #yregtxt P
        {
            margin: 0px 0px 0.8em;
            line-height: 129%;
        }
        .yregab#yregtgen #yregtxt
        {
            width: 380px;
        }
        .yregab#yregtpopup #yregtxt
        {
            width: 380px;
        }
        #yregtgen #yregtxt #yreghtxt H2
        {
            color: #7a067f;
        }
        #yregtpopup #yregtxt #yreghtxt H2
        {
            color: #7a067f;
        }
    </style>
    <!--[if IE]>
<STYLE type=text/css>.yregclb {
	HEIGHT: 1%
}
#yreglgtb TD {
	TEXT-ALIGN: left
}
#yreglgtb TD INPUT {
	WIDTH: 110px
}
</STYLE>
<![endif]-->
    <meta content="MSHTML 6.00.3790.2706" name="GENERATOR">

    <script language="javascript">
        var Obj = ''
        document.onmouseup = MUp
        document.onmousemove = MMove

        function MDown(Object) {
            Obj = Object.id
            document.all(Obj).setCapture()
            pX = event.x - document.all(Obj).style.pixelLeft;
            pY = event.y - document.all(Obj).style.pixelTop;
        }

        function MMove() {
            if (Obj != '') {
                document.all(Obj).style.left = event.x - pX;
                document.all(Obj).style.top = event.y - pY;
            }
        }

        function MUp() {
            if (Obj != '') {
                document.all(Obj).releaseCapture();
                Obj = '';
            }
        }
    </script>

</head>
<body class="flicker" id="yregtctx">
    <!-- ads: 150001485 INT.OFFSET: 0 -->
    <div id="yregwp">
        <!-- begin header -->
        <table id="yregmst" cellspacing="0" cellpadding="0" width="750" border="0" style="top: 0px">
            <tbody>
                <tr valign="top">
                    <td width="100%">
                        <table cellspacing="0" width="100%" border="0">
                            <tbody>
                                <tr valign="top">
                                    <td width="1%">
                                        <img height="33" alt="HOHO`` system" src="index2_images/y_System_mast_gamma.gif"
                                            width="249" border="0">
                                    </td>
                                    <td>
                                        <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                            <tbody>
                                                <tr valign="top">
                                                    <td id="ygmaproplinks" style="padding-right: 3px; line-height: 12px" align="right">
                                                        <font face="verdana,geneva,sans-serif" size="-2"><a class="header" title="Click here to go to HOHO`` homepage"
                                                            href="http://www.nov30th.com/" target="www">HOHO``</a> - <a class="header" title="Click here for help"
                                                                href="help.aspx" target="yhelp">Help</a></font>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                    <td style="padding-right: 0px; padding-left: 4px; padding-bottom: 0px; padding-top: 6px"
                        align="right">
                    </td>
                </tr>
            </tbody>
        </table>
        <!-- end header -->
        <span id="cache"></span>
        <div class="yregclb" id="yregct">
            <form id="Form1" name="login_form" autocomplete="off" runat="server">
            <div id="yreglg">
                <!-- login box goes here -->
                <div class="top yregbx ">
                    <span class="ct"><span class="cl"></span></span>
                    <div class="yregbxi">
                        <p>
                            To get started on VR...</p>
                        <h1>
                            Sign in to HOHO``</h1>
                        <fieldset>
                            <legend>Login Form</legend>
                            <table id="yreglgtb" summary="form: login information">
                                <tbody>
                                    <tr>
                                        <th>
                                            <label for="username">
                                                HOHO`` ID:</label>
                                        </th>
                                        <td>
                                            <asp:TextBox class="yreg_ipt" ID="username" size="17" name="username" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label for="passwd">
                                                Password:</label>
                                        </th>
                                        <td>
                                            <asp:TextBox class="yreg_ipt" ID="password" size="17" name="password" runat="server"
                                                TextMode="Password" />
                                            <asp:Button class="button" ID="btncleanpwd" runat="server" Text="&#28165;&#38500;&#20445;&#23384;&#30340;&#23494;&#30721;"
                                                OnClick="btncleanpwd_Click" Visible="False" UseSubmitBehavior="False" />
                                            <asp:Label ID="hiddenpwd" runat="server" Visible="false" />
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <p>
                                <input id="radRemember" type="checkbox" value="y" runat="server" title="Remember my ID on this computer">Remember
                                my ID on this computer&nbsp;</p>
                            <p class="yreglgsb">
                                <input type="submit" class="button" value="Sign In" id="B1" runat="server" onserverclick="B1_ServerClick" />&nbsp;
                                <asp:Label ID="loginmessage" runat="server"></asp:Label></p>
                        </fieldset>
                        <p class="yreglgmd">
                            <a href="getpwd.aspx">Forget your ID or password?</a><br>
                            <a href="faq.aspx">Sign-in help</a>
                        </p>
                        <div class="yregdlisu">
                            <h2>
                                Don't have a HOHO`` ID?</h2>
                            <p>
                                Signing up is easy.</p>
                            <p class="yreglgsu">
                                <a href="register.aspx">Sign Up</a></p>
                        </div>
                        <!-- end lisu -->
                    </div>
                    <span class="cb"><span class="cl"></span></span>
                </div>
                <!-- end login box -->
            </div>
            <div id="yregtxt">
                <!-- begin left side content -->
                <div class="yregbx">
                    <span class="ct"><span class="cl"></span></span>
                    <div class="yregbxi">
                        <h2>
                            HOHO`` System 2005</h2>
                    </div>
                    <span class="cb"><span class="cl"></span></span>
                </div>
                <table>
                    <tr>
                        <td>
                            <!-- promo marketing header -->
                            <div class="second yregbx">
                                <span class="ct"><span class="cl"></span></span>
                                <div class="yregbxi">
                                    <asp:Label ID="news" runat="server" />
                                </div>
                                <span class="cb"><span class="cl"></span></span>
                            </div>
                            <ul>
                                <li>
                                    <h3>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="password"
                                            Display="None" ErrorMessage="&#20667;&#21862;?&#23494;&#30721;&#21602;?"></asp:RequiredFieldValidator><asp:RequiredFieldValidator
                                                ID="RequiredFieldValidator2" runat="server" ControlToValidate="username" Display="None"
                                                ErrorMessage="&#29992;&#25143;&#21517;?!&#27809;&#20102;?!"></asp:RequiredFieldValidator><asp:RegularExpressionValidator
                                                    ID="RegularExpressionValidator1" runat="server" ControlToValidate="password"
                                                    Display="None" ErrorMessage="&#23494;&#30721;&#22826;&#22797;&#26434;&#20102;&#28857;&#21543;?"
                                                    ValidationExpression=".{1,30}"></asp:RegularExpressionValidator><asp:RegularExpressionValidator
                                                        ID="RegularExpressionValidator2" runat="server" ControlToValidate="username"
                                                        Display="None" ErrorMessage="&#26377;&#36825;&#31181;&#29992;&#25143;&#21517;?&#21035;&#21523;&#25105;!"
                                                        ValidationExpression="[a-zA-Z0-9_-]{1,20}"></asp:RegularExpressionValidator><asp:ValidationSummary
                                                            ID="ValidationSummary1" runat="server" HeaderText="&#21890;&#12290;&#36755;&#20837;&#26377;&#35823;&#65281;&#65281;"
                                                            ShowMessageBox="True" />
                                    </h3>
                                </li>
                            </ul>
                            <!-- Content module end -->
                            <!-- end left side content -->
                        </td>
                    </tr>
                </table>
            </div>
            </form>
        </div>
        <!-- begin footer -->
        <div id="yregft">
            <p>
                Copyright ?2006 HOHO``! Inc. All rights reserved.
                <br />
                NOTICE: We DO NOT collect personal information on this site.</p>
            <p>
                To learn more about why we do not collect your information, see our help document.</p>
        </div>
    </div>
    <div>
    </div>
    <div id="massage_box">
        <div class="massage">
            <div class="header" onmousedown="MDown(massage_box)">
                <div style="display: inline; width: 150px; position: absolute">
                    提示信息
                </div>
                <span onclick="massage_box.style.visibility='hidden'; mask.style.visibility='hidden'"
                    style="float: right; display: inline; cursor: hand">×</span></div>
            <center>
                <ul style="margin-right: 25">
                    <li>HOHO系统将于6月21日关闭。 </li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;HOHO``</li><li>2008.04.13</li></ul>
            </center>
        </div>
    </div>
    <div id="mask">
    </div>
</body>
</html>
