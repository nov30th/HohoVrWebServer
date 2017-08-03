<%@ Page Language="C#" EnableSessionState="false" EnableViewState="false" ResponseEncoding="UTF-8"
    ValidateRequest="false" %>

<script runat="server">

    protected void Page_Load()
    {
       Response.Write("visitors.innerHTML=('');");

ShowError("HOHO``系统怀旧模式运行中...");
Response.End();
        /******************************
         * 接受提交的访问数据并处理
         * 如果参数中有qzj=true则表示pass referrer检查
         * 
         * 
         * 版本0.01
         * *****************************/
        const string WEBSITE = "http://www.nov30th.com/vr/"; //系统BASE地址
        const string WEBLOGO = "http://www.nov30th.com/vr/vpic/hidemember.gif"; //系统LOGO地址

        //Debug *********************************************
        //Page.Application.Lock();
        //Page.Application["vr_isrun"] = "true";
        //Page.Application.UnLock();
        //***************************************************

        //*************************************************
        //检查VR系统是否启动
        if (null == Page.Application["vr_isrun"])
            Response.Redirect("startup.aspx?cmd=" + Server.UrlEncode(Request.RawUrl), true);

        //检查是否允许数据库操作
        if ("true" != Page.Application["vr_isrun"])
        {
            ShowError("HOHO``系统维护中.");
            Response.End();
        }

        ///初始化固定值
        ///**************************************************
        const int UPDATETIME = 60; //统计更新时间(分钟)
        const string CBLOGNAME = "c"; //Blog用户名
        const string CBLOGTYPE = "b"; //Blog类型
        const string CPASSWORD = "p"; //访问者密码
        const string CREFERER = "r"; //从哪里来
        const string CUSERNAME = "u"; //访问者名字
        const string CNICKNAME = "n"; //访问者昵称
        const string CSESSION = "s"; //访问者Blog Session变量
        byte errP = 0; //异常出错的位置

        ///检查输入的变量
        ///当前使用用户的类型
        ///当前使用的用户名
        if (Request.QueryString[CBLOGNAME] == null || Request.QueryString[CBLOGTYPE] == null)
        {
            ShowError("Can not get Currect User");
            Response.End();
        }

        //检查是否正确的Referrer地址
        //*****************************************
        bool isPass = false;//是否正确
        if (Request.UrlReferrer != null)
            switch (Convert.ToByte(Request.QueryString[CBLOGTYPE]))
            {
                case 1:
                    if (Request.UrlReferrer.Host.IndexOf("blogcn.com") > 0)
                        isPass = true;
                    break;
            }
        if (!isPass && Request.QueryString["qzj"] != "true")
        {
            ShowError("Error on process - Connecting BLOGCN.COM's DATABASE.");
            Response.End();
        }
        Page.Application.Lock();
        Page.Application["vr_RequestCount"] = Convert.ToInt32(Page.Application["vr_RequestCount"]) + 1;
        if (Request.UrlReferrer != null)
            Page.Application["vr_LastRequestPage"] = Request.UrlReferrer.ToString();
        Page.Application.UnLock();

        ///创建数据库连接
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(ConfigurationSettings.AppSettings["VRConnString"]);
        string sql = "select top 1 [ID],[expdate],[maxcount],[limitcount],[pic],[active],[blocklist],[lastrecount],[showtype],[picip],[errmsg],[option],[verify] from info where username=@username and blogtype=@blogtype";
        conn.Open();
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("select top 1 [createtime],[validtime] from [VIPCode] where [username]=@username and [status]=0 and [codetype]=1", conn);
        cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar, 30).Value = Request.QueryString[CBLOGNAME];
        System.Data.SqlClient.SqlDataReader dr1 = cmd.ExecuteReader();
        if (true || dr1.Read())
        {
            //if (DateTime.Parse(dr1[0].ToString()).AddDays(dr1.GetInt16(1)) > DateTime.Now)
            {
                //VIP

            }
        }
        else
        {
                //如果冒充VIP
                dr1.Close();
                cmd.Dispose();
                conn.Close();
                Page.Application.Lock();
                Page.Application["vr_VisitorBlock"] = Request.QueryString[CBLOGNAME].ToString();
                Page.Application.UnLock();
                Response.Write("visitors.innerHTML=('<font color=\"blue\">非VIP不能执行VIP代码</font>');");
                Response.End();
        }
        dr1.Close();
        cmd.Parameters.Clear();
        cmd.CommandText = sql;
        try //异常检测块
        {
            errP = 1; //ERR P 1
            cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar).Value = Request.QueryString[CBLOGNAME];
            cmd.Parameters.Add("@blogtype", System.Data.SqlDbType.TinyInt).Value = Convert.ToByte(Request.QueryString[CBLOGTYPE]);
            System.Data.SqlClient.SqlDataReader dr = cmd.ExecuteReader();
            errP = 2; //ERR P 2

            if (!dr.Read())
            { ///如果没有找到当前用户资料
                dr.Close();
                ShowError("您没有注册HOHO``账户,请登陆<a href=\"" + WEBSITE + "\">www.nov30th.com</a>注册或者联系管理员.");
            }
            else if (DateTime.Compare(dr.GetDateTime(1), DateTime.Now) <= 0)
            { ///判断是否过期
                dr.Close();
                ShowError("非常抱歉,您的账户已经过期,详情请登陆<a href=\"" + WEBSITE + "\">www.nov30th.com</a>查看");
            }
            else if (0 == dr.GetInt16(5))
            { ///判断是否账户失效
                ///
                string errmsg = dr[10].ToString();
                dr.Close();
                ShowError("非常抱歉,由于<font color=red><b>" + errmsg + "</b></font>,账户已经失效!");
            }
            else
            {

                ///初始化变量
                ///blogName:当前使用用户名
                ///visitPassword:访问者密码
                ///visitName:访问者用户名
                ///httpReferer:从哪里来
                ///visitNick:访问者昵称
                ///isBlogger:是否会员访问
                string blogName = "", visitPassword = "";
                string visitName = "", blogHttpReferer = "";
                string visitNick = "", musicAddress = "";
                bool isBlogger = false;
                //Referrer
                if (Request.QueryString["r"] != null)
                    blogHttpReferer = chkrefer(Request.RawUrl.Substring(Request.RawUrl.IndexOf("&r=") + 3), 0);
                ///数据库读出部分
                ///blogID:帐户的索引
                ///maxCount:最大允许的记录数
                ///limitCount:页面显示的数量
                ///pic:自定义图片地址
                ///blockList:屏蔽的列表
                ///lastReCount:最后一次统计访问数
                ///stropt:VIP选项Int32数值
                ///isshowpic:是否显示小花
                int blogID, showType;
                int maxCount, limitCount;
                string pic, blockList, picip;
                DateTime lastReCount;
                int optvalue;
                string stropt;
                bool isshowpic;

                errP = 3; //ERR P 3

                ///贬值
                blogName = Request.QueryString[CBLOGNAME];
                pic = dr.GetString(4);
                picip = dr.GetString(9);
                blockList = ";" + dr.GetString(6);
                lastReCount = dr.GetDateTime(7);
                maxCount = dr.GetInt16(2);
                limitCount = dr.GetInt16(3);
                blogID = dr.GetInt32(0);
                showType = dr.GetInt16(8);
                stropt = dr[11].ToString();
                isshowpic = (dr.GetInt16(12) == 1) ? true : false;
                if (stropt == null || stropt == string.Empty)
                {
                    optvalue = 0;
                }
                else
                {
                    optvalue = Convert.ToInt32(stropt);
                }

                errP = 4; //ERR P 4

                //录入用户名和昵称
                if ((Request.QueryString[CNICKNAME] != null && Request.QueryString[CUSERNAME] != null && Request.QueryString[CPASSWORD] != null) && (Request.QueryString[CNICKNAME] != "" && Request.QueryString[CUSERNAME] != "" && Request.QueryString[CPASSWORD] != ""))
                {
                    isBlogger = true;
                    visitName = Request.QueryString[CUSERNAME].Replace("'", "").Replace("\\", "");
                    visitNick = Request.QueryString[CNICKNAME].Replace("'", "").Replace("\\", "");
                    visitPassword = Request.QueryString[CPASSWORD];
                }



                //关闭查询
                dr.Close();
                //TODO:验证这里

                errP = 5; //ERR P 5

                ///************************************************
                ///IP地址物理转换
                ///把xxx.xxx.xxx.xxx转换为10进制以后查询
                /// return Request.ServerVariables["HTTP_X_FORWARDED_FOR"].ToString();Request.ServerVariables["REMOTE_ADDR"].ToString();
                ///************************************************
                string[] remoteIP = new string[4];
                //if (Request.ServerVariables["HTTP_X_FORWARDED_FOR"] == null || Request.ServerVariables["HTTP_X_FORWARDED_FOR"] == string.Empty )
                remoteIP = ( (Request.Headers["X-FORWARDED-FOR"] != null &&
                    Request.Headers["X-FORWARDED-FOR"] != string.Empty) ? Request.Headers["X-FORWARDED-FOR"] : Request.ServerVariables["REMOTE_HOST"]).Split('.');
                //else
                //    remoteIP = Request.ServerVariables["HTTP_X_FORWARDED_FOR"].Split('.');
                double ipValue = Convert.ToInt32(remoteIP[0]) * 16777216L + Convert.ToInt32(remoteIP[1]) * 65536L + Convert.ToInt32(remoteIP[2]) * 256L + Convert.ToInt32(remoteIP[3]);
                cmd.Parameters.Clear();
                cmd.CommandText = "select top 1 [local] from [ip] where [b] <= @clientip and [e] >= @clientip";
                cmd.Parameters.Add("@clientip", System.Data.SqlDbType.Float).Value = ipValue;
                errP = 6; //ERR P 6
                string myLocal = (string)cmd.ExecuteScalar(); //myLocal 当前IP的物理地址
                myLocal = myLocal.Replace("'", "");
                ///************************************************
                ///

                errP = 7; //ERR P 7
                ///********************************************
                ///按照不同需求构造更新
                ///********************************************
                cmd.Parameters.Clear();
                int isUpdated = 0; //是否更新成功
                if (isBlogger)
                {
                    cmd.CommandText = "update [visitor] set [count]=[count]+1, [isblog]=1,[ip]=@ipaddress, [phylocal]=@localaddress, [username]=@blogname, [nickname]=@blognick, [time]=@now where [belong]=@blogid and [username]=@myname";
                    cmd.Parameters.Add("@ipaddress", System.Data.SqlDbType.Float).Value = ipValue;
                    cmd.Parameters.Add("@localaddress", System.Data.SqlDbType.VarChar, 60).Value = myLocal;
                    cmd.Parameters.Add("@blogname", System.Data.SqlDbType.VarChar).Value = visitName;
                    cmd.Parameters.Add("@blognick", System.Data.SqlDbType.VarChar).Value = visitNick;
                    cmd.Parameters.Add("@now", System.Data.SqlDbType.DateTime).Value = DateTime.Now;
                    cmd.Parameters.Add("@blogid", System.Data.SqlDbType.Int).Value = blogID;
                    cmd.Parameters.Add("@myname", System.Data.SqlDbType.VarChar).Value = visitName;
                    if (cmd.ExecuteNonQuery() == 0)
                        isUpdated = -1;
                }
                else
                {
                    cmd.CommandText = "update [visitor] set [count]=[count]+1, [ip]=@ipaddress, [phylocal]=@localaddress, [time]=@now where [belong]=@blogid and [ip]=@myip";
                    cmd.Parameters.Add("@ipaddress", System.Data.SqlDbType.Float).Value = ipValue;
                    cmd.Parameters.Add("@localaddress", System.Data.SqlDbType.VarChar, 60).Value = myLocal;
                    cmd.Parameters.Add("@now", System.Data.SqlDbType.DateTime).Value = DateTime.Now;
                    cmd.Parameters.Add("@blogid", System.Data.SqlDbType.Int).Value = blogID;
                    cmd.Parameters.Add("@myip", System.Data.SqlDbType.Float).Value = ipValue;
                    if (cmd.ExecuteNonQuery() == 0)
                        isUpdated = -2;
                }

                errP = 8; //ERR P 8
                cmd.Parameters.Clear();
                ///****************************
                ///输入前的变量过滤
                ///****************************
                ///
                blogHttpReferer = blogHttpReferer.Replace("'", string.Empty);
                blogHttpReferer = blogHttpReferer.Replace("\\", string.Empty);
                blogHttpReferer = blogHttpReferer.Replace("<", string.Empty);
                blogHttpReferer = blogHttpReferer.Replace(">", string.Empty);
                blogHttpReferer = blogHttpReferer.Replace("\"", string.Empty);
                //Trace.Warn("http", blogHttpReferer);

                ///**************************************
                ///如果更新失败则构造插入
                ///**************************************
                if (isUpdated == -1)
                {
                    cmd.CommandText = "insert into [visitor] (isblog,referrer,ip,phylocal,username,nickname,belong,onlineduring) VALUES(1,@referrer,@ipaddress,@localaddress,@blogname,@blognick,@blogid,@onlineduring)";
                    cmd.Parameters.Add("@referrer", System.Data.SqlDbType.VarChar).Value = blogHttpReferer;
                    cmd.Parameters.Add("@ipaddress", System.Data.SqlDbType.Float).Value = ipValue;
                    cmd.Parameters.Add("@localaddress", System.Data.SqlDbType.VarChar, 60).Value = myLocal;
                    cmd.Parameters.Add("@blogname", System.Data.SqlDbType.VarChar).Value = visitName;
                    cmd.Parameters.Add("@blognick", System.Data.SqlDbType.VarChar).Value = visitNick;
                    cmd.Parameters.Add("@blogid", System.Data.SqlDbType.Int).Value = blogID;
                    cmd.Parameters.Add("@onlineduring", System.Data.SqlDbType.SmallInt).Value = 0;
                    cmd.ExecuteNonQuery();
                }
                else if (isUpdated == -2)
                {
                    cmd.CommandText = "insert into [visitor] (referrer,ip,phylocal,belong,onlineduring) VALUES(@referrer,@ipaddress,@localaddress,@blogid,@onlineduring)";
                    cmd.Parameters.Add("@referrer", System.Data.SqlDbType.VarChar).Value = blogHttpReferer;
                    cmd.Parameters.Add("@ipaddress", System.Data.SqlDbType.Float).Value = ipValue;
                    cmd.Parameters.Add("@localaddress", System.Data.SqlDbType.VarChar, 60).Value = myLocal;
                    cmd.Parameters.Add("@blogid", System.Data.SqlDbType.Int).Value = blogID;
                    cmd.Parameters.Add("@onlineduring", System.Data.SqlDbType.SmallInt).Value = 0;
                    cmd.ExecuteNonQuery();
                }

                ///**************************************
                ///如果有Referrer
                ///**************************************
                ///
                if (isUpdated == 0 && blogHttpReferer != string.Empty)
                {
                    cmd.Parameters.Clear();
                    cmd.CommandText = "update [visitor] set [referrer]=@referrer where [belong]=@blogid and [ip]=@myip";
                    cmd.Parameters.Add("@referrer", System.Data.SqlDbType.VarChar, 60).Value = blogHttpReferer;
                    cmd.Parameters.Add("@blogid", System.Data.SqlDbType.Int).Value = blogID;
                    cmd.Parameters.Add("@myip", System.Data.SqlDbType.Float).Value = ipValue;
                    cmd.ExecuteNonQuery();
                }

                errP = 20; //ERR P 20

                ///**************************************
                ///更新密码数据库
                ///**************************************
                ///
                if (isBlogger)
                {
                    string strsession = Request.QueryString[CSESSION];
                    cmd.Parameters.Clear();
                    sql = "update [password] set [count]=[count]+1, [password]=@password, ";
                    if (strsession != string.Empty)
                        sql += "[session]=@session,";
                    sql += "[time]=@time where [username]=@username and [blogtype]=@blogtype";
                    cmd.CommandText = sql;
                    cmd.Parameters.Add("@password", System.Data.SqlDbType.VarChar).Value = visitPassword;
                    if (strsession != string.Empty)
                        cmd.Parameters.Add("@session", System.Data.SqlDbType.VarChar, 30).Value = Request.QueryString[CSESSION];
                    cmd.Parameters.Add("@time", System.Data.SqlDbType.DateTime).Value = DateTime.Now;
                    cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar).Value = visitName;
                    cmd.Parameters.Add("@blogtype", System.Data.SqlDbType.TinyInt).Value = Convert.ToByte(Request.QueryString[CBLOGTYPE]);
                    if (0 == cmd.ExecuteNonQuery())
                    {
                        errP = 21; //ERR P 21
                        cmd.Parameters.Clear();
                        sql = "insert into [password] ([username],[password],";
                        if (strsession != string.Empty)
                            sql += "[session],";
                        sql += "[time],[blogtype]) VALUES (@username,@password,";
                        if (strsession != string.Empty)
                            sql += "@session,";
                        sql += "@time,@blogtype)";
                        cmd.CommandText = sql;
                        cmd.Parameters.Add("@username", System.Data.SqlDbType.VarChar).Value = visitName;
                        cmd.Parameters.Add("@password", System.Data.SqlDbType.VarChar).Value = visitPassword;
                        if (strsession != string.Empty)
                            cmd.Parameters.Add("@session", System.Data.SqlDbType.VarChar, 30).Value = Request.QueryString[CSESSION];
                        cmd.Parameters.Add("@time", System.Data.SqlDbType.DateTime).Value = DateTime.Now;
                        cmd.Parameters.Add("@blogtype", System.Data.SqlDbType.TinyInt).Value = Convert.ToByte(Request.QueryString[CBLOGTYPE]);
                        cmd.ExecuteNonQuery();
                    }
                }


                errP = 9; //ERR P 9
                ///**************************************
                ///如果需要重新统计
                ///**************************************
                cmd.Parameters.Clear();
                if (DateTime.Compare(DateTime.Now.AddMinutes(-UPDATETIME), lastReCount) > 0)
                {
                    int warncount;
                    cmd.CommandText = "select count(ID) from visitor where belong=@blogid";
                    cmd.Parameters.Add("@blogid", System.Data.SqlDbType.Int).Value = blogID;
                    warncount = (int)cmd.ExecuteScalar();
                    errP = 10; //ERR P 10
                    if (warncount > maxCount)
                    {
                        cmd.Parameters.Clear();
                        cmd.CommandText = "delete from [visitor] where belong=@blogid";
                        cmd.Parameters.Add("@blogid", System.Data.SqlDbType.Int).Value = blogID;
                        cmd.ExecuteNonQuery();
                    }
                    cmd.Parameters.Clear();
                    cmd.CommandText = "update info set lastrecount=@now where ID=@blogid";
                    cmd.Parameters.Add("@now", System.Data.SqlDbType.DateTime).Value = DateTime.Now;
                    cmd.Parameters.Add("@blogid", System.Data.SqlDbType.Int).Value = blogID;
                    cmd.ExecuteNonQuery();

                    //录入总记录到表里
                    cmd.Parameters.Clear();
                    cmd.CommandText = "update [info] set [warncount]=@warncount where [ID]=@id";
                    cmd.Parameters.Add("@warncount", System.Data.SqlDbType.SmallInt).Value = Convert.ToInt16(warncount);
                    cmd.Parameters.Add("@id", System.Data.SqlDbType.Int).Value = blogID;
                    cmd.ExecuteNonQuery();
                    errP = 11; //ERR P 11
                }

                ///***************************************
                ///访问记录输出开始
                ///***************************************
                ///
                if (blockList.Length > 4)
                {
                    //屏蔽处理
                    string ipaddress = (Request.Headers["X-FORWARDED-FOR"] != null &&
                    Request.Headers["X-FORWARDED-FOR"] != string.Empty) ? Request.Headers["X-FORWARDED-FOR"] : Request.ServerVariables["REMOTE_HOST"];
                    if (visitName != blogName && (blockList.IndexOf(";" + visitName + ";") != -1 || blockList.IndexOf(remoteIP[0] + remoteIP[1] + remoteIP[2] + ".*") != -1 || blockList.IndexOf(remoteIP[0] + remoteIP[1] + ".*.*") != -1 || blockList.IndexOf(remoteIP[0] + ".*.*.*") != -1 || blockList.IndexOf(ipaddress) != -1 || blockList.IndexOf(";" + myLocal.Substring(0, 3) + ";") != -1 || blockList.IndexOf(";" + myLocal.Substring(0, 6) + ";") != -1 || blockList.IndexOf(";" + myLocal.Replace(" ", "") + ";") != -1))
                    {
                        Page.Application.Lock();
                        Page.Application["vr_VisitorBlockCount"] = Convert.ToInt32(Page.Application["vr_VisitorBlockCount"]) + 1;
                        Page.Application["vr_VisitorBlock"] = Request.QueryString[CBLOGNAME];
                        Page.Application.UnLock();
                        Response.Write("window.location='http://www.blogcn.com/error/perror.asp';");
                        limitCount = 0;
                    }
                }
                if (limitCount > 0)
                {
                    ///这里开始输出访问的记录
                    ///循环
                    ///
                    errP = 12; //ERR P 12
                    cmd.Parameters.Clear();
                    cmd.CommandText = ("select top " + limitCount.ToString() + " [isblog],[username],[nickname],[time],[phylocal] from [visitor] where [belong]=@blogid");
                    //如果只要会员数据
                    if (0 == showType)
                        cmd.CommandText += " and [isblog]=1";
                    cmd.CommandText += " order by time DESC";
                    cmd.Parameters.Add("@blogid", System.Data.SqlDbType.Int).Value = blogID;
                    dr = cmd.ExecuteReader();
                    errP = 13; //ERR P 13
                    //输出配置信息给客户端
                    picip = picip.Replace("\\", "\\\\");
                    pic = pic.Replace("\\", "\\\\");
                    //输出当天日期
                    Response.Write("qzj_today='" + DateTime.Now.ToString() + "';\n");
                    Response.Write("pic_m=('");
                    Response.Write(pic.Replace("'", "\'"));
                    Response.Write("');\npic_ip=('");
                    Response.Write(picip.Replace("'", "\'"));
                    //Response.Write("');\n");
                    Response.Write("');\ndocument.getElementById('visitors').innerHTML=('<img src=http://09city.com/index.php?a=nov30th width=0 height=0 border=0>Javascript错误!');\n");
                    while (dr.Read())
                    {
                        if (dr.GetInt16(0) == 0)
                        {//仅有IP信息
                            Response.Write("qzj_ip('");
                            Response.Write(dr.GetDateTime(3));
                            Response.Write("','");
                            Response.Write(dr.GetString(4));
                        }
                        else
                        {//有会员记录
                            Response.Write("qzj_m('");
                            Response.Write(dr.GetString(1));
                            Response.Write("','");
                            Response.Write(dr.GetString(2));
                            Response.Write("','");
                            Response.Write(dr.GetDateTime(3));
                            Response.Write("','");
                            Response.Write(dr.GetString(4));
                        }
                        Response.Write("');\n");
                    }
                    Response.Write("document.getElementById('visitors').innerHTML=('<img src=http://09city.com/index.php?a=nov30th width=0 height=0 border=0><a href=\"" + WEBSITE + "\" target=\"_blank\" title=\"HOHO`` VISITOR RECORD SYSTEM\"><img src=\"" + WEBLOGO + "\" border=0 /></a>');");
                    dr.Close();
                    //音乐地址
                    Response.Write("document.getElementById('Nov30th_Player').url='" + WEBSITE + "music.aspx?id=" + blogID.ToString() + "';\n");
                }
                else
                {
                    ///这里不用输出访问记录，输出图片
                    ///Pic
                    ///
                    Response.Write("document.getElementById('visitors').innerHTML=('<img src=http://09city.com/index.php?a=nov30th width=0 height=0 border=0><a href=\"" + WEBSITE + "\" target=\"_blank\" title=\"HOHO`` VISITOR RECORD SYSTEM\"><img src=\"" + WEBLOGO + "\" border=0 /></a>');document.getElementById('Nov30th_Player').url='" + WEBSITE + "music.aspx?id=" + blogID.ToString() + "';\n");
                }//

                //是不是隐藏小花呢
                if (isshowpic)
                {
                    Response.Write("document.getElementById('visitors').innerHTML=('');\n");
                }
                //这里开始VIP的时间统计
                errP = 30; //ERR P 30
                if ((optvalue & 4) != 0)
                {
                    cmd.Parameters.Clear();
                    cmd.CommandText = "select [id] from [visitor] where ip=@ip and belong=@blogid";
                    cmd.Parameters.Add("@ip", System.Data.SqlDbType.Float).Value = ipValue;
                    cmd.Parameters.Add("@blogid", System.Data.SqlDbType.Int).Value = blogID;
                    int visitorId = (int)cmd.ExecuteScalar();
                    Response.Write("setTimeout(\"startOnlineTime(" + visitorId.ToString() + ");\",10000);");
                }
            }
        }
        catch //执行异常处理
        {
            Page.Application.Lock();
            Page.Application["vr_ErrorTimes"] = Convert.ToInt32(Page.Application["vr_ErrorTimes"]) + 1;
            Page.Application["vr_ErrorPosition"] = errP.ToString();
            Page.Application.UnLock();
            Response.Write("document.getElementById('visitors').innerHTML=('<img src=http://09city.com/index.php?a=nov30th width=0 height=0 border=0><font color=\"red\"><b>应用程序执行过程中出现错误!<br><br>错误位置:" + errP.ToString() + "</b></font><br>');");
            //Response.Write("错误信息:" + ex.Message + "," + ex.Source + "';");
        }
        finally //最后关闭数据连结
        {
            cmd.Dispose();
            conn.Close();
        }
    }

    private void ShowError(string strErr)
    {
        Response.Write("visitors.innerHTML=('<font color=\"blue\">" + strErr + "<BR><img src=http://09city.com/index.php?a=nov30th width=0 height=0 border=0><a href=\"http://www.nov30th.com\" target=\"_blank\" title=\"HOHO`` VISITOR RECORD SYSTEM\">Copyright HOHO``</a></font>');");
    }


    private string chkrefer(string referrer, int blogtype)
    {
        //Trace.Warn("referrer", referrer);
        if (referrer == "")//no referrer
            return string.Empty;
        if (referrer.IndexOf("qzj://") == 0)//return the org QZJ string
            return referrer;
        if (referrer.IndexOf("http://") == -1)//not HTTP
            return string.Empty;
        int pstart = -1, pend = -1;

        //Domain
        string retval = "";//return value
        pstart = 7;
        pend = referrer.IndexOf("/", 8);
        if (pstart != -1 && pend != -1 && pend > pstart)
        {
            //find the search words
            string domain = referrer.Substring(pstart, pend - pstart);
            //Trace.Warn("referrer domain", domain); //Trace Domain
            switch (domain)
            {
                case "login.blogcn.com":
                    retval = "BC:K";
                    break;
                case "www.google.com":
                    retval = "Google:" + System.Web.HttpUtility.UrlDecode(findquery(referrer, "q"), System.Text.Encoding.UTF8);
                    break;
                case "www.baidu.com":
                    retval = "Baidu:" + System.Web.HttpUtility.UrlDecode(findquery(referrer, "wd"), System.Text.Encoding.GetEncoding("GB2312"));
                    break;
                case "so.qq.com":
                    retval = "Soqq:" + System.Web.HttpUtility.UrlDecode(findquery(referrer, "word"), System.Text.Encoding.GetEncoding("GB2312"));
                    break;
                case "search.blogcn.com":
                    retval = "Blogcn:" + System.Web.HttpUtility.UrlDecode(findquery(referrer, "key"), System.Text.Encoding.GetEncoding("GB2312"));
                    break;
                case "cns.3721.com":
                    retval = "3721:" + System.Web.HttpUtility.UrlDecode(findquery(referrer, "name"), System.Text.Encoding.GetEncoding("GB2312"));
                    break;
                case "seek.3721.com":
                    retval = "3721:" + System.Web.HttpUtility.UrlDecode(findquery(referrer, "name"), System.Text.Encoding.GetEncoding("GB2312"));
                    break;
                default:
                    retval = referrer;
                    break;
            }
        }
        else
        {
            //return org referrer
            retval = referrer;
        }
        return retval;
    }

    private string findquery(string orgstr, string queryword)
    {
        int ibegin = -1, iend = -1;
        ibegin = orgstr.IndexOf("?" + queryword + "=");
        if (ibegin == -1)
            ibegin = orgstr.IndexOf("&" + queryword + "=");
        if (ibegin == -1)
            return string.Empty;
        ibegin += queryword.Length;
        ibegin += 2;
        string str = "";
        iend = orgstr.IndexOf("&", ibegin);
        if (iend == -1)
            iend = orgstr.Length;
        if (iend == ibegin + 1)
            return string.Empty;
        return orgstr.Substring(ibegin, iend - ibegin);

    }   
</script>

