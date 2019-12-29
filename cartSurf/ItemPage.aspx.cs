using cartSurf.Credentials;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cartSurf
{
    
    public partial class ItemPage : System.Web.UI.Page
    {
        Database db = new Database();
        protected void Page_Load(object sender, EventArgs e)
        {
            GetProductName();
            GetProductPrice();
            GetProductStock();
            GetProductImage();
        }

        protected void GetProductName()
        {
            ProductName.Text = db.GetItem(Int32.Parse(Request.QueryString["param"])).Tables[0].Rows[0][4].ToString();
        }

        protected void GetProductPrice()
        {
            ProductPrice.Text = db.GetItem(Int32.Parse(Request.QueryString["param"])).Tables[0].Rows[0][7].ToString();
        }
        protected void GetProductStock()
        {
            StockNumber.Text = db.GetItem(Int32.Parse(Request.QueryString["param"])).Tables[0].Rows[0][9].ToString();
        }
        protected void GetProductImage()
        {
            Image2.ImageUrl= db.GetItem(Int32.Parse(Request.QueryString["param"])).Tables[0].Rows[0][10].ToString();
        }
        public void BuyButton_Click(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32(Session["uid"]);
            int pid = Int32.Parse(Request.QueryString["param"]);
            int quantity = Int32.Parse(Quantity.Text); 
            db.InsertItem(uid,  pid,  quantity);
            Response.Redirect("ShoppingCart.aspx");

        }

        public void CartButton_Click(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32(Session["uid"]);
            int pid = Int32.Parse(Request.QueryString["param"]);
            int quantity = Int32.Parse(Quantity.Text);
            db.InsertItem(uid, pid, quantity);
            

        }
    }
}