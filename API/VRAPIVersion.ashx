<%@ WebHandler Language="C#" Class="VRAPIVersion" %>

using System;
using System.Web;

public class VRAPIVersion : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.Cache.SetCacheability(HttpCacheability.Public);
        context.Response.BufferOutput = true;
        context.Response.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
        context.Response.Write(DateTime.Now.Day.ToString());
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}