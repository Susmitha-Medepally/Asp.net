using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Onlineshop
{
    public class Mycustomhandler : IHttpHandler


        
    {
        public bool IsReusable => true;

        //https://localhost/hello.king
        public void ProcessRequest(HttpContext context)
        {
            //context.Response.Write("<h1> king executed </h1>");
            context.Response.Write("<h1> no access to this file</h1>");
        }
    }
    public class Mycustommodule : IHttpModule
    {
        public void Dispose()
        {
            throw new NotImplementedException();
        }

        //BeginRequest and EndRequest are events
        public void Init(HttpApplication context)
        {
            context.BeginRequest += Context_BeginRequest;
            context.EndRequest += Context_EndRequest;
        }
        //gets called after the page is processed
        private void Context_EndRequest(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Write("End request is called");
            HttpContext.Current.Response.Write("Page  process complete " + DateTime.Now);
            //write caching code here
        }

        //gets called before the page is rendered in browser
        private void Context_BeginRequest(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Write("Begin request is called");
            HttpContext.Current.Response.Write("Page is processed at " +DateTime.Now);
            //write authentication code
        }
    }
}
