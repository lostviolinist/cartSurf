<%@ Page Title="CartSurf - Online Shopping Platform" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="ShippingAdd.aspx.cs" Inherits="cartSurf.ShippingAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <link href="ShoppingCart.css" rel="stylesheet" type="text/css" />
 <link href="ShippingAdd.css" rel="stylesheet" type="text/css" />


    <div class="checkout-progress-item text-center">
        <span><i class="fas fa-shopping-cart fa-2x"></i> Shopping Cart</span>
        <span class="active">---------<i class="fas fa-truck fa-2x"></i> Shipping Address</span>
        <span>---------<i class="far fa-credit-card fa-2x"></i> Make Payment</span>
    </div>
    
    <div class="container">
        <div class="row">

            <%-- Shipping Address and Payment --%>
            <div  id="cart" class="col-md-7 stepper linear">

                <%-- Step 1: Select Shipping Address --%>
                <div id="cart-bar" class="row">
                    <div class="col-md-12 text-center">
                        <p>Step 1: Select Shipping Address</p>
                        <p style="float:right"><asp:Label ID="LbEdit1" runat="server" Text="Edit" Visible="False" ForeColor="White"></asp:Label></p>
                    </div>
                </div>

                <%--1. Receiver--%>
                <div class="row">
                    <div class="col-md-2 text-uppercase">
                        <asp:Label ID="LbReceiver" CssClass="required" runat="server" Text="Receiver"></asp:Label>
                    </div>
                    <div class="col-md-10 text-uppercase">
                        <asp:TextBox ID="TbReceiver" runat="server" Width="100%" Placeholder="Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="NameValidator" runat="server" ErrorMessage="Name is a required field." ControlToValidate="TbReceiver" ForeColor="#FE3939"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <%--2. Address--%>
                <div class="row">
                    <div class="col-md-2 text-uppercase">
                        <asp:Label ID="LbAddress" CssClass="required" runat="server" Text="Address"></asp:Label>
                    </div>
                    <div class="col-md-10 text-uppercase">
                        <asp:TextBox ID="AddLine1" runat="server" Width="100%" Placeholder="e.g No 13 1st floor Blok G"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="AddLine1Validator" runat="server" ErrorMessage="Add is a required field." ControlToValidate="AddLine1" ForeColor="#FE3939"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-2 text-uppercase">
                    </div>
                    <div class="col-md-10 text-uppercase">
                        <asp:TextBox ID="AddLine2" runat="server" Width="100%" Placeholder="e.g Loco Apartment"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="AddLine2Validator" runat="server" ErrorMessage="Add is a required field." ControlToValidate="AddLine2" ForeColor="#FE3939"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-2 text-uppercase">                     
                    </div>
                    <div class="col-md-10 text-uppercase">
                        <asp:TextBox ID="AddLine3" runat="server" Width="100%" Placeholder="e.g Taman Kinrara"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="AddLine3Validator" runat="server" ErrorMessage="Add is a required field." ControlToValidate="AddLine3" ForeColor="#FE3939"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <%--3. City--%>
                <div class="row">
                    <div class="col-md-2 text-uppercase">
                        <asp:Label ID="LbCity" CssClass="required" runat="server" Text="City"></asp:Label>
                    </div>
                    <div class="col-md-10 text-uppercase">
                        <asp:TextBox ID="TbCity" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="CityValidator" runat="server" ErrorMessage="City is a required field." ControlToValidate="TbCity" ForeColor="#FE3939"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <%--4. Postcode--%>
                <div class="row">
                    <div class="col-md-2 text-uppercase">
                        <asp:Label ID="LbPostCode" CssClass="required" runat="server" Text="Postcode"></asp:Label>
                    </div>
                    <div class="col-md-10 text-uppercase">
                        <asp:TextBox ID="TbPostcode" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PostcodeValidator" runat="server" ErrorMessage="Postcode is a required field." ControlToValidate="TbPostcode" ForeColor="#FE3939"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <%--5. State--%>
                <div class="row">
                    <div class="col-md-2 text-uppercase">
                        <asp:Label ID="LbState" CssClass="required" runat="server" Text="State"></asp:Label>
                    </div>
                    <div class="col-md-10 text-uppercase">
                        <asp:TextBox ID="TbState" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="StateValidator" runat="server" ErrorMessage="State is a required field." ControlToValidate="TbState" ForeColor="#FE3939"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <%--6. Phone number--%>
                <div class="row">
                    <div class="col-md-2 text-uppercase">
                        <asp:Label ID="LbPhoneNo" CssClass="required" runat="server" Text="Phone No"></asp:Label>
                    </div>
                    <div class="col-md-10 text-uppercase">
                        <asp:TextBox ID="TbPhoneNo" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PhoneNoValidator" runat="server" ErrorMessage="Phone No is a required field." ControlToValidate="TbPhoneNo" ForeColor="#FE3939"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <%--7. Save Button--%>
                <div class="row" style="margin-top: 20px" id="btnNext">
                    <div class="col-md-12 text-center">
                        <asp:Button ID="BtnSave" class="waves-effect waves-dark next-step" runat="server" Text="Next" BackColor="#FE3939" ForeColor="White" Height="40px" Width="20%" OnClick="BtnSave_Click" onClientClick="toggleDeliv()"/>
                    </div>
                </div>

                <%-- Step 2: Select Delivery Courier --%>
                <div id ="delivCourier">
                    <div class="row payment-bar">
                        <div class="col-md-12 text-center">
                            <p>Step 2: Select Delivery Courier</p>                        
                        </div>
                    </div>

                    <div class="row">
                        <div id="courier" class ="col-md-12">
                            <asp:RadioButtonList ID="courierService" runat="server" CellSpacing="0" CellPadding="0" AppendDataBoundItems="true"
                            RepeatDirection="Horizontal">
                            <asp:ListItem  runat="server"  Text="<img src='Image/gdex.png' alt='GDEX' title='GDEX'>"  Value="GDEX" />
                            <asp:ListItem runat="server"  Text="<img src='Image/poslaju.png' alt='PosLaju' title='PosLaju'>"  Value="PosLaju" />
                            </asp:RadioButtonList>
                        </div>
                    </div>
                </div>

                <%-- Step 3: Enter Payment Details --%>
                <div id="cardDetails">
                    <div class="row payment-bar">
                        <div class="col-md-12 text-center">
                            <p>Step 3: Enter Payment Details</p>                        
                        </div>
                    </div>

                    <%-- 1. Card No --%>
                    <div class="row">
                        <div class="col-md-2 text-uppercase">
                            <asp:Label ID="LbCardNo" CssClass="required" runat="server" Text="Card No"></asp:Label>
                        </div>
                        <div class="col-md-10 text-uppercase">
                            <asp:TextBox ID="TbCardNo" runat="server" Width="100%" Placeholder="Card No"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="CardNoValidator" runat="server" ErrorMessage="Card No is a required field." ControlToValidate="TbCardNo"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <%-- 2. Expiry Date --%>
                    <div class="row">
                        <div class="col-md-2 text-uppercase">
                            <asp:Label ID="LbExpiry" CssClass="required" runat="server" Text="Valid Date"></asp:Label>
                        </div>
                        <div class="col-md-10 text-uppercase">
                            <asp:TextBox ID="TbExpiry" runat="server" Width="100%" Placeholder="Valid Date"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ExpiryValidator" runat="server" ErrorMessage="Valid date is a required field." ControlToValidate="TbExpiry"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <%-- 3. INSERT CVV --%>
                    <div class="row">
                        <div class="col-md-2 text-uppercase">
                            <asp:Label ID="LbCVV" CssClass="required" runat="server" Text="CVV"></asp:Label>
                        </div>
                        <div class="col-md-10 text-uppercase">
                            <asp:TextBox ID="TbCVV" runat="server" Width="100%" Placeholder="CVV"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="CVVValidator" runat="server" ErrorMessage="CVV is a required field." ControlToValidate="TbCVV"></asp:RequiredFieldValidator>
                        </div>
                    </div>
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
                        <asp:Button ID="BtnCheckOut" runat="server" Text="SECURE CHECKOUT" BackColor="#FE3939" ForeColor="White" Height="40px" Width="80%" />
                    </div>
                </div>
            </div>
        </div>

    </div>

     <%--<script type="text/javascript" src="Stepper.min.js"></script>--%>
     <script type="text/javascript" src="shipAdd.js"></script>
</asp:Content>
