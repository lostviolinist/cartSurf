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

        protected Boolean validatePassword(String pw, String confirm_pw)
        {
            if (pw == confirm_pw) return true;
            else return false;
        }

        protected void BtnSignUp_Click(object sender, EventArgs e)
        {
            String email = TbEmail.Text;
            String username = TbUsername.Text;
            String password = TbPassword.Text;
            String confirm_password = ConfirmPassword.Text;


            Page.Validate();

            if ((Page.IsValid == true) && (validatePassword(password, confirm_password) == true))
            {
                ds.SignUp(email, username, password);
                Response.Redirect("SignUpSuccessful.aspx");
            }
            else if (validatePassword(password, confirm_password) == false)
            {
                LbSignUp.Visible = true;
                LbSignUp.Text = "The password does not match.";
            }
            else
            {
                LbSignUp.Visible = true;
                LbSignUp.Text = "Input Error";

            }
        }

        protected void BtnSignIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignIn.aspx");
        }
    }
}