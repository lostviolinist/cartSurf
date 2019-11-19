<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="cartSurf.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="SignUp.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.11.1/css/all.css">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <div class="login-signup-wrap" style="margin-left: 90px;">
            
            <div class="login-container">
                <div class ="login-element" style="font-size:1.6em;font-weight:bold;">
                    WELCOME BACK!
                </div>

                <div class = "login-element">
                    Sign in to continue to your account
                </div>

                <div class ="login-element" style="color:#000000;">
                    <asp:Button ID="btnSubmit" Text="SIGN IN" runat="server" OnClick="Our_BtnSubmit_Click" BorderColor="#fe3936" Height="30px" Width="90px" BackColor="#F2F2F2" />
                </div>            
            </div>

            <div class="sign-up-container">
                
                <div class ="sign-up-element" style="color: #FE3939; font-size: 1.6em; font-weight: bold;">
                    Create Account
                </div>

                <div class ="sign-up-element">
                    <i class="fab fa-facebook-square fa-3x"></i>
                    <i class="fab fa-google-plus-square fa-3x"></i>
                    <i class="fab fa-linkedin fa-3x"></i>
                </div>

                <div class ="sign-up-element" style="color: #808080">
                    or use your email for registration
                </div>

                <div class="sign-up-element">
                    <i class="far fa-envelope fa-2x"></i> 
                    <asp:TextBox ID="tbMail" runat="server" Width="311px" Height="30px" ForeColor="DarkGray">  Email</asp:TextBox>
                </div>

                <div class="sign-up-element">
                    <i class="fas fa-lock fa-2x"></i>
                    <asp:TextBox ID="TextBox1" runat="server" Width="311px" Height="30px" ForeColor="DarkGray">  Password</asp:TextBox>
                </div>

                <div class="sign-up-element">
                    <i class="fas fa-lock fa-2x"></i> 
                    <asp:TextBox ID="TextBox2" runat="server" Width="311px" Height="30px" ForeColor="DarkGray">  Confirm Password</asp:TextBox>
                </div>
                
            </div>

       </div>
</asp:Content>

