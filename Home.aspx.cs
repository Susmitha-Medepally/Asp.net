using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Onlineshop.Models;

namespace Onlineshop
{
    public partial class Home : System.Web.UI.Page
    {
        onlineshopEntities1 m = new onlineshopEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            var res = from t in m.products select t;
            Repeater1.DataSource = res.ToList();
            Repeater1.DataBind();//records will not be displayed until databinding is called

        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}