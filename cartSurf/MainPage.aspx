<%@ Page Title="Main Page" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="cartSurf.MainPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="MainPage.css" rel="stylesheet" type="text/css" />

    <div class="container">
        <div class="row">
            <div class="col-md-3 menu">
                <div class="row menu">
                    <div class="col-md-12 menu_items">
                        <a href="CategoryPage.aspx"><p>Fashion</p></a>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 menu_items">
                        <a href="CategoryPage.aspx"><p>Electronic</p></a>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 menu_items">
                        <a href="CategoryPage.aspx"><p>Furniture</p></a>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 menu_items">
                        <a href="CategoryPage.aspx"><p>Baby</p></a>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 menu_items">
                        <a href="CategoryPage.aspx"><p>Car Appliances</p></a>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 menu_items">
                        <a href="CategoryPage.aspx"><p>Health and Beauty</p></a>
                    </div>
                </div>

            </div>

            <div class="col-md-9">
                <img src="Images/animations-e-commerce.png" id="banner" />
            </div>

        </div>


    </div>
    <div style="margin-left:25px; color:#FE3939">
        <h3>New picks</h3>
    </div>

    <div class=" flex-container">
       
        <div>
            <a href="ItemPage.aspx"><img src=""/></a>
            <br>
            <asp:Label ID="LbProductName" Text="" runat="server" ForeColor="Black"></asp:Label>
           
        </div>
      <div>
            <a href="ItemPage.aspx"><img src=""/></a>
            <br>
            <asp:Label ID="LbProductName2" Text="" runat="server" ForeColor="Black"></asp:Label> 
          
          
        </div>
        <div>
            <a href="ItemPage.aspx"><img src=""/></a>
            <br>
            <asp:Label ID="LbProductName3" Text="" runat="server" ForeColor="Black"></asp:Label>
          
        </div>
        <div>
            <a href="ItemPage.aspx"><img src=""/></a>
            <br>
            <asp:Label ID="LbProductName4" Text="" runat="server" ForeColor="Black"></asp:Label>
           
        </div>
        <div>
            <a href="ItemPage.aspx"><img src=""/></a>
            <br>
            <asp:Label ID="LbProductName5" Text="" runat="server" ForeColor="Black"></asp:Label>
           
        </div>
        <div>
            <a href="ItemPage.aspx"><img src=""/></a>
            <br>
            <asp:Label ID="LbProductName6" Text="" runat="server" ForeColor="Black"></asp:Label>
           
        </div>
        <div>
            <a href="ItemPage.aspx"><img src=""/></a>
            <br>
            <asp:Label ID="LbProductName7" Text="" runat="server" ForeColor="Black"></asp:Label>
           
        </div>
        <div>
            <a href="ItemPage.aspx"><img src=""/></a>
            <br>
            <asp:Label ID="LbProductName8" Text="" runat="server" ForeColor="Black"></asp:Label>
           
        </div>
        <div>
            <a href="ItemPage.aspx"><img src=""/></a>
            <br>
            <asp:Label ID="LbProductName9" Text="" runat="server" ForeColor="Black"></asp:Label>
           
        </div>

         

        
    </div>

    <div style="margin-left:25px;color:#FE3939">
        <h3>Recently viewed</h3>
    </div>

    <div class=" flex-container">
       
        <div>
            <a href="ItemPage.aspx"><img src=""/></a>
            <br>
            <asp:Label ID="LbProductName10" Text="" runat="server" ForeColor="Black"></asp:Label>
           
        </div>
      <div>
            <a href="ItemPage.aspx"><img src=""/></a>
            <br>
            <asp:Label ID="LbProductName11" Text="" runat="server" ForeColor="Black"></asp:Label> 
          
          
        </div>
        <div>
            <a href="ItemPage.aspx"><img src=""/></a>
            <br>
            <asp:Label ID="LbProductName12" Text="" runat="server" ForeColor="Black"></asp:Label>
          
        </div>
        <div>
            <a href="ItemPage.aspx"><img src=""/></a>
            <br>
            <asp:Label ID="LbProductName13" Text="" runat="server" ForeColor="Black"></asp:Label>
           
        </div>
        <div>
            <a href="ItemPage.aspx"><img src=""/></a>
            <br>
            <asp:Label ID="LbProductName14" Text="" runat="server" ForeColor="Black"></asp:Label>
           
        </div>
        <div>
            <a href="ItemPage.aspx"><img src=""/></a>
            <br>
            <asp:Label ID="LbProductName15" Text="" runat="server" ForeColor="Black"></asp:Label>
           
        </div>
        <div>
            <a href="ItemPage.aspx"><img src=""/></a>
            <br>
            <asp:Label ID="LbProductName16" Text="" runat="server" ForeColor="Black"></asp:Label>
           
        </div>
        <div>
            <a href="ItemPage.aspx"><img src=""/></a>
            <br>
            <asp:Label ID="LbProductName17" Text="" runat="server" ForeColor="Black"></asp:Label>
           
        </div>
        <div>
            <a href="ItemPage.aspx"><img src=""/></a>
            <br>
            <asp:Label ID="LbProductName18" Text="" runat="server" ForeColor="Black"></asp:Label>
           
        </div>

         

        
    </div>


        
    





</asp:Content>
