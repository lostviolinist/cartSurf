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
            <h4 class="details-style">First Name</h4>
        </div>
        <div class="col-md-10 text-left">
            <asp:TextBox ID="TbFirstName" class="textbox-style" runat="server" placeholder="First Name"></asp:TextBox>   
            <asp:RequiredFieldValidator ID="FNameValidator" runat="server" ErrorMessage="First Name is a required field" ControlToValidate="TbFirstName" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="row">
        <div class="col-md-2 text-left">
            <h4 class="details-style">Last Name</h4>
        </div>
        <div class="col-md-10 text-left">
            <asp:TextBox ID="TbLastName" class="textbox-style" runat="server" placeholder="Last Name"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="LNameValidator" runat="server" ErrorMessage="Last Name is a required field" ControlToValidate="TbLastName" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="row">
        <div class="col-md-2 text-left">
            <h4 class="details-style">Email</h4>
        </div>
        <div class="col-md-10 text-left">
            <asp:TextBox ID="TbEmail" class="textbox-style" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="EmailValidator" runat="server" ErrorMessage="Email is a required field" ControlToValidate="TbEmail" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="row">
        <div class="col-md-2 text-left">
            <h4 class="details-style">Username</h4>
        </div>
        <div class="col-md-10 text-left">
            <asp:TextBox ID="TbUsername" class="textbox-style" runat="server" placeholder="Username"></asp:TextBox>
            <asp:RequiredFieldValidator ID="UsernameValidator" runat="server" ErrorMessage="Username is a required field" ControlToValidate="TbUsername" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        
    </div>

    <div class="row">
        <div class="col-md-12 text-left" style="margin-top: 20px;">
            <asp:Button ID="ButtonSave" class="save-btn" runat="server" Text="Save" OnClick="ButtonSave_Click" />
        </div>
    </div>
</asp:Content>