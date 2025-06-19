using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Onlineshop.Models;

namespace Onlineshop
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            //india or canada or japan
            //if(args.Value == "INDIA" || args.Value =="CANADA" || args.Value =="USA")
            //{
            //    args.IsValid = true;
            //}
            //else
            //{
            //    args.IsValid=false;
            //}
        }
        onlineshopEntities1 ob = new onlineshopEntities1();
        protected void Button1_Click(object sender, EventArgs e)
        {
            
       
            

            
        }

        protected void Male_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Onlineshop.Models.Register r = new Models.Register();
            r.uname = TextBox1.Text;
            r.password = TextBox2.Text;
            r.email = TextBox6.Text;
            r.nationality = TextBox7.Text;
            r.Age = int.Parse(TextBox4.Text);
            if (Male.Checked)
            {
                r.gender = true;
            }
            if (Female.Checked)
            {
                r.gender = false;
            }
            ob.Registers.Add(r);
            int i = ob.SaveChanges();
            if (i > 0)
            {
                Label2.Text = "Congrats new user created";
            }
        }
    }
    }
