using System;
using cartSurf.Credentials;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cartSurf
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        Database ds = new Database();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["username"] == null)
            //{
            //    Response.Redirect("SignUp.aspx?postbackURL=ShoppingCart");
            //}
            int UID = Convert.ToInt32(Session["uid"]);

            if (!IsPostBack)
            {
                load_cart_details(UID);
            }
        }

        protected void load_cart_details(int uid)
        {

        }

        protected void GridViewDataBind()
        {
            //SqlConnection conn = new SqlConnection("Server = LAPTOP-N0HICHP1\\SQLEXPRESS; database=campusone; uid=lero; password=xmuy;");
            //SqlCommand cmd = new SqlCommand("select * from CourseList", conn);
            //SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();

            //adapter.Fill(ds);

            //GridViewCart.DataSource = ds.Tables[0].DefaultView;
            GridViewCart.DataBind();

        }

        protected void BtnCheckOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShippingAdd.aspx");
        }

        protected void GridViewCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            //Refresh after deleting
            GridViewDataBind();
        }
    }
}