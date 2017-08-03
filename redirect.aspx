<%@ Page Language="C#" EnableViewState="false" %>

<script runat="server">
    protected void Page_Load()
    {
        Response.Write("<html><body><script type='text/javascript'>\nwindow.location='" + Request.RawUrl + "';\n</scr" + "ipt></body></html>");
    }
</script>

