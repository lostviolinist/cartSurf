<%@ Page Title="CartSurf - Online Shopping Platform" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="cartSurf.SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compativle" content="ie=edge" />    
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.11.1/css/all.css">
    <link href="SignIn.css" rel="stylesheet" type="text/css" />

<%--  <script type="text/javascript">
      $(document).ready(function () {

          $("#signUp").click(function () {
              alert("Hello!");
          });
      });
    </script>--%>
        
    <title>Login/Sign Up Form</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="sign-body">
        <div class="container-sign" id="containerSign">
            <%--Sign Up Container--%>
	        <div class="form-container sign-up-container">
		        <div class="form">
			        <h1>Create Account</h1>
			        <div class="social-container">
				        <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				        <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				        <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			        </div>
			        <span>or use your email for registration</span>			        
			        <asp:TextBox ID="TbEmail"  class="input" runat="server" autocomplete="off" placeholder="Email" TextMode="Email" />
                    <asp:Label ID="emailRegisterValidator" runat="server" Text="Email is a required field" Visible="false" ForeColor="Red"></asp:Label>
                    <asp:TextBox ID="TbName" class="input" runat="server" autocomplete="off" placeholder="Username" />
                    <asp:Label ID="nameRegisterValidator" runat="server" Text="Username is a required field" Visible="false" ForeColor="Red"></asp:Label>
			        <asp:TextBox ID="TbPassword" class="input" runat="server" autocomplete="off" placeholder="Password" TextMode="Password" />
                    <asp:Label ID="passwordRegisterValidator" runat="server" Text="Password is a required field" Visible="false" ForeColor="Red"></asp:Label>
			        <asp:Button ID="BtnSignUp" class="button" runat="server" Text="Sign Up" />                     
		        </div>
	        </div>

            <%--Sign In Container--%>
	        <div class="form-container sign-in-container">
		       <div class="form">
			        <h1>Sign in</h1>
			        <div class="social-container">
				        <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				        <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				        <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			        </div>
			        <span>or use your account</span>
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
                    <%--Active when Sign in Container is inactive--%>
			        <div class="overlay-panel overlay-left">
				        <h1>Welcome Back!</h1>
				        <p>To keep connected with us please login with your personal info</p>
                        <asp:Button class="ghost button" ID="signIn" runat="server" Text="Sign In" />
			        </div>

                    <%--Active when Sign Up Container is inactive--%>
			        <div class="overlay-panel overlay-right">
				        <h1>Hello, Friend!</h1>
				        <p>Enter your personal details and start journey with us</p>
                        <asp:Button ID="signUp" class="ghost button" runat="server" Text="Sign Up" />
			        </div>
		        </div>
	        </div>
        </div>
    </div>   
    
    <%--try--%>
		        <div class="form">
			        <h1>Create Account</h1>
			        <div class="social-container">
				        <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				        <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				        <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			        </div>
			        <span>or use your email for registration</span>
			        <asp:TextBox ID="TextBox2"  class="input" runat="server" autocomplete="off" placeholder="Email" TextMode="Email" />
                    <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red"></asp:Label>
			        <asp:TextBox ID="TextBox1" class="input" runat="server" autocomplete="off" placeholder="Username" />
                    <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
			        <asp:TextBox ID="TextBox3" class="input" runat="server" autocomplete="off" placeholder="Password" TextMode="Password" />
                    <asp:Label ID="Label3" runat="server" Text="" ForeColor="Red"></asp:Label>
			        <asp:Button ID="Button1" class="button" runat="server" Text="Sign Up" OnClick="Button1_Click" />
		        </div>
</asp:Content>
