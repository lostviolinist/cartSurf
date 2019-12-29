using System;
using cartSurf.Credentials;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cartSurf
{
    public partial class Review : System.Web.UI.Page
    {
        Database db = new Database();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Clear tables before inserting
            DataReview.DataSource = null;

            int uid = Convert.ToInt32(Session["uid"]);
            int odid = Convert.ToInt32(Request.QueryString["odid"]);

            DataReview.DataSource = db.reviewItem(odid).Tables[0].DefaultView;
            DataReview.DataBind();
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            int odid = Convert.ToInt32(Request.QueryString["odid"]);
            int productID = db.getProductID(odid);            
            String comment = TbReview.Text;
            int rating = Convert.ToInt32(DropDownRating.Text);

            Page.Validate();

            if(Page.IsValid)
            {
                db.WriteReview(productID, odid, comment, rating);
            }

            Response.Redirect("ToReview.aspx");
        }
    }
}