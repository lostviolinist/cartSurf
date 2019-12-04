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
        <div class="col-md-3 mx-auto">
            <a href="#"><i class="fas fa-wallet fa-5x"></i></a>
            <p>To Pay</p>
        </div>
        <div class="col-md-3 mx-auto">
            <a href="#"><i class="fas fa-shipping-fast fa-5x"></i></a>
            <p>To Ship</p>
        </div>
        <div class="col-md-3 mx-auto">
            <a href="#"><i class="far fa-comment-dots fa-5x"></i></a>
            <p>To Review</p>
        </div>
        <div class="col-md-3 mx-auto">
            <a href="#"><i class="fas fa-times fa-5x"></i></a>
            <p>To Cancel</p>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12 mx-auto text-left">
            <h2 style="font-weight: 800;">Recommendations</h2>
            <hr />
            <br />
        </div>
    </div> 

</asp:Content>
