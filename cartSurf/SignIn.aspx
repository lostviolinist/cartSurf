<%@ Page Title="CartSurf - Online Shopping Platform" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="cartSurf.SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compativle" content="ie=edge" />
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.11.1/css/all.css">
    <link href="SignIn.css" rel="stylesheet" type="text/css" />

    
    <title>Login/Sign Up Form</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" id="signInUp">
        <div class="row justify-content-center">
            <div class="col-md-3 mx-auto"  id="signup-container">
                <h1>Create Account</h1>
                <div class="social-container">
                    <a href="#" class="social"><i class="fab fa-facebook-square fa-3x"></i></a>
                    <a href="#" class="social"><i class="fab fa-google-plus-square fa-3x"></i></a>
                    <a href="#" class="social"><i class="fab fa-linkedin fa-3x"></i></a>
                </div>
                <span>or use your email for registration</span>
                <asp:TextBox ID="TbSignUpEmail" class="input" autocomplete= "off" runat="server" Text="Email"></asp:TextBox>
                <asp:TextBox ID="TbSignUpPassword" class="input" autocomplete= "off" runat="server" Text="Password"></asp:TextBox>
                <asp:TextBox ID="TbConfirmPassword" class="input" autocomplete= "off" runat="server" Text="Confirm Password"></asp:TextBox>
                <asp:Button ID="SignUpBtn" class="myButton" runat="server" Text="Sign Up" />
            </div>

            <div class="col-md-3 mx-auto" id="signin-container">
                <h1>Sign In</h1>
                <div class="social-container">
                    <a href="#" class="social"><i class="fab fa-facebook-square"></i></a>
                    <a href="#" class="social"><i class="fab fa-google-plus-square"></i></a>
                    <a href="#" class="social"><i class="fab fa-linkedin"></i></a>
                </div>
                <span>or use your account</span>
                <asp:TextBox ID="TbEmail" class="input" autocomplete= "off" runat="server" Placeholder="Email"></asp:TextBox>
                <asp:TextBox ID="TbPassword" class="input" autocomplete= "off" runat="server" Placeholder="Password"></asp:TextBox>
                <a href="#">Forgot your password?</a>
                <asp:Button ID="SignInBtn" class="myButton" autocomplete= "off" runat="server" Text="Sign In" />
            </div>
        </div>

<%--    <div class="container" id="signInUp">
        
        <div class="form-container sign-up-container">
            <div class="form">
                <h1>Create Account</h1>
                <div class="social-container">
                    <a href="#" class="social"><i class="fab fa-facebook-square fa-3x"></i></a>
                    <a href="#" class="social"><i class="fab fa-google-plus-square fa-3x"></i></a>
                    <a href="#" class="social"><i class="fab fa-linkedin fa-3x"></i></a>
                </div>
                <span>or use your email for registration</span>
                <asp:TextBox ID="TbSignUpEmail" class="input" autocomplete= "off" runat="server" Text="Email"></asp:TextBox>
                <asp:TextBox ID="TbSignUpPassword" class="input" autocomplete= "off" runat="server" Text="Password"></asp:TextBox>
                <asp:TextBox ID="TbConfirmPassword" class="input" autocomplete= "off" runat="server" Text="Confirm Password"></asp:TextBox>
                <asp:Button ID="SignUpBtn" class="myButton" runat="server" Text="Sign Up" />
            </div>
        </div>

        <div class="form-container sign-in-container">
            <div class="form">
                <h1>Sign In</h1>
                <div class="social-container">
                    <a href="#" class="social"><i class="fab fa-facebook-square"></i></a>
                    <a href="#" class="social"><i class="fab fa-google-plus-square"></i></a>
                    <a href="#" class="social"><i class="fab fa-linkedin"></i></a>
                </div>
                <span>or use your account</span>
                <asp:TextBox ID="TbEmail" class="input" autocomplete= "off" runat="server" Placeholder="Email"></asp:TextBox>
                <asp:TextBox ID="TbPassword" class="input" autocomplete= "off" runat="server" Placeholder="Password"></asp:TextBox>
                <a href="#">Forgot your password?</a>
                <asp:Button ID="SignInBtn" class="myButton" autocomplete= "off" runat="server" Text="Sign In" />
            </div>
         </div>--%>

        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-left">
                    <h1>Welcome Back!</h1>
                    <p>Please sign in to enjoy shopping</p>
                    <asp:Button class="ghost myButton" ID="signInOverlay" runat="server" Text="Sign In" />
                </div>
                <div class="overlay-panel overlay-right">
                    <h1>Hello!</h1>
                    <p>Sign up and start your journey with us</p>
                    <asp:Button class="ghost myButton" ID="signUpOverlay" runat="server" Text="Sign Up" />
                </div>
            </div>
        </div>

    </div>
    <script src="SignIn.js"></script>
</asp:Content>
