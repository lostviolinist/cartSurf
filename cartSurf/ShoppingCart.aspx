<%@ Page Title="CartSurf - Online Shopping Platform" Language="C#" MasterPageFile="~/HeaderFooter.Master" enableEventValidation="false" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="cartSurf.ShoppingCart" %>
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
        <div class="row"  style="padding-right: -30px;">

            <%-- Item and Unit Price --%>
            <div  id="cart" class="col-md-7">
                <div id="cart-bar" class="row">
                    <div class="col-md-12">
                        Sold and shipped by CartSurf
                    </div>
                </div>

                <div class="text-center">
                    <asp:Label ID="LbNoItem" runat="server" Text="Your cart is empty." Visible="false"></asp:Label><br />
                    <asp:Button ID="BtnGoShopping" runat="server" Text="Go Shopping" Visible="false" OnClick="BtnGoShopping_Click"/>
                </div>
                
                <table id="gotItem" runat="server" class="text-center">
                    <tr class="padding-class">
                        <td style="width:20%">
                            <h4 style="color: #FFFFFF;">Picture</h4>
                        </td>
                        <td style="width:20%">
                            <h4>Product</h4>
                        </td>
                        <td style="width:20%">
                            <h4>Variations</h4>
                        </td>
                        <td style="width:20%">
                            <h4>Unit Price</h4>
                        </td>
                        <td style="width:20%">
                            <h4>Quantity</h4>
                        </td>
                        <td style="width:20%; padding-right: 0;">
                            <h4 style="color: #FFFFFF;">Delete</h4>
                        </td>
                    </tr>
                </table>
                <asp:DataList ID="DataListCart" runat="server" Height="28px" OnSelectedIndexChanged="DataListCart_SelectedIndexChanged" Width="645px" BorderColor="Black" GridLines="Both">
                    <ItemTemplate>
                        <table class="text-center">

                            <tr class="padding-class">
                                <td style="width:20%">
                                    <asp:Image ID="Image2" ImageUrl=<%#Eval("ImageUrl") %> runat="server" />
                                </td>
                                <td style="width:20%">
                                    <%#Eval("Product") %>
                                </td>
                                <td style="width:20%">
                                    <%#Eval("Variations") %>
                                </td>
                                <td style="width:20%">
                                    <%#Eval("UnitPrice") %>
                                </td>
                                <td style="width:20%">
                                    <%#Eval("Quantity") %>
                                </td>
                                <td style="width:20%">
                                    <asp:Button ID="BtnDelete" runat="server" Text="Delete" OnClick="deleteItem" CommandArgument= <%#Eval("ID") %>/>
                                </td>
                            </tr>
                        </table>

                    </ItemTemplate>

                </asp:DataList>
            </div>

            <%-- Order Summary --%>
            <h4 class="text-center text-uppercase" style="margin-left: -30px; font-weight: 800;">Order Summary</h4>
            <div id="order-summary" class="col-md-4"">            
                
                <div id="subtotal" class="row row-bordered text-uppercase">
                    <div class=col-md-12>Subtotal</div>
                </div>
                <div class="row">
                    <div class="col-md-7 text-uppercase">From CartSurf</div>
                    <div class="col-md-1 text-uppercase">RM</div>
                    <div class="col-md-3 text-uppercase">                        
                        <asp:Label ID="LbProduct" runat="server" Text="0.00"></asp:Label>
                    </div>                    
                </div>

                <div class="row row-bordered">
                    <div class="col-md-7 text-uppercase">Shipping Fees</div>
                    <div class="col-md-1 text-uppercase">RM</div>
                    <div class="col-md-3 text-uppercase">                        
                        <asp:Label ID="LbShipping" runat="server" Text="0.00"></asp:Label>
                    </div>
                </div>

                <div class="row row-bordered">
                    <div id="total" class="col-md-7 text-uppercase">Total</div>
                    <div class="col-md-1 text-uppercase text-red" style="font-weight: 600">RM</div>
                    <div class="col-md-3 text-uppercase text-red" style="font-weight: 600">                        
                        <asp:Label ID="Lbtotal" runat="server" Text="0.00"></asp:Label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 text-center" style="margin-top: 20px;">
                        <asp:Button ID="BtnCheckOut" runat="server" Text="PROCEED TO CHECKOUT" BackColor="#FE3939" ForeColor="White" Height="40px" Width="80%" OnClick="BtnCheckOut_Click" />
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 text-center" style="margin-top: 5px;">
                        <asp:Button ID="BtnShopping" runat="server" Text="CONTINUE SHOPPING" BackColor="#FFFFFF" ForeColor="#FE3939" Height="40px" Width="80%" OnClick="BtnShopping_Click" />
                    </div>
                </div>
            </div>
        </div>
       

    </div>

</asp:Content>
