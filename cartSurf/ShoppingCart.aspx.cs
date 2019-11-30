using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cartSurf
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["username"] == null)
            //{
            //    Response.Redirect("SignUp.aspx?postbackURL=ShoppingCart");
            //}
        }

        protected void BtnCheckOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShippingAdd.aspx");
            //postbackurl?
        }
    }
}