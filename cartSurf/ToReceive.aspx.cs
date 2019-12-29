using System;
using cartSurf.Credentials;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cartSurf
{
    public partial class ToReceive : System.Web.UI.Page
    {
        Database db = new Database();

        protected void Page_Load(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32(Session["uid"]);
            gotItem.Visible = false;
            empty.Visible = true;

            if (db.gotToReceive(Convert.ToInt32(Session["uid"])))
            {
                gotItem.Visible = true;
                empty.Visible = false;
            }

            displayToReceiveItem(uid);
        }

        protected void displayToReceiveItem(int uid)
        {
            ToReceiveData.DataSource = db.GetToReceive(uid);
            ToReceiveData.DataBind();
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ToShip.aspx");
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ToReceive.aspx");
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ToReview.aspx");
        }
    }
}