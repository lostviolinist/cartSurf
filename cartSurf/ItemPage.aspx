<%@ Page Title="Item Page" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="ItemPage.aspx.cs" Inherits="cartSurf.ItemPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="ItemPage.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

     <%--<asp:DataList ID="DataList1" RepeatDirection="Horizontal" runat="server">--%>
    <div class="container item-details">
        <div class="row">
            <div class="col-md-5">
                <div class="row">
                    <div style="margin-top: 5px;">
                        <asp:Image ID="Image2"  runat="server" Width="300px" Height="300px" />

                        
                    </div>
                </div>
                <%--<div class="col-md-5" style="padding-left: 0px; margin-top: 2px;">
                    <div class="flex-container">
                        <div>
                            <img src="Images/sheep.png" />

                        </div>
                        <div>
                            <img src="Images/sheep.png" />

                        </div>
                        <div>
                            <img src="Images/sheep.png" />

                        </div>
                        <div>
                            <img src="Images/sheep.png" />

                        </div>
                        <div>
                            <img src="Images/sheep.png" />

                        </div>
                    </div>
                </div>--%>

            </div>
            <div class="col-md-7">
                <div>
                    <h4><asp:Label ID ="ProductName" Text="" runat="server" ForeColor="Black"></asp:Label> </h4>
                </div>
                
                <div>
                </div>
                <div>
                   RM <asp:Label ID ="ProductPrice" Text="" runat="server" ForeColor="Black"></asp:Label> 
                </div>
                <br>
                <%--<div class="row">
                    <div class="col-md-4">
                        Variation
                    </div>
                    <div class="col-md-8">
                        <div class="flex-container">
                        <div>
                            <button>S</button>

                        </div>
                        <div>
                             <button>M</button>

                        </div>
                        <div>
                             <button>XL</button>

                        </div>
                        <div>
                             <button>XXL</button>

                        </div>
                        
                    </div>
                    </div>
                </div>--%>
                <br>
                <div class="row">
                    <div class="col-md-4">
                        Quantity
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="Quantity" TextMode="Number" runat="server" Text="1"></asp:TextBox>
                        
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        Stock:
                    </div>
                    <div class="col-md-8">
                        <asp:Label ID ="StockNumber" Text="" runat="server" ForeColor="Black"></asp:Label>
                    </div>
                </div>
               
                <br><br><br><br>
                <div style="margin-top:15px;">
                    <div class="row">
                        <div class="flex-container">
                            <div>
                                <asp:Button ID="CartButton" runat="server" Text="Add to Cart" OnClick="CartButton_Click"/>

                               <%--<button class="w3-button w3-white w3-border">Add to Cart</button>--%>
                            </div>
                            <div>
                                <asp:Button ID="BuyButton" runat="server" Text="Buy Now"  OnClick="BuyButton_Click"/>
                                <%--<button class="w3-button w3-border" style="background-color:#FE3939">Buy Now</button>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <%--</asp:DataList>--%>
    <div class="container shop-details">
        <div class="row">
            <div class="flex-container">
                <div>
                    <img src="Images/profile%20icon.png">
                    
                <asp:Label ID="SellerName" runat="server" Text=""></asp:Label> <br><br>
                    <%--<button class="w3-button w3-white w3-border">Chat Now</button>--%>
                    <asp:Button ID="ChatButton" runat="server" Text="Chat Now" OnClick="ChatButton_Click"/>
                </div>
                <div style="margin-left:800px; margin-top:20px;">
                    Rating: 
                <asp:Label ID="Rating" runat="server" Text=""></asp:Label> <br>
                    Items sold:  <asp:Label ID="Items" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
    </div>
    <div class="container product">
        <h4>Product Details</h4>
        <div>
            <p>Product details:<asp:Label ID="ProductDetails" runat="server" Text=""></asp:Label></p>
            
            <p>Brand: <asp:Label ID="ProductBrand" runat="server" Text=""></asp:Label></p>
            
        </div>
    </div>
    <div class="container comment-box">
        <h4>Comments</h4>
        <asp:DataList ID="DataList1" RepeatDirection="Vertical" runat="server">
            <ItemTemplate>
                <table style="margin:50px;  border:1px solid #FE3939; background-color:white; width:1000px;">
                    <tr>
                        <td style="padding:20px;">
                           <%#Eval("Comment") %>

                        </td>
                        </tr>
                    <tr>
                        <td style="padding:20px;">
                             Rating: <%#Eval("Rating") %>
                        </td>
                    </tr>
                    

                </table>


            </ItemTemplate>

        </asp:DataList>
        <%--<div class="container comments">
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
        </div>
        <div class="container comments">
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
        </div>
        <div class="container comments">
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
        </div>
        <div class="container comments">
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
        </div>
        <div class="container comments">
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
        </div>
        <div class="container comments">
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
        </div>
        <div class="container comments">
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
        </div>
        <div class="container comments">
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
        </div>--%>
        
    </div>
</asp:Content>
