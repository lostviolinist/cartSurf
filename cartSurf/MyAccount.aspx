<%@ Page Title="" Language="C#" MasterPageFile="~/Profile.master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="cartSurf.MyAccount" %>

<asp:Content ID="Content" ContentPlaceHolderID="ProfileContent" runat="server">
    <link href="Order.css" rel="stylesheet" type="text/css" />
    <link href="MyAccount.css" rel="stylesheet" type="text/css" />

    <div class="col-md-8 mx-auto text-left">
        <h1 style="font-weight: 800;">My Account</h1>
        <p>Manage and Protect your Account</p>
        <hr />
        <br />
   </div>

    <div class="row" style="background-color: #FFFFFF; padding: 45px 0;">
        <div class="col-md-1 text-left">
            <h4 class="details-style">Name</h4>
        </div>
        <div class="col-md-6 text-left">
            <asp:TextBox ID="Name" class="textbox-style" runat="server" placeholder=""></asp:TextBox>        
        </div>

        <div class="col-md-1 text-left" style="margin-top: 20px;">
            <h4 class="details-style">Email</h4>
        </div>
        <div class="col-md-6 text-left" style="margin-top: 20px;">
            <asp:TextBox ID="Email" class="textbox-style" runat="server" placeholder=""></asp:TextBox>
        </div>
        
        <div class="col-md-1 text-left" style="margin-top: 20px;">
            <h4 class="details-style">Username</h4>
        </div>
        <div class="col-md-6 text-left" style="margin-top: 20px;">
            <asp:TextBox ID="Username" class="textbox-style" runat="server" placeholder=""></asp:TextBox>
        </div>
        
        <div class="col-md-1 text-left" style="margin-top: 20px;">
            <h4 class="details-style">Password</h4>
        </div>
        <div class="col-md-6 text-left" style="margin-top: 20px;">
            <asp:TextBox ID="Password" class="textbox-style" runat="server" placeholder=""></asp:TextBox>
        </div>

        <div class="col-md-1 text-left" style="margin-top: 20px;">
            
        </div>
        <div class="col-md-6 text-left" style="margin-top: 20px;">
            <asp:Button ID="ButtonSave" class="save-btn" runat="server" Text="Save" />
        </div>
    </div>



</asp:Content>