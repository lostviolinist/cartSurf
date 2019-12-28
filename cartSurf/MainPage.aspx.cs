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
            get_product_name();
            
        }

        protected void get_product_name()
        {
            
            LbProductName.Text = db.GetProductName(1);
            LbProductName2.Text = db.GetProductName(2);
            LbProductName3.Text = db.GetProductName(3);
            LbProductName4.Text = db.GetProductName(4);
            LbProductName5.Text = db.GetProductName(5);
            LbProductName6.Text = db.GetProductName(6);
            LbProductName7.Text = db.GetProductName(7);
            LbProductName8.Text = db.GetProductName(8);
            LbProductName9.Text = db.GetProductName(9);
            LbProductName10.Text = db.GetProductName(10);
            LbProductName11.Text = db.GetProductName(11);
            LbProductName12.Text = db.GetProductName(12);
            LbProductName13.Text = db.GetProductName(13);
            LbProductName14.Text = db.GetProductName(14);
            LbProductName15.Text = db.GetProductName(15);
            LbProductName16.Text = db.GetProductName(16);
            LbProductName17.Text = db.GetProductName(17);
            LbProductName18.Text = db.GetProductName(19);
        }

        
    }
}