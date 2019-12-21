using System;
using cartSurf.Credentials;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cartSurf
{
    public partial class SignIn : System.Web.UI.Page
    {
        Database ds = new Database();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //SignIn Btn
        protected void BtnSignIn_Click(object sender, EventArgs e)
        {
            String username = TbUsername.Text;
            String password = TbPassword2.Text;

            if (username.Length == 0) nameSigninValidator.Text = "Name is a required field";
            if (password.Length == 0) passwordSigninValidator.Text = "Password is a required field";

            if (ds.Signin(username, password))
            {
                Session["username"] = username;
                Session["uid"] = ds.getUID(username, password);
                Response.Redirect("MainPage.aspx");
            }
            else
            {
                LbSignIn.Text = "Not Match.";
                LbSignIn.Visible = true;
            }
        }
        
        //ugly Sign Up Button
        protected void Button1_Click(object sender, EventArgs e)
        {
            String email = TextBox2.Text;
            String username = TextBox1.Text;
            String password = TextBox3.Text;

            //if ()
            if (email.Length == 0) Label2.Text = "Email is a required field";
            if (username.Length == 0) Label1.Text = "Name is a required field";
            if (password.Length == 0) Label3.Text = "Password is a required field";

        }
    }
}