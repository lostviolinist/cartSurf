using cartSurf.Credentials;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cartSurf
{
    public partial class MainPage : System.Web.UI.Page
    {
        Database db = new Database();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataList1.DataSource = db.GetProducts();
                DataList1.DataBind();
                DataList2.DataBind();
            }
           

        }

        public void Image1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton ib = sender as ImageButton;
            Response.Redirect("ItemPage.aspx?param="+ib.CommandArgument);

        }

        public void imagebutton(String productID)
        {
            Response.Redirect("ItemPage.aspx?param=" + productID);
        }
    }
}