using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Onlineshop
{
    public partial class addcontrol : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void Button1_Click1(object sender, EventArgs e)
        {
            int res = int.Parse(TextBox1.Text) + int.Parse(TextBox2.Text);
            Label21.Text = "the sum is : " + res.ToString();
        }
    }
}