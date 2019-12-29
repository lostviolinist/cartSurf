using cartSurf.Credentials;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cartSurf
{
   
    public partial class CategoryPage : System.Web.UI.Page
    {
        Database db = new Database();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataList7.DataSource = db.GetCategoryItem(Int32.Parse(Request.QueryString["param"]));
            DataList7.DataBind();
            GetName();
        }

        protected void GetName()
        {
            Category.Text = db.GetCategory(Int32.Parse(Request.QueryString["param"])).Tables[0].Rows[0][1].ToString(); 
        }

        public void Image1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton ib = sender as ImageButton;
            Response.Redirect("ItemPage.aspx?param=" + ib.CommandArgument);

        }

        public void imagebutton(String productID)
        {
            Response.Redirect("ItemPage.aspx?param=" + productID);
        }
    }
}