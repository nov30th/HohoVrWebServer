<%@ Page Language="C#" %>

<script runat="server">
    protected void Page_Load()
    {
        /***************************************
         * 文件作用：注册用户帐户
         * 启动访问安全检查过程
         * 版本:0.02
         * 改动说明:根据BLOGCN要求,去除用户名和密码验证.但在帐户里用最后统计验证是否废帐户
         * *************************************/
        if (null == Page.Application["vr_isrun"])
            Response.Redirect("startup.aspx?cmd=" + Server.UrlEncode(Request.RawUrl), true);
        if ("false" == Page.Application["vr_isrun"])
            Response.Redirect("error.aspx?id=400", true);
        if ((null == Request.Cookies["VR"]) || ("OK" != Request.Cookies["VR"].Value.ToString()))
            Response.Redirect("index.aspx?", true);
        if (null != Page.Session["vr_blogid"] || null != Page.Session["vr_username"])
            Response.Redirect("client.aspx?", true);
        /****************************************
         * 结束安全检查，继续执行操作
         * **************************************/
        /******以下开始程序段工作****************/
        //if (Request.ServerVariables["HTTPS"] != "on")
        //{
        //    Response.Write("该页面强制要求HTTPS连接！请从正确的页面登陆");
        //    Response.End();
        //}
        //检查是否阅读了注册协议
        if (Request.Cookies["action"].Value == null || Request.Cookies["action"].Value != "register")
            Response.Redirect("index.aspx?", true);
        //是不是注册信息提交
        if (Page.IsPostBack)
        {
            Page.Validate();
            /************************
             * 开始检查并录入信息
             * ********************/
            if (Page.IsValid)
            {
                Response.Write("HOHO`` VR 系统怀旧模式运行中. 不提供统计和注册功能.");
                Response.End();
                ///********************************
                ///准备数据库连接    
                ///********************************
                System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
                string sql = string.Empty;
                //string sql = "select top 1 [password] from [password] where username=@username and blogtype=@blogtype";
                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
                conn.Open();
                bool islogin = false;//登陆成功则为true
                string chpwd; //存放密码的字段
                byte expP = 0; //异常位置
                //try
                {
                    //cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar).Value = username.Text;
                    //cmd.Parameters.Add("@blogtype", System.Data.SqlDbType.TinyInt).Value = Convert.ToByte(lstblogtype.SelectedValue);
                    /*******************************
                     * 读出数据，看用户名是否存在
                     * **************************/
                    /*
                    if (null != (chpwd = (string)cmd.ExecuteScalar()))
                    {
                        expP = 101;
                        //用户名存在
                        if (System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(password.Text, "MD5").Substring(8, 16).ToLower() == chpwd)
                        {
                            //密码正确
                     * */
                    expP = 1;
                    cmd.Parameters.Clear();
                    cmd.CommandText = "select top 1 [ID] from [info] where username=@username and blogtype=@blogtype";
                    cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar).Value = username.Text;
                    cmd.Parameters.Add("@blogtype", System.Data.SqlDbType.TinyInt).Value = Convert.ToByte(lstblogtype.SelectedValue);
                    if (null != cmd.ExecuteScalar())
                    {
                        //帐户已经存在了
                        information.Text = "您已经注册了!";
                        Response.Cookies["action"].Value = "index";
                    }
                    else
                    {
                        //开始注册过程
                        expP = 2;
                        DateTime expDate = DateTime.Parse("2008-7-13"); //帐户过期日期
                        const string pic = "<IMG src=\"http://www.blogcn.com/icon/7/32pic61.gif\" border=0><A title=\"来访者用户名:qzj_u&#10;来访者位置:qzj_i&#10;最近到访时间:qzj_t&#10;\" href=\"http://qzj_u.blogcn.com/\" target=_blank>qzj_n</A> qzj_s<br>"; //显示会员方式的模版
                        const string picip = "<IMG src=\"http://www.blogcn.com/icon/7/32pic125.gif\" border=0>qzj_i qzj_s<BR>"; //显示IP方式的模版
                        const int maxCount = 10000; //最大允许的记录
                        const int limitCount = 400; //一页显示的数据记录
                        const string music = "http://www.nov30th.com/music/测试音乐.mp3"; //音乐地址
                        const byte verify = 0; //验证状态
                        const byte isShow = 0; //未知
                        byte sex = (byte)(rfemale.Checked ? 1 : 0); //性别
                        const string cellPhone = "0"; //手机联系方式
                        const int times = 0; //登陆次数
                        const string blogName = "这里写你blog的名字"; //Blog的名字
                        const byte active = 1; //帐户状态
                        byte blogType = Convert.ToByte(lstblogtype.SelectedValue); //帐户类型
                        const byte showType = 1; //显示方式
                        DateTime lastReCount = DateTime.Parse("11-12-1985"); //最后一次统计时间
                        DateTime regTime = DateTime.Now; //注册时间
                        const string blockList = ";"; //屏蔽列表
                        DateTime lastLogin = DateTime.Parse("11-12-1985"); //最后一次登陆时间
                        const string memo = "使用该系统必须有VIP串号，你可以联系HOHO索取。否则不能统计。"; //显示个人帐户提示
                        const int warnCount = 0; //统计的数量
                        const string errMsg = "NO ERROR"; //帐户出错时显示的信息

                        /*****************************
                         * 开始构造SQL语句,并贬值每一个参数
                         * 版本0.01
                         * *****************************/
                        expP = 3;

                        sql = "insert into [info] ([errmsg],[picip],[username],[password],[blogname],[expdate],[maxcount],[limitcount],[pic],[music],[warncount],[lastlogin],[ip],[active],[memo],[showtype],[blocklist],[isshow],[sex],[qq],[verify],[times],[blogtype],[lastrecount],[regtime],[cellphone],[email],[daycount]) VALUES(@errmsg,@picip,@username,@password,@blogname,@expdate,@maxcount,@limitcount,@pic,@music,@warncount,@lastlogin,@ip,@active,@memo,@showtype,@blocklist,@isshow,@sex,@qq,@verify,@times,@blogtype,@lastrecount,@regtime,@cellphone,@email,@daycount)";
                        cmd.Parameters.Clear();
                        cmd.CommandText = sql;
                        cmd.Parameters.Add("@errmsg", System.Data.SqlDbType.VarChar).Value = errMsg;
                        cmd.Parameters.Add("@picip", System.Data.SqlDbType.VarChar).Value = picip;
                        cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar, 20).Value = username.Text;
                        cmd.Parameters.Add("@password", System.Data.SqlDbType.VarChar, 20).Value = password.Text;
                        cmd.Parameters.Add("@blogname", System.Data.SqlDbType.VarChar).Value = blogName;
                        cmd.Parameters.Add("@expdate", System.Data.SqlDbType.DateTime).Value = expDate;
                        cmd.Parameters.Add("@maxcount", System.Data.SqlDbType.SmallInt).Value = maxCount;
                        cmd.Parameters.Add("@limitcount", System.Data.SqlDbType.SmallInt).Value = limitCount;
                        cmd.Parameters.Add("@pic", System.Data.SqlDbType.VarChar).Value = pic;
                        cmd.Parameters.Add("@music", System.Data.SqlDbType.VarChar).Value = music;
                        cmd.Parameters.Add("@warncount", System.Data.SqlDbType.SmallInt).Value = warnCount;
                        cmd.Parameters.Add("@lastlogin", System.Data.SqlDbType.DateTime).Value = lastLogin;
                        cmd.Parameters.Add("@ip", System.Data.SqlDbType.VarChar).Value = (Request.Headers["X-FORWARDED-FOR"] != null &&
                    Request.Headers["X-FORWARDED-FOR"] != string.Empty) ? Request.Headers["X-FORWARDED-FOR"] : Request.ServerVariables["REMOTE_HOST"];
                        cmd.Parameters.Add("@active", System.Data.SqlDbType.TinyInt).Value = active;
                        cmd.Parameters.Add("@memo", System.Data.SqlDbType.VarChar).Value = memo;
                        cmd.Parameters.Add("@showtype", System.Data.SqlDbType.TinyInt).Value = showType;
                        cmd.Parameters.Add("@blocklist", System.Data.SqlDbType.VarChar).Value = blockList;
                        cmd.Parameters.Add("@isshow", System.Data.SqlDbType.TinyInt).Value = isShow;
                        cmd.Parameters.Add("@sex", System.Data.SqlDbType.TinyInt).Value = sex;
                        cmd.Parameters.Add("@qq", System.Data.SqlDbType.VarChar).Value = qq.Text;
                        cmd.Parameters.Add("@verify", System.Data.SqlDbType.TinyInt).Value = verify;
                        cmd.Parameters.Add("@times", System.Data.SqlDbType.SmallInt).Value = times;
                        cmd.Parameters.Add("@blogtype", System.Data.SqlDbType.TinyInt).Value = blogType;
                        cmd.Parameters.Add("@lastrecount", System.Data.SqlDbType.DateTime).Value = lastReCount;
                        cmd.Parameters.Add("@regtime", System.Data.SqlDbType.DateTime).Value = regTime;
                        cmd.Parameters.Add("@cellphone", System.Data.SqlDbType.VarChar).Value = cellPhone;
                        cmd.Parameters.Add("@email", System.Data.SqlDbType.VarChar, 50).Value = email.Text;
                        cmd.Parameters.Add("@daycount", System.Data.SqlDbType.SmallInt).Value = 0;
                        expP = 4;

                        if (0 != cmd.ExecuteNonQuery())
                        {
                            //注册成功
                            information.Text = "<br /><br /><a href=\"login.aspx\"><font color=\"red\">您注册成功,按这里返回并登陆</font></a>";
                        }
                        else
                        {
                            information.Text = "注册失败!请联系管理员查个水落石出!";
                        }
                    }
                    /*
                        }
                        else
                        {
                            //密码错误
                            information.Text = "密码错误!为确保是你本人注册,你必须填写你在BLOGCN的密码!";
                            Response.Cookies["action"].Value = "index";
                        }
                    }
                    else
                    {
                        //用户名不存在
                        information.Text = "没有你的访问记录,您必须先登陆你的BLOG然后再访问任何一个带有HOHO``记录的页面才能注册";
                    }
                     * */
                }
                //catch
                {
                    //information.Text = "程序异常" + expP + "!请联系管理员!";
                }
                //finally
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
    <link href="index2_images/fonts_2.0.0-b2.css" type="text/css" rel="stylesheet" />
    <title>Nov30th</title>
</head>
<body>
    <center>
        <asp:Label ID="information" Visible="true" runat="server">
            <form id="Form1" runat="server" visible="true">
                <table cellspacing="0" cellpadding="0" width="632" border="0">
                    <tr>
                        <td valign="top" width="632">
                            <table cellspacing="0" cellpadding="0" width="630" align="center" border="0">
                                <tr>
                                    <td>
                                        <table height="26" cellspacing="0" cellpadding="0" width="620" align="center" border="0">
                                            <tr>
                                                <td align="left">
                                                    <p>
                                                    </p>
                                                    <table cellspacing="1" cellpadding="3" width="500" align="center" bgcolor="#e0e0e0"
                                                        border="0">
                                                        <tr>
                                                            <td valign="top" bgcolor="#ffffff">
                                                                <table cellspacing="0" cellpadding="3" width="100%" bgcolor="#f5f5f5" border="0">
                                                                    <tr>
                                                                        <td valign="top">
                                                                            <table class="14hongcu20" height="25" cellspacing="3" cellpadding="0" width="100%"
                                                                                bgcolor="#ffffff" border="0">
                                                                                <tr>
                                                                                    <td>
                                                                                        <img height="11" src="reg_files/sifang.gif" width="10" />
                                                                                        帐号注册</td>
                                                                                </tr>
                                                                            </table>
                                                                            <table cellspacing="0" cellpadding="0" width="400" align="center" border="0">
                                                                                <tr>
                                                                                    <td style="height: 19px">
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <table border="0" width="100%" id="table2" cellspacing="0" cellpadding="0">
                                                                                <tr>
                                                                                    <td align="right" style="height: 22px; font-size: 12px;">
                                                                                        您在Blogcn的域名:</td>
                                                                                    <td style="height: 22px; width: 240px;">
                                                                                        <asp:TextBox ID="username" runat="server" ToolTip="在这里输入你的BLOGCN域名,不正确就无法统计的."></asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="username"
                                                                                            ErrorMessage="没域名注册个P啊!">*</asp:RequiredFieldValidator>
                                                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="username"
                                                                                            ErrorMessage="您填的是啥域名？和我搞笑？" ValidationExpression="[0-9a-zA-Z-]{1,20}">*</asp:RegularExpressionValidator></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right" style="font-size: 12px; height: 22px">
                                                                                        新密码:</td>
                                                                                    <td style="width: 240px; height: 22px;">
                                                                                        <asp:TextBox ID="password" runat="server" ToolTip="输入6位以上的密码" EnableViewState="False"
                                                                                            TextMode="Password"></asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="password"
                                                                                            ErrorMessage="不告诉我密码嗯?">*</asp:RequiredFieldValidator>
                                                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="password"
                                                                                            ErrorMessage="那么简单的密码也想混?" ValidationExpression=".{3,20}">*</asp:RegularExpressionValidator></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right" style="font-size: 12px; height: 22px">
                                                                                        重复前一个密码:</td>
                                                                                    <td style="width: 240px; height: 22px;">
                                                                                        <asp:TextBox ID="verifypassword" runat="server" ToolTip="输入6位以上的密码" EnableViewState="False"
                                                                                            TextMode="Password"></asp:TextBox>
                                                                                        <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToCompare="password"
                                                                                            ControlToValidate="verifypassword" ErrorMessage="手在颤抖?咋两次密码不一样捏?">*</asp:CompareValidator>
                                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="verifypassword"
                                                                                            ErrorMessage="密码重复也要输入!">*</asp:RequiredFieldValidator></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right" style="height: 22px; font-size: 12px;">
                                                                                        邮件地址:</td>
                                                                                    <td style="height: 22px; width: 240px;">
                                                                                        <asp:TextBox ID="email" runat="server" ToolTip="能联系到您的邮件地址"></asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="email"
                                                                                            ErrorMessage="日,没电子邮件?">*</asp:RequiredFieldValidator>
                                                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="email"
                                                                                            ErrorMessage="我网络上忽悠了那么多年,没看到过这种格式." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right" style="height: 22px; font-size: 12px;">
                                                                                        重复上一次邮件地址:</td>
                                                                                    <td style="height: 22px; width: 240px;">
                                                                                        <asp:TextBox ID="verifyemail" runat="server" ToolTip="能联系到您的邮件地址"></asp:TextBox>
                                                                                        <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToCompare="verifyemail"
                                                                                            ControlToValidate="email" ErrorMessage="手在颤抖?咋两次邮件地址不一样捏?">*</asp:CompareValidator>
                                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="verifyemail"
                                                                                            ErrorMessage="重复输入邮件地址.">*</asp:RequiredFieldValidator></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right" style="font-size: 12px; height: 22px">
                                                                                        您的性别</td>
                                                                                    <td style="width: 240px; height: 22px">
                                                                                        <asp:RadioButton ID="rmale" runat="server" Checked="True" GroupName="sex" Text="男人&男孩" />
                                                                                        <asp:RadioButton ID="rfemale" runat="server" GroupName="sex" Text="女人&女孩" /></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right" style="height: 22px; font-size: 12px;">
                                                                                        <span lang="en-us">MSN</span>或者QQ号码:</td>
                                                                                    <td style="height: 22px; width: 240px;">
                                                                                        <asp:TextBox ID="qq" runat="server" ToolTip="经常使用的IM联系工具"></asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="qq"
                                                                                            ErrorMessage="QQ或MSN必须填写">*</asp:RequiredFieldValidator>
                                                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="qq"
                                                                                            ErrorMessage="QQ或MSN不符合要求" SetFocusOnError="True" ValidationExpression=".{5,50}">*</asp:RegularExpressionValidator></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right" style="height: 19px">
                                                                                        注册帐户类别:</td>
                                                                                    <td style="height: 19px; width: 240px;">
                                                                                        <asp:DropDownList ID="lstblogtype" runat="server">
                                                                                            <asp:ListItem Selected="True" Value="1">Blogcn.Com</asp:ListItem>
                                                                                        </asp:DropDownList>
                                                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="lstblogtype"
                                                                                            ErrorMessage="日!" ValidationExpression="\d{1}">*</asp:RegularExpressionValidator></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="2">
                                                                                        <asp:ValidationSummary ID="ValidationSummary2" runat="server" BorderStyle="Double"
                                                                                            Font-Bold="False" Font-Italic="False" Font-Names="新宋体" Font-Overline="False"
                                                                                            Font-Strikeout="False" Font-Underline="True" ForeColor="Crimson" HeaderText="你在搞什么啊,看看下面:" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <table height="40" cellspacing="0" cellpadding="0" width="400" align="center" border="0">
                                                                                <tr>
                                                                                    <td>
                                                                                        <p align="center">
                                                                                            <asp:Button class="button" runat="server" ID="Button1" Text="注册" />&nbsp;</p>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <p>
                                                    </p>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </form>
        </asp:Label>
    </center>
</body>
</html>
