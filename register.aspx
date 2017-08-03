<%@ Page Language="C#" EnableViewState="false" %>

<script runat="server">
    protected void Page_Load()
    {
        /***************************************
         * 启动访问安全检查过程
         * 版本:0.01
         * *************************************/
        //Response.Redirect("error.aspx?id=200&descript=数据库爆大,暂停注册,等有了解决方案再开启注册");
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
        Response.Cookies["action"].Value = "register";
    }
    


</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="index2_images/fonts_2.0.0-b2.css" type="text/css" rel="stylesheet" />
    <meta http-equiv="Content-Language" content="zh-CN" />
    <title>HOHO`` 系统管理</title>
</head>
<body>
    <center>
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
                                                    <td valign="top" bgcolor="#ffffff" style="text-align: center">
                                                        <table cellspacing="0" cellpadding="3" width="100%" bgcolor="#f5f5f5" border="0">
                                                            <tr>
                                                                <td valign="top">
                                                                    <table class="14hongcu20" height="25" cellspacing="3" cellpadding="0" width="100%"
                                                                        bgcolor="#ffffff" border="0">
                                                                        <tr>
                                                                            <td>
                                                                                <img height="11" src="reg_files/sifang.gif" width="10">
                                                                                使用协议</td>
                                                                        </tr>
                                                                    </table>
                                                                    <table cellspacing="0" cellpadding="0" width="400" align="center" border="0">
                                                                        <tr>
                                                                            <td>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                    <iframe marginwidth="0" marginheight="0" src="reg_files/agreement.htm" frameborder="0"
                                                                        width="500" height="300"></iframe>
                                                                    <table height="40" cellspacing="0" cellpadding="0" width="400" align="center" border="0">
                                                                        <tr>
                                                                            <td>
                                                                                <p align="center">
                                                                                    <input onclick="window.open('regaccount.aspx','_self','')" type="button" value="我接受"
                                                                                        name="Submit" class="button">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                                                                    <input onclick="window.open('http://www.nov30th.com','_self','')" type="submit" value="我拒绝"
                                                                                        name="Submit2" class="button">
                                                                                </p>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <span style="font-size: 10pt">注册中指的域名是(http://XXXXX.blogcn.com/index.shtml)中的XXXXX部分,即你的BLOGCN地址前缀<br />
                                                            填写正确才能正常使用。<br />
                                                            举例:如果地址是http://qzj.blogcn.com/index.shtml,则qzj为域名</span></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </center>
</body>
</html>
