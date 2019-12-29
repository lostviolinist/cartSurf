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
        int sid;
        protected void Page_Load(object sender, EventArgs e)
        {
            GetProductName();
            GetProductPrice();
            GetProductStock();
            GetProductImage();
            GetSellerName();
            GetSellerRating();
            GetSellerItems();
            GetProductDesc();
            GetProductBrand();
            GetComments();
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
        protected void GetProductDesc()
        {
            ProductDetails.Text = db.GetItem(Int32.Parse(Request.QueryString["param"])).Tables[0].Rows[0][5].ToString();
        }
        protected void GetProductBrand()
        {
            ProductBrand.Text = db.GetItem(Int32.Parse(Request.QueryString["param"])).Tables[0].Rows[0][5].ToString();
        }
        protected void GetSellerName()
        {
            sid = Convert.ToInt32(db.GetItem(Int32.Parse(Request.QueryString["param"])).Tables[0].Rows[0][1]);
            SellerName.Text = db.GetSellerName(sid);
        }
       
        protected void GetSellerRating()
        {
            float rating = float.Parse(db.GetSeller(sid).Tables[0].Rows[0][2].ToString());
            Rating.Text = rating.ToString();
        }

        protected void GetSellerItems()
        {
            int items = (int)db.GetSeller(sid).Tables[0].Rows[0][1];
            Items.Text = items.ToString();
        }

        protected void GetComments()
        {
          DataList1.DataSource = db.GetReviewsFromProductID(Int32.Parse(Request.QueryString["param"]));
            DataList1.DataBind();
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

        public void ChatButton_Click(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32(Session["uid"]);
       
            //int quantity = Int32.Parse(SellerName.Text);
            
            Response.Redirect("MessagePage.aspx?param="+sid);

        }
    }
}