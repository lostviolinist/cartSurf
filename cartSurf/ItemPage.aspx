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
                    January.myo0o <br><br>
                    <button class="w3-button w3-white w3-border">Chat Now</button>
                </div>
                <div style="margin-left:800px; margin-top:20px;">
                    Rating: 4.5 <br>
                    Items sold: 1000
                </div>
            </div>
        </div>
    </div>
    <div class="container product">
        <h4>Product Details</h4>
        <div>
            <p>Product details:</p>
            <p>Brand: </p>
            <p><img src=""></p>
        </div>
    </div>
    <div class="container comment-box">
        <h4>Comments</h4>
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
        </div>
        <div class="container comments">
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
        </div>
        <div class="container comments">
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
        </div>
        <div class="container comments">
            <div>
                <textarea rows="4" cols="120" placeholder="Write a comment.."></textarea>
            </div>
            <div>
                <button class="w3-button w3-border" style="background-color:#FE3939; float:right; margin-top:10px;">Comment</button>
            </div>
            
        </div>
    </div>
</asp:Content>
