<%@ Page Title="CartSurf - Online Shopping Platform" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="cartSurf.SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compativle" content="ie=edge" />    
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.11.1/css/all.css">
    <link href="SignIn.css" rel="stylesheet" type="text/css" />
	
    <title>Sign In Form</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="sign-body">
        <div class="container-sign" id="containerSign">
	        <div class="form-container sign-in-container">
		       <div class="form">
			        <h1>Sign in</h1>
			        <span>Use your account to sign in</span>
			        <asp:TextBox ID="TbUsername" class="input" runat="server" autocomplete="off" placeholder="Username" />
                    <asp:Label ID="nameSigninValidator" runat="server" Text="" ForeColor="Red"></asp:Label>
			        <asp:TextBox ID="TbPassword2" class="input" runat="server" autocomplete="off" placeholder="Password" TextMode="Password" />
                    <asp:Label ID="passwordSigninValidator" runat="server" Text="" ForeColor="Red"></asp:Label>
			        <a href="#">Forgot your password?</a>
			        <asp:Button ID="BtnSignIn" class="button" runat="server" Text="Sign In" OnClick="BtnSignIn_Click" />
                    <br />
                    <asp:Label ID="LbSignIn" runat="server" Text="" ForeColor="Red" Visible="False"></asp:Label>  
		        </div>
	        </div>
                        
	        <div class="overlay-container">
		        <div class="overlay">
			        <div class="overlay-panel overlay-right">
				        <h1>Hello, Friend!</h1>
				        <p>Enter your personal details and start journey with us</p>
                        <asp:Button ID="signUp" class="ghost button" runat="server" Text="Sign Up" OnClick="signUp_Click" />
			        </div>
		        </div>
	        </div>
        </div>
    </div>   

</asp:Content>
