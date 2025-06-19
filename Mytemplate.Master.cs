using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Onlineshop
{
    public partial class Mytemplate : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //using master poperty you can overwrite the setiing of master page
            ChangeLabel = "hello";
        }
        public string ChangeLabel
        {
            set { Label1.Text = value; }
        }
    }
}