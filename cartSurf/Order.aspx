<%@ Page Title="" Language="C#" MasterPageFile="~/Profile.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="cartSurf.Order" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Content3" runat="server">
    <link href="Order.css" rel="stylesheet" type="text/css" />
<%--    <div id="profile" class ="container text-center text-md-left">
        <div class="row">
            <div class="col-md-4 mx-auto">
                <div id="personal-details" class ="row">
                    <div class="col-md-4 mx-auto">
                        <a href="#" style="color: black"><i class="far fa-user-circle fa-8x"></i></a>
                    </div>
                    <div id="name" class="col-md-8 mx-auto text-left">
                        <ul class="list-unstyled">
                            <li>Name: </li>
                            <li>Membership Status: </li>
                        </ul>                        
                    </div>
                </div>
          
                <ul id="profile-category" class="list-unstyled text-left">
                   <li style="margin-top: 40px; padding-top: 20px;">
                       <a href="#">Profile</a>
                   </li>
                   <li>
                       <a href="#">My Account</a>
                   </li>
                   <li>
                       <a href="#">My Order</a>
                   </li>
                   <li>
                       <a href="#">Membership</a>
                   </li>
               </ul>
                
            </div>--%>

            <div class="col-md-8 mx-auto text-left">
                <h1 style="font-weight: 800;">Order Status</h1>
                <hr />
                <br />
            </div>

            <div id="status" class="col-md-8 mx-auto">
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

            <div class="col-md-8 mx-auto text-left">
                <h2 style="font-weight: 800;">Recommendation</h2>
            </div>
<%--        </div>
    </div>--%>
</asp:Content>
