<%@ Page Title="CartSurf - Online Shopping Platform" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="cartSurf.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <link href="ShoppingCart.css" rel="stylesheet" type="text/css" />

    <div class="checkout-progress-item text-center">
        <span class="active"><i class="fas fa-shopping-cart fa-2x"></i> Shopping Cart</span>
        <span>---------<i class="fas fa-truck fa-2x"></i> Shipping Address</span>
        <span>---------<i class="far fa-credit-card fa-2x"></i> Make Payment</span>
    </div>
    
    <div class="container">
        <div class="row">

            <%-- Item and Unit Price --%>
            <div  id="cart" class="col-md-7">
                <div id="cart-bar" class="row">
                    <div class="col-md-12">
                        Sold and shipped by CartSurf
                    </div>
                </div>

                <div class="row row-bordered">
                    <div class="col-md-5 text-uppercase">Product</div>
                    <div class="col-md-2 text-uppercase">Unit Price</div>
                    <div class="col-md-2 text-uppercase">Quantity</div>
                    <div class="col-md-2 text-uppercase">Total</div>
                    <div class="col-md-1 text-uppercase"></div>
                </div>

                <div class="row" style="margin: 30px 0;">
                    <div class="col-md-5"></div>
                    <div class="col-md-2 text-uppercase">Unit Price</div>
                    <div class="col-md-2 text-uppercase">Quantity</div>
                    <div class="col-md-2 text-uppercase">Total</div>
                    <div class="col-md-1 text-uppercase"><i class="fas fa-trash"></i></div>
                </div>
            </div>

            <%-- Order Summary --%>
            <h4 class="text-center text-uppercase" style="margin-left: -20px;">Order Summary</h4>
            <div id="order-summary" class="col-md-4">
                
                <div id="subtotal" class="row row-bordered text-uppercase">
                    <div class=col-md-12>Subtotal</div>
                </div>
                <div class="row">
                    <div class="col-md-7 text-uppercase">From CartSurf</div>
                    <div class="col-md-4 text-uppercase">RM </div>
                </div>

                <div class="row row-bordered">
                    <div class="col-md-7 text-uppercase">Shipping Fees</div>
                    <div class="col-md-4 text-uppercase">RM </div>
                </div>

                <div class="row row-bordered">
                    <div id="total" class="col-md-7 text-uppercase">Total</div>
                    <div class="col-md-4 text-uppercase text-red" style="font-weight: 600">RM </div>
                </div>

                <div class="row">
                    <div class="col-md-12 text-center" style="margin-top: 20px;">
                        <asp:Button ID="BtnCheckOut" runat="server" Text="PROCEED TO CHECKOUT" BackColor="#FE3939" ForeColor="White" Height="40px" Width="80%" OnClick="BtnCheckOut_Click" />
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 text-center" style="margin-top: 5px;">
                        <asp:Button ID="BtnShopping" runat="server" Text="CONTINUE SHOPPING" BackColor="#FFFFFF" ForeColor="#FE3939" Height="40px" Width="80%" />
                    </div>
                </div>
            </div>
        </div>
       

    </div>

</asp:Content>
