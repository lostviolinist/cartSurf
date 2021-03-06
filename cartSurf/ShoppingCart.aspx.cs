﻿using System;
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
        Database db = new Database();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["username"] == null)
            //{
            //    Response.Redirect("SignUp.aspx?postbackURL=ShoppingCart");
            //}
            int UID = Convert.ToInt32(Session["uid"]);
            gotItem.Visible = false;
            
            //Load the shopping cart table
            GridView_Data_Bind();

            //Calculate Subtotal and total
            showSubtotal(UID);
            
        }

        //Shopping Cart Table
        protected void GridView_Data_Bind()
        {
            //Clear tables before inserting
            DataListCart.DataSource = null;

            int uid = Convert.ToInt32(Session["uid"]);

            DataListCart.DataSource = db.CartInventory(uid).Tables[0].DefaultView;            
            DataListCart.DataBind();

            //cart_dataGridView.HeaderRow.Cells[0].Attributes["Width"] = "100px";

        }
        
        protected void cart_dataGridView_RowCreated(object sender, GridViewRowEventArgs e)
        {
            //Hide id row
            e.Row.Cells[1].Visible = false;
        }

        //Deleting item from cart
        //protected void cart_dataGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //    int cid = Convert.ToInt32(cart_dataGridView.DataKeys[e.RowIndex].Value);

        //    db.DeleteItems(cid);

        //    //Refresh after updating            
        //    GridView_Data_Bind();
        //}
        
        protected void showSubtotal(int uid)
        {
            //If there is item in the cart
            if(db.gotCartItem(uid))
            {
                //Get CartID using UID
                int cartID = db.getCartID(uid);
                gotItem.Visible = true;

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

                //Calculate Total
                Decimal subtotal = ProductPrice.Sum();
                Decimal shippingFee = 10.00m;

                //Calculate total 
                Decimal total = subtotal + shippingFee;

                //Display Result
                LbProduct.Text = Convert.ToString(subtotal);
                LbShipping.Text = Convert.ToString(shippingFee);                
                Lbtotal.Text = Convert.ToString(total);
            }
            else
            {
                LbProduct.Text = "0.00";
                LbShipping.Text = "0.00";
                LbNoItem.Visible = true;
                BtnGoShopping.Visible = true;
                gotItem.Visible = false;
            }
        }

        //Check Out button
        protected void BtnCheckOut_Click(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32(Session["uid"]);

            if(db.gotCartItem(uid))
            {
                Response.Redirect("ShippingAdd.aspx");
            }
            
        }

        protected void deleteItem(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32(Session["uid"]);

            Button btnDelete = sender as Button;

            int pid = Convert.ToInt32(btnDelete.CommandArgument);

            db.DeleteItem(uid, pid);

            GridView_Data_Bind();
        }

        //Continue Shopping button
        protected void BtnShopping_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainPage.aspx");
        }

        protected void BtnGoShopping_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainPage.aspx");
        }

        protected void DataListCart_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


    }
}