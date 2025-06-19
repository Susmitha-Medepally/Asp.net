using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Onlineshop.Models;

namespace Onlineshop
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.ChangeLabel = "welcome to login page";
        }
        onlineshopEntities1 ob = new onlineshopEntities1();
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            //this func is called when login button is clicked
            var res = (from t in ob.Registers where t.uname == Login1.UserName && t.password == Login1.Password select t).Count();
            if (res > 0)
            {
                Session["u"] = Login1.UserName;

                Response.Redirect("Product.aspx");
            }
            else
            {
                Login1.FailureText = "Invalid creds";
            }

        }
    }
}