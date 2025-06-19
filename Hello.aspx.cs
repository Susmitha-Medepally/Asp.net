using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Onlineshop
{
    public partial class Hello : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["v"] = 0;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int a = int.Parse(TextBox1.Text);
            int b = int.Parse(TextBox2.Text);
            int c = a + b;
            Label1.Text = c.ToString();                                                                                                                                                        
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["c"]= (int)Session["c"]+1;
            Label2.Text = Session["c"].ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Application["s"] = (int)Application["s"]+1;
            Label3.Text = Application["s"].ToString();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["b"] = "Hello world";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Label4.Text = Session["b"].ToString();  
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            ViewState["v"] = (int)ViewState["v"] + 1;
            Label5.Text = ViewState["v"].ToString();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            HttpCookie ht = new HttpCookie("hi");
            ht["uname"] = "admin";
            ht["pwd"] = "india123";
            Response.Cookies.Add(ht); //create cookie in client machine
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            HttpCookie ht1 = Request.Cookies["hi"];
            Label6.Text = ht1["uname"] + ht1["pwd"];
        }

        protected void Button9_Click(object sender, EventArgs e)
        {

        }
    }
}                   