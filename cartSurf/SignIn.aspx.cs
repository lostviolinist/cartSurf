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

            if (ds.SignIn(username, password))
            {
                Session["username"] = username;
                Session["uid"] = ds.getUID(username, password);
                Response.Redirect("MainPage.aspx");
            }
            else
            {
                LbSignIn.Text = "The username or password is incorrect";
                LbSignIn.Visible = true;
            }
        }

        protected void signUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

    }
}