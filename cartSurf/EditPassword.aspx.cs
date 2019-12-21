using System;
using cartSurf.Credentials;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cartSurf
{
    public partial class EditPassword : System.Web.UI.Page
    {
        Database ds = new Database();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LbCurrent.Visible = false;
                LbConfirm.Visible = false;
                LbSuccessful.Visible = false;
            }
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            
            int UID = Convert.ToInt32(Session["uid"]);
            String currentp = TbCurrentPassword.Text;

            Boolean current = ds.Password(UID, currentp);

            if (!current)
            {
                LbCurrent.Visible = true;
            }
            else
            {
                String New = TbNewPassword.Text;
                String Confirm = TbConfirm.Text;

                if (New != Confirm)
                {
                    LbConfirm.Visible = true;
                    LbConfirm.Text = "Your password and confirmation password do not match";
                }
                else
                {
                    ds.NewPassword(UID, New);
                    LbCurrent.Visible = false;
                    LbSuccessful.Visible = true;
                }
            }
        }
    }
}