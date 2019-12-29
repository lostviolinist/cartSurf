<%@ Page Title="CartSurf - Online Shopping Platform" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="cartSurf.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="SignIn.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.11.1/css/all.css">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="sign-body">
        <div class="container-sign" id="containerSign">
            <%--Sign In Container--%>
	        <div class="form-container sign-in-container">
		        <div class="form">
			        <h1>Create Account</h1>
					<span>Use your email for registration</span>
			        <asp:TextBox ID="TbEmail"  class="input" runat="server" autocomplete="off" placeholder="Email" TextMode="Email" />
                    <asp:Label ID="LbEmail" runat="server" Text="Please fill in your email." Visible="false" ForeColor="Red"></asp:Label>
			        <asp:TextBox ID="TbUsername" class="input" runat="server" autocomplete="off" placeholder="Username" />
					<asp:Label ID="LbUsername" runat="server" Text="Please fill in your username." Visible="false" ForeColor="Red"></asp:Label>
			        <asp:TextBox ID="TbPassword" class="input" runat="server" autocomplete="off" placeholder="Password" TextMode="Password" />
					<asp:Label ID="LbPassword" runat="server" Text="Please create your password." Visible="false" ForeColor="Red"></asp:Label>
			        <asp:TextBox ID="ConfirmPassword" class="input" runat="server" autocomplete="off" placeholder="Password" TextMode="Password" />
					<asp:Label ID="LbconfirmPassword" runat="server" Text="Please confirm your password." Visible="false" ForeColor="Red"></asp:Label>
			        <asp:Button ID="BtnSignUp" class="button" runat="server" Text="Sign Up" OnClick="BtnSignUp_Click" />
					<asp:Label ID="LbSignUp" runat="server" Text="" Visible="false" ForeColor="Red"></asp:Label>
		        </div>
	        </div>
                        
	        <div class="overlay-container">
		        <div class="overlay">
                    <%--Active when Sign Up Container is inactive--%>
			        <div class="overlay-panel overlay-right">
				        <h1>Welcome Back!</h1>
				        <p>To keep connected with us please login with your personal info</p>
                        <asp:Button class="ghost button" ID="BtnSignIn" runat="server" Text="Sign In" OnClick="BtnSignIn_Click" />						
			        </div>
		        </div>
	        </div>
        </div>
    </div>   
    
</asp:Content>

