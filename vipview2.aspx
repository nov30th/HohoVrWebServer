<%@ Page Language="C#" EnableViewState="false" %>

<script runat="server">
    protected void Page_Load()
    {
        /***************************************
         * 文件作用：VIP察看的页面
         * 启动程序检查
         * 版本:0.01
         * *************************************/
        if (null == Page.Application["vr_isrun"])
            Response.Redirect("startup.aspx?cmd=" + Server.UrlEncode(Request.RawUrl), true);
        if ("false" == Page.Application["vr_isrun"])
            Response.Redirect("error.aspx?id=400", true);
        /****************************************
         * 结束程序检查，继续执行操作
         * **************************************/

        /******以下开始程序段工作****************/

        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
        string sql;
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
        cmd.Connection = conn;
        //show all vip code
        cmd.CommandText = "select [scoure],[username],[createtime],[validtime],[code] from [VIPCode] where [status]=0 order by [createtime] DESC";
        conn.Open();
        StringBuilder tablestr = new StringBuilder();
        try
        {
            string outputvip = "";
            System.Data.SqlClient.SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                //Start Output VIP Information
                tablestr.Append("<table><tr><td style=\"width:100px\">VIP邀请人</td><td style=\"width:100px\">VIP使用者</td><td style=\"width:60px\">有效时间</td><td style=\"width:100px\">开始时间</td><td style=\"width:200px\">VIP邀请编号</td></tr>");
                do
                {
                    if (dr.GetString(1) == "lengyouyou")
                    {
                        tablestr.Append("\n<tr><td>");
                        tablestr.Append(dr.GetString(0));
                        tablestr.Append("</td><td><a href=\"http://www.lengyouyou.com/\" target=\"_blank\">");
                    }
                    else
                    {
                        tablestr.Append("\n<tr><td>");
                        tablestr.Append(dr.GetString(0));
                        tablestr.Append("</td><td><a href=\"http://");
                        tablestr.Append(dr.GetString(1));
                        tablestr.Append(".blogcn.com/\" target=\"_blank\">");
                    }
                    tablestr.Append(dr.GetString(1));
                    tablestr.Append("</a></td><td>");
                    tablestr.Append(day2string(dr.GetInt16(3)));
                    tablestr.Append("</td><td>");
                    tablestr.Append(dr.GetDateTime(2));
                    tablestr.Append("</td><td>");
                    outputvip = dr.GetString(4);
                    outputvip = outputvip.Insert(5, "-");
                    outputvip = outputvip.Insert(11, "-");
                    outputvip = outputvip.Insert(17, "-");
                    outputvip = outputvip.Insert(23, "-");
                    outputvip = outputvip.Insert(29, "-");
                    outputvip = outputvip.Insert(35, "-");
                    tablestr.Append(outputvip.ToUpper());
                    tablestr.Append("</td></tr>");
                } while (dr.Read());
                tablestr.Append("</table><br />");
            }
        }
        catch (System.Data.OleDb.OleDbException e)
        {
            tablestr.Remove(0, tablestr.Length);
            for (int i = 0; i < e.Errors.Count; i++)
            {
                tablestr.Append("Index #" + i + "\n" +
                                 "Message: " + e.Errors[i].Message + "\n" +
                                 "NativeError: " + e.Errors[i].NativeError + "\n" +
                                 "Source: " + e.Errors[i].Source + "\n" +
                                 "SQLState: " + e.Errors[i].SQLState + "\n");
            }
        }
        finally
        {
            cmd.Dispose();
            conn.Close();
        }
        tabletext.Text = tablestr.ToString();
    }

    private string day2string(int days)
    {
        if (days < 31)
            return days.ToString() + "天";
        if (days == 32767)
            return "<font color=\"blue\"><strong>永久</strong></font>";
        System.Text.StringBuilder retval = new System.Text.StringBuilder();
        int years = 0, months = 0;
        years = days / 365;
        months = (days % 365) / 31;
        days = days - years * 365 - months * 31;
        if (years != 0)
        {
            retval.Append("<strong>");
            retval.Append(years);
            retval.Append("</strong><font color=\"red\">年</font>");
        }
        if (months != 0)
        {
            retval.Append("<strong>");
            retval.Append(months);
            retval.Append("</strong><font color=\"#208060\">个月</font>");
        }
        if (days != 0)
        {
            retval.Append("<strong>");
            retval.Append(days);
            retval.Append("</strong><font color=\"#208060\">天</font>");
        }
        return retval.ToString();
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
            系统当前有效VIP使用者</div>
        <div id="divMain2">
            <form id="control" runat="server">
            <asp:Label ID="tabletext" runat="server" Text=""></asp:Label>
            </form>
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
