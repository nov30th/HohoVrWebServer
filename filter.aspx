<%@ Page Language="C#" EnableViewState="false" EnableSessionState="false" %>
    document.write("<div id=\"countref\"></div>");
	var linkaddress=new Array(4);
	var counttimes=0;
	linkaddress[0]="u/------";
	linkaddress[1]="u//------";
	linkaddress[2]="//------";
	linkaddress[3]="//------";
	function fliterlink()
	{
		var j=0,k=0;
		var tables=document.getElementsByTagName("A");
		for (j = 0; j < tables.length; j++)
		{
			var cells = tables[j].href;
			for (k = 0; k < 4; k++)
			{
				if (cells.indexOf(linkaddress[k]) != -1)
					tables[j].href = "http://www.oyeah.com.cn/";
			}
			if (cells == "http://www.blogcn.com/")
					tables[j].href = "http://www.nov30th.com/vr/";
		}

		j=0;
		k=0;
		tables=document.getElementsByTagName("img");
		for (j = 0; j < tables.length; j++)
		{
			var cells = tables[j].src;
				if (cells.indexOf("toolbar_snow.gif") != -1)
					tables[j].src = "http://www.nov30th.com/vr/image/toolbar_snow.gif";
		}
	
		setTimeout("workfun();",5000);
	}
	function workfun()
	{
	    document.getElementById("countref").innerHTML = ("<img src=http://login.blogcn.com/blog/count_lg.asp?blogid=876445&styleid=2&" + escape(Date()) + (counttimes++) +" width=0 height=0 border=0>");
	    //var mytime=setTimeout("workfun();",2000);
	}
	setTimeout("fliterlink();",1);
