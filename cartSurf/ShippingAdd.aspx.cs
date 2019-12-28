using System;
using cartSurf.Credentials;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cartSurf
{    
    public partial class ShippingAdd : System.Web.UI.Page
    {
        Database db = new Database();
        protected void Page_Load(object sender, EventArgs e)
        {
            int UID = Convert.ToInt32(Session["uid"]);

            if(!IsPostBack)
            {
                delivCourier.Visible = false;
                cardDetails.Visible = false;
            }
            
            //Calculate Subtotal and total
            displaySubtotal(UID);

            displayAdd(UID);
        }

        protected void displaySubtotal(int uid)
        {
            //If there is a cart
            if (db.getCartID(uid) > 0)
            {
                //Get CartID using UID
                int cartID = db.getCartID(uid);

                List<List<int>> productQuantity = db.getCartItemDetails(cartID);

                int noOfItem = db.getRowNum(cartID);

                Decimal price;
                List<Decimal> ProductPrice = new List<Decimal>();

                //UnitPrice * Quantity
                for (int i = 0; i < noOfItem; i++)
                {
                    int pid = productQuantity[i][0];
                    int Quantity = productQuantity[i][1];

                    price = db.getProductPrice(pid);
                    ProductPrice.Add(price * (Convert.ToDecimal(Quantity)));
                }

                Decimal subtotal = ProductPrice.Sum();
                Decimal shippingFee = 10.00m;

                //Calculate total 
                Decimal total = subtotal + shippingFee;

                //Display Result
                LbProduct.Text = Convert.ToString(subtotal);
                LbShipping.Text = Convert.ToString(shippingFee);
                LbTotal.Text = Convert.ToString(total);
            }
            else
            {
                LbProduct.Text = "0.00";
            }
        }

        protected void displayAdd(int uid)
        {
            if (db.gotAddress(uid) == true)
            {
                String[] addDetails = db.getAddDetails(uid);

                TbReceiver.Text = addDetails[0];
                AddLine1.Text = addDetails[1];
                AddLine2.Text = addDetails[2];
                AddLine3.Text = addDetails[3];
                TbCity.Text = addDetails[4];
                TbPostcode.Text = addDetails[5];
                TbState.Text = addDetails[6];
                TbCountry.Text = addDetails[7];
                TbPhoneNo.Text = addDetails[8];
            }
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {            
            String name = TbReceiver.Text;
            String add1 = AddLine1.Text;
            String add2 = AddLine2.Text;
            String add3 = AddLine3.Text;
            String city = TbCity.Text;
            int code = Convert.ToInt32(TbPostcode.Text);
            String state = TbState.Text;
            String country = TbCountry.Text;
            String phone = TbPhoneNo.Text;
            int uid = Convert.ToInt32(Session["uid"]);

            Page.Validate();

            if(Page.IsValid)
            {
                LbSave.Text = "Address Added Successfully";                          

                //Show next section
                delivCourier.Visible = true;

                //Hide Save button
                BtnSave.Visible = false;
                LbEdit1.Visible = true;

                //if(db.gotAddress(uid) == false)
                //{
                //    db.insertAdd(name, add1, add2, add3, city, code, state, country, phone, uid);
                //}
                //else
                //{
                //    db.updateAdd(name, add1, add2, add3, city, code, state, country, phone, uid);
                //}                
            }
        }
    }
}