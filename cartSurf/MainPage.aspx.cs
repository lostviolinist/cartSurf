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

            DataList1.DataSource = db.GetProducts();
            DataList1.DataBind();

        }

        public void Image1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ItemPage.aspx?param=ProductID");

        }
    }
}