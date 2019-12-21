using System;
using cartSurf.Credentials;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cartSurf
{
    public partial class MyAccount : System.Web.UI.Page
    {
        Database ds = new Database();

        protected void Page_Load(object sender, EventArgs e)
        {
            int UID = Convert.ToInt32(Session["uid"]);

            if(!IsPostBack)
            {
                load_user_details(UID);
            }
            
        }

        protected void load_user_details(int UID)
        {            
            String[] users = ds.getUsersDetails(UID);

            TbUsername.Text = Convert.ToString(Session["username"]);
            TbEmail.Text = users[1];
            TbFirstName.Text = users[2];
            TbLastName.Text = users[3];
            
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            int UID = Convert.ToInt32(Session["uid"]);
            String Fname = TbFirstName.Text;
            String Lname = TbLastName.Text;
            String email = TbEmail.Text;
            String username = TbUsername.Text;

            ds.MyAccount(UID, Fname, Lname, email, username);
        }
    }
}