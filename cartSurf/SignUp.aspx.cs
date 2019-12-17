using cartSurf.Credentials;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cartSurf
{
    public partial class SignUp : System.Web.UI.Page
    {
        Database ds = new Database();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Our_BtnSubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");

        }

        protected void BtnSignUpEmail_Click(object sender, EventArgs e)
        {
            String username = tbMail.Text;
            String password = TextBox1.Text;

            if (ds.Login(username, password))
            {
                Response.Redirect("ShippingAdd.aspx");
            }
            else Response.Redirect("Order.aspx");
        }
    }
}