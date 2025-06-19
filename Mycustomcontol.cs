using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Onlineshop
{
    public class Mycustomcontol : WebControl
    {
        public override void RenderControl(HtmlTextWriter writer)
        {
            writer.Write($"<div style=color:red;background:yellow> {text} </div>");
        }
        public string text { get; set; }
    }
}