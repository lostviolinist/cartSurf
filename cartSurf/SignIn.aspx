<%@ Page Title="CartSurf - Online Shopping Platform" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="cartSurf.SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compativle" content="ie=edge" />    
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.11.1/css/all.css">
    <link href="SignIn.css" rel="stylesheet" type="text/css" />
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" type="text/javascript"></script>
    <script src="SignIn.min.js" type="text/javascript"></script>
        
    <title>Login/Sign Up Form</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="sign-body">
        <div class="container-sign" id="container-sign">
	        <div class="form-container sign-up-container">
		        <div class="form">
			        <h1>Create Account</h1>
			        <div class="social-container">
				        <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				        <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				        <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			        </div>
			        <span>or use your email for registration</span>
			        <asp:TextBox ID="TbName" class="input" runat="server" autocomplete="off" placeholder="Name" />
			        <asp:TextBox ID="TbEmail"  class="input" runat="server" autocomplete="off" placeholder="Email" TextMode="Email" />
			        <asp:TextBox ID="TbPassword" class="input" runat="server" autocomplete="off" placeholder="Password" TextMode="Password" />
			        <asp:Button ID="BtnSignUp" class="button" runat="server" Text="Sign Up" />
		        </div>
	        </div>
	        <div class="form-container sign-in-container">
		       <div class="form">
			        <h1>Sign in</h1>
			        <div class="social-container">
				        <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				        <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				        <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			        </div>
			        <span>or use your account</span>
			        <asp:TextBox ID="TbEmail2" class="input" runat="server" autocomplete="off" placeholder="Email" TextMode="Email" />
			        <asp:TextBox ID="TbPassword2" class="input" runat="server" autocomplete="off" placeholder="Password" TextMode="Password" />
			        <a href="#">Forgot your password?</a>
			        <asp:Button ID="BtnSignIn" class="button" runat="server" Text="Sign In" />
		        </div>
	        </div>

	        <div class="overlay-container">
		        <div class="overlay">
			        <div class="overlay-panel overlay-left">
				        <h1>Welcome Back!</h1>
				        <p>To keep connected with us please login with your personal info</p>
                        <asp:Button class="ghost button" ID="signIn" runat="server" Text="Sign In" />
			        </div>
			        <div class="overlay-panel overlay-right">
				        <h1>Hello, Friend!</h1>
				        <p>Enter your personal details and start journey with us</p>
                        <asp:Button class="ghost button" ID="signUp" runat="server" Text="Sign Up" />
			        </div>
		        </div>
	        </div>
        </div>
    </div>

    
</asp:Content>
