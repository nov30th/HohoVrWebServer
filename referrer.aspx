<%@ Page Language="C#" EnableViewState="false"%>

<script runat="server">

    protected void Page_Load()
    {
        if (Request.UrlReferrer == null || Request.UrlReferrer.ToString() == "")
        {
            Response.Write("visitors.innerHTML='δ��ȡ�ÿͻ�������';");
            Response.End();
        }
    }
    
</script>

<script language="javascript">
	var qzj_referrer1 = document.referrer.toLowerCase;
	var qzj_referrer2 = document.referrer;
	
	function qzj_pickup(str,word)
	{
		var istart=0;
		var iend=0;
		istart = (str.indexOf("?" + word + "=") == -1 ? str.indexOf("&" + word + "=") : str.indexOf("?" + word + "="));
		if (istart == -1 )
			return "";
		istart = word.length + 2 + istart;
		iend = str.indexOf(istart,"&") - 1 ;
		if (iend == -2 )
			iend = str.length + 1;
		alert(istart);
		alert(iend);
		return (str.substring(istart, iend));
	}
	
	/*
	qzj_referrer = document.referrer.toLowerCase;
	if (qzj_referrer.indexOf("http://") == -1)
	{
		qzj_referrer2 = "";
	}
	else
	{
		if (qzj_referrer.indexOf("http://www.baidu.com") == 7)
		{
			//�ڶ�����
		}
	}
		
		
*/		
	
	
</script>