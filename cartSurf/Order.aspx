<%@ Page Title="CartSurf - Online Shopping Platform" Language="C#" MasterPageFile="~/Profile.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="cartSurf.Order" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ProfileContent" runat="server">
    <link href="Order.css" rel="stylesheet" type="text/css" />
            
    <div class="row">
        <div class="col-md-12 mx-auto text-left">
            <h1 style="font-weight: 800;">Order Status</h1>
            <hr />
            <br />
        </div>
    </div>             

    <div id="status" class="row">
        <div class="col-md-4 mx-auto">
            <a href="ToShip.aspx"><i class="fas fa-shipping-fast fa-5x"></i>
            <p>To Ship</p></a>
        </div>
        <div class="col-md-4 mx-auto">
            <a href="ToReceive.aspx"><i class="fas fa-people-carry fa-5x"></i>
            <p>To Receive</p></a>
        </div>
        <div class="col-md-4 mx-auto">
            <a href="ToReview.aspx"><i class="far fa-comment-dots fa-5x"></i>
            <p>To Review</p></a>
        </div>
    </div>

</asp:Content>
