using System;
using cartSurf.Credentials;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cartSurf
{
    public partial class ToReview : System.Web.UI.Page
    {
        Database db = new Database();

        protected void Page_Load(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32(Session["uid"]);
            gotItem.Visible = false;
            empty.Visible = false;

            if (db.gotToReview(Convert.ToInt32(Session["uid"])))
            {
                gotItem.Visible = true;                
            }
            else
            {
                empty.Visible = true;
            }

            displayToReviewItem(uid);
        }

        protected void displayToReviewItem(int uid)
        {
            ToReviewData.DataSource = db.GetToReview(uid);
            ToReviewData.DataBind();
        }

        protected void reviewItem(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32(Session["uid"]);

            Button btnReview = sender as Button;

            int odid = Convert.ToInt32(btnReview.CommandArgument);

            Response.Redirect("Review.aspx?odid=" + odid);
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