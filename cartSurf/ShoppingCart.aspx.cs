using System;
using cartSurf.Credentials;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

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
                Load_Cart_Details(UID);
            }

            //Load the shopping cart table
            GridView_Data_Bind();

            //Calculate Subtotal and total
            calculateTotal();
            
        }

        protected void Load_Cart_Details(int uid)
        {

        }

        //Shopping Cart Table
        protected void GridView_Data_Bind()
        {
            //Clear tables before inserting
            cart_dataGridView.DataSource = null;

            int uid = Convert.ToInt32(Session["uid"]);

            cart_dataGridView.AutoGenerateColumns =  true;
            cart_dataGridView.DataSource = ds.CartInventory(uid).Tables[0].DefaultView;
                       
            cart_dataGridView.DataBind();

            //cart_dataGridView.HeaderRow.Cells[0].Attributes["Width"] = "100px";

        }
        
        protected void cart_dataGridView_RowCreated(object sender, GridViewRowEventArgs e)
        {
            //Hide id row
            e.Row.Cells[1].Visible = false;
        }

        //Deleting item from cart
        protected void cart_dataGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int cid = Convert.ToInt32(cart_dataGridView.DataKeys[e.RowIndex].Value);

            ds.deleteItems(cid);

            //Refresh after updating            
            GridView_Data_Bind();
        }
        
        protected void calculateTotal()
        {

        }

        //Check Out button
        protected void BtnCheckOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShippingAdd.aspx");
        }

        //Continue Shopping button
        protected void BtnShopping_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainPage.aspx");
        }
    }
}