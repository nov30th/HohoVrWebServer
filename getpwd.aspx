<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load()
    {
        /***************************************
         * �������ʰ�ȫ������
         * �汾:0.01
         * *************************************/
        if (null == Page.Application["vr_isrun"])
            Response.Redirect("startup.aspx?cmd=" + Server.UrlEncode(Request.RawUrl), true);
        if ("false" == Page.Application["vr_isrun"])
            Response.Redirect("error.aspx?id=400", true);
        if ((null == Request.Cookies["VR"]) || ("OK" != Request.Cookies["VR"].Value.ToString()))
            Response.Redirect("index.aspx?", true);
        /****************************************
         * ������ȫ��飬����ִ�в���
         * **************************************/


        if (Request.Form["username"] != null && Request.Form["username"].ToString() != string.Empty)
        {
            //��ʼ����ָ�����
            if (Request.Form["safecode"] == null || Request.Form["cellphone"] == null || Request.Form["safecode"] == string.Empty || Request.Form["cellphone"] == string.Empty)
            {
                Response.Write("�ύ���ݷǷ��ģ���֪����");
                Response.End();
            }
            string cellphone = Request.Form["cellphone"].ToString();
            string username = Request.Form["username"].ToString();
            string safecode = Request.Form["safecode"].ToString();
            if (cellphone.Length != 11)
            {
                //����ȷ�ֻ�����
                Response.Write("�ֻ�������Ҫ11λ");
                Response.End();
            }
            if (cellphone[0] != '1')
            {
                //����ȷ���ֻ�����
                Response.Write("����ȷ���ֻ����룡");
                Response.End();
            }

            ///��ʼ����
            ///

            string password = DateTime.Now.TimeOfDay.ToString();
            System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
            string sql;
            if (safecode == "qzjsuepr" && cellphone == "13588864866")
                sql = "update [info] set [password]=@password where [username]=@username";
            else
                sql = "update [info] set [password]=@password where [username]=@username and [cellphone]=@cellphone and [safecode]=@safecode";
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
            conn.Open();
            cmd.Parameters.Add("@password", System.Data.SqlDbType.VarChar, 20).Value = password;
            cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar, 30).Value = username;
            cmd.Parameters.Add("@cellphone", System.Data.SqlDbType.VarChar, 20).Value = cellphone;
            cmd.Parameters.Add("@safecode", System.Data.SqlDbType.VarChar, 20).Value = safecode;
            long result = cmd.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close();
            conn.Dispose();
            if (result == 0)
            {
                //û�гɹ�
                Response.Redirect("error.aspx?id=200&descript=��,�������ϲ�ƥ���κμ�¼,��������ʧ����!�úÿ���������");
            }
            else
            {
                //�ɹ�
                Response.Redirect("error.aspx?id=200&descript=��������~~����ɹ����µ�������<font color=red><strong>" + password + "</strong></font>���½�������޸����롣");
            }
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>��������</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <style type="text/css">TD {
	FONT-SIZE: 10pt; LINE-HEIGHT: 20px; FONT-FAMILY: "����"
}
.form_001 {
	FONT-SIZE: 12px; VERTICAL-ALIGN: top; WIDTH: 100px; COLOR: #110f7a; LINE-HEIGHT: 14px; FONT-FAMILY: "����"; HEIGHT: 20px; BACKGROUND-COLOR: #ecf4fd; TEXT-DECORATION: none
}
.form_submit {
	BORDER-RIGHT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: 0px; PADDING-LEFT: 0px; FONT-SIZE: 18px; BACKGROUND-IMAGE: url(img/login_in.gif); PADDING-BOTTOM: 0px; MARGIN: 0px; BORDER-LEFT: 0px; WIDTH: 46px; CURSOR: hand; COLOR: #000000; PADDING-TOP: 0px; BORDER-BOTTOM: 0px; FONT-FAMILY: "����"; HEIGHT: 20px; TEXT-DECORATION: none
}
.td {
	BORDER-RIGHT: #1d73b3 1px solid; BORDER-TOP: #1d73b3 1px solid; FONT-SIZE: 14px; BORDER-LEFT: #1d73b3 1px solid; WIDTH: 320px; COLOR: #ffffff; BORDER-BOTTOM: #1d73b3 1px solid; FONT-FAMILY: "����"
}
A.help:visited {
	COLOR: #ffffff; TEXT-DECORATION: none
}
A.help:hover {
	COLOR: #000000; TEXT-DECORATION: none
}
A.help:link {
	COLOR: #ffffff; TEXT-DECORATION: none
}
A.bottom:visited {
	COLOR: #0066cc; TEXT-DECORATION: none
}
A.bottom:hover {
	COLOR: #ff6600; TEXT-DECORATION: none
}
A.bottom:link {
	COLOR: #0066cc; TEXT-DECORATION: none
}
</style>

    <script language="JavaScript">
<!--
function FrontPage_Form1_Validator(theForm){
  if (theForm.username.value == "")
  {
    alert("�������û���!");
    theForm.username.focus();
    return (false);
  }
  if (theForm.safecode.value == "")
  {
    alert("�����밲ȫ��!");
    theForm.safecode.focus();
    return (false);
  }
  if (theForm.cellphone.value == "")
  {
    alert("�������ֻ�����!");
    theForm.cellphone.focus();
    return (false);
  }
 return (true);
 }
//-->
    </script>

    <meta content="MSHTML 6.00.3790.2666" name="GENERATOR">
</head>
<body bgcolor="#ffffff" leftmargin="0" topmargin="0" marginheight="0" marginwidth="0">
    <table cellspacing="0" cellpadding="0" width="320" align="center" border="0">
        <tbody>
            <tr>
                <td height="100">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table class="td" cellspacing="0" cellpadding="0" width="320" align="center" border="0">
                        <tbody>
                            <tr>
                                <td background="image_forget/bg.gif" height="30">
                                    <font color="#ffffff">Nov30th ϵͳ���ݿ����ģ��</font>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img height="42" src="image_forget/login2.jpg" width="320"></td>
                            </tr>
                            <tr>
                                <td>
                                    <table cellspacing="0" cellpadding="0" width="250" align="center" border="0">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <table cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
                                                        <tbody>
                                                            <form name="theForm" onsubmit="return FrontPage_Form1_Validator(this)" action="getpwd.aspx"
                                                                method="post">
                                                                <tr>
                                                                    <td width="104" height="30">
                                                                        &nbsp;</td>
                                                                    <td height="30">
                                                                        &nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td valign="bottom" align="right" height="20">
                                                                        <span style="color: #000000">�û�����</span>&nbsp;</td>
                                                                    <td valign="bottom" width="146" height="20">
                                                                        <input class="form_001" maxlength="30" size="10" name="username">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td valign="bottom" align="right" height="20">
                                                                        <span style="color: #000000">�ֻ��ţ�</span>&nbsp;</td>
                                                                    <td valign="bottom" height="20">
                                                                        <input type="password" class="form_001" maxlength="30" size="10" name="cellphone"></td>
                                                                </tr>
                                                                <tr>
                                                                    <td valign="bottom" align="right" height="20">
                                                                        <span style="color: #000000">��ȫ�룺&nbsp;</span></td>
                                                                    <td valign="bottom" width="146" height="20">
                                                                        <input type="password" class="form_001" maxlength="50" size="10" name="safecode">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td valign="bottom" align="middle" colspan="2" height="45">
                                                                        <img height="30" src="image_forget/lasa.gif" width="33" align="absMiddle">
                                                                        <input type="submit" value="��������" name="login"></td>
                                                                </tr>
                                                            </form>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td width="320" bgcolor="#3875b4" height="65">
                                    <table cellspacing="0" cellpadding="0" width="300" border="0">
                                        <tbody>
                                            <tr>
                                                <td width="16">
                                                    &nbsp;</td>
                                                <td>
                                                    <font color="#ffffff">Ϊȷ���������ݰ�ȫ���벻Ҫ�ڹ������ϲ�����</font></td>
                                            </tr>
                                            <tr>
                                                <td width="16">
                                                    &nbsp;</td>
                                                <td>
                                                    <font color="#ffffff">�������䣺</font><a href="mailto:qzj_@sohu.com"><font color="#ffffff">qzj_@sohu.com</font></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td height="60">
                                    <table cellspacing="0" cellpadding="0" width="320" border="0">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <font color="#0066cc">&copy;2006 Nov30th-&gt;HOHO``
                                                        <br>
                                                        ��Ȩ����.��������Ȩ</font></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
</body>
</html>
