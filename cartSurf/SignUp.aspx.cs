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
            LbEmail.Visible = false;
            LbUsername.Visible = false;
            LbPassword.Visible = false;
            LbconfirmPassword.Visible = false;
            LbSignUp.Visible = false;
        }

        protected Boolean validatePassword(String pw, String confirm_pw)
        {
            if (pw == confirm_pw) return true;
            else return false;
        }

        protected Boolean validateEmptySpace()
        {
            if( (string.IsNullOrWhiteSpace(TbEmail.Text)) || (string.IsNullOrWhiteSpace(TbUsername.Text))
                || (string.IsNullOrWhiteSpace(TbPassword.Text)) || (string.IsNullOrWhiteSpace(ConfirmPassword.Text)) )
            {
                if (string.IsNullOrWhiteSpace(TbEmail.Text)) LbEmail.Visible = true;
                if (string.IsNullOrWhiteSpace(TbUsername.Text)) LbUsername.Visible = true;
                if (string.IsNullOrWhiteSpace(TbPassword.Text)) LbPassword.Visible = true;
                if (string.IsNullOrWhiteSpace(ConfirmPassword.Text)) LbconfirmPassword.Visible = true;

                return false;
            }
            else
            {
                return true;
            }
        }

        protected void BtnSignUp_Click(object sender, EventArgs e)
        {
            String email = TbEmail.Text;
            String username = TbUsername.Text;
            String password = TbPassword.Text;
            String confirm_password = ConfirmPassword.Text;

            Boolean NotEmpty = validateEmptySpace();
            
            if ((NotEmpty == true) && (validatePassword(password, confirm_password) == true))
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