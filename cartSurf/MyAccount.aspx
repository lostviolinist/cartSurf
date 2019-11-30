<%@ Page Title="CartSurf - Online Shopping Platform" Language="C#" MasterPageFile="~/Profile.master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="cartSurf.MyAccount" %>

<asp:Content ID="Content" ContentPlaceHolderID="ProfileContent" runat="server">

    <link href="MyAccount.css" rel="stylesheet" type="text/css" />

    <div class="row">
        <div class="col-md-12 mx-auto text-left">
            <h1 style="font-weight: 800;">My Account</h1>
            <p>Manage and Protect your Account</p>
            <hr style="border: 1px solid #FE3939;" />
            <br />
       </div>
    </div>


    <div class="row">
        <div class="col-md-2 text-left">
            <h4 class="details-style">Name</h4>
        </div>
        <div class="col-md-10 text-left">
            <asp:TextBox ID="TbName" class="textbox-style" runat="server" placeholder=""></asp:TextBox>        
        </div>
    </div>

    <div class="row">
        <div class="col-md-2 text-left">
            <h4 class="details-style">Email</h4>
        </div>
        <div class="col-md-10 text-left">
            <asp:TextBox ID="TbEmail" class="textbox-style" runat="server" placeholder=""></asp:TextBox>        
        </div>
    </div>

    <div class="row">
        <div class="col-md-2 text-left">
            <h4 class="details-style">Username</h4>
        </div>
        <div class="col-md-10 text-left">
            <asp:TextBox ID="TbUsername" class="textbox-style" runat="server" placeholder=""></asp:TextBox>        
        </div>
    </div>

    <div class="row">
        <div class="col-md-2 text-left">
            <h4 class="details-style">Password</h4>
        </div>
        <div class="col-md-10 text-left">
            <asp:TextBox ID="TbPassword" class="textbox-style" runat="server" placeholder=""></asp:TextBox>        
        </div>
    </div>

    <div class="row">
        <div class="col-md-12 text-left" style="margin-top: 20px;">
            <asp:Button ID="ButtonSave" class="save-btn" runat="server" Text="Save" />
        </div>
    </div>
</asp:Content>