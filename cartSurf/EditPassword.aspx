<%@ Page Title="" Language="C#" MasterPageFile="~/Profile.master" AutoEventWireup="true" CodeBehind="EditPassword.aspx.cs" Inherits="cartSurf.EditPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ProfileContent" runat="server">

    <link href="MyAccount.css" rel="stylesheet" type="text/css" />

    <div class="row">
        <div class="col-md-12 mx-auto text-left">
            <h1 style="font-weight: 800;">Password</h1>
            <p>Manage and Protect your Password</p>
            <hr style="border: 1px solid #FE3939;" />
            <br />
       </div>
    </div>


    <div class="row">
        <div class="col-md-3 text-left">
            <h4 class="details-style">Current Password</h4>
        </div>
        <div class="col-md-9 text-left">
            <asp:TextBox ID="TbCurrentPassword" class="textbox-style" runat="server" placeholder="Current Password" TextMode="Password"></asp:TextBox>   
            <asp:RequiredFieldValidator ID="CurrentValidator" runat="server" ErrorMessage="Current password is required" ControlToValidate="TbCurrentPassword" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Label ID="LbCurrent" runat="server" Text="Current password is incorrect" Visible="false" ForeColor="Red"></asp:Label>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3 text-left">
            <h4 class="details-style">New Password</h4>
        </div>
        <div class="col-md-9 text-left">
            <asp:TextBox ID="TbNewPassword" class="textbox-style" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="NewPassValidator" runat="server" ErrorMessage="New password is required" ControlToValidate="TbNewPassword" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3 text-left">
            <h4 class="details-style">Confirm Password</h4>
        </div>
        <div class="col-md-9 text-left">
            <asp:TextBox ID="TbConfirm" class="textbox-style" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ConfirmValidator" runat="server" ErrorMessage="Confirm Password is required" ControlToValidate="TbConfirm" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Label ID="LbConfirm" runat="server" Text="" Visible="false" ForeColor="Red"></asp:Label>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3 text-left" style="margin-top: 20px;">
            <asp:Button ID="ButtonSave" class="save-btn" runat="server" Text="Save" OnClick="ButtonSave_Click" />            
        </div>
        <div class="col-md-9 text-left" style="margin-top:55px;">
            <asp:Label ID="LbSuccessful" runat="server" Text="Your password has been changed successfully!" Visible="false" ForeColor="Red"></asp:Label>
        </div>
    </div>
</asp:Content>
