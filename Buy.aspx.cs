using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Onlineshop.Models;

namespace Onlineshop
{
    public partial class Buy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["u"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Label1.Text = Request.QueryString["a"];
                Label2.Text = Request.QueryString["b"];
                Label3.Text = Request.QueryString["c"];
                Label4.Text = Request.QueryString["d"];
                Image3.ImageUrl = Request.QueryString["e"];
            }
        }
        onlineshopEntities1 ob = new onlineshopEntities1();
        protected void Button1_Click(object sender, EventArgs e)
        {
            int qty = int.Parse(TextBox1.Text);
            Onlineshop.Models.userorder u = new Models.userorder();
            u.username = Session["u"].ToString();
            u.pid = Request.QueryString["a"];
            u.transdate = DateTime.Now;
            u.qty = qty;
            ob.userorders.Add(u);   
            int i = ob.SaveChanges();
            if (i > 0)
                Label6.Text = "added successsfully";
                
        }
    }
}