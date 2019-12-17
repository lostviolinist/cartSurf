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

        protected void BtnSignIn_Click(object sender, EventArgs e)
        {
            String username = TbUsername.Text;
            String password = TbPassword2.Text;

            if (ds.Login(username, password))
            {
                Response.Redirect("");
            }
            else
            {

            }
        }
    }
}