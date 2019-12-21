<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpSuccessful.aspx.cs" Inherits="cartSurf.SignUpSuccessful" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <webopt:bundlereference runat="server" path="~/Content/css" />
    
</head>
<body>
    <form id="form1" runat="server">
        <link href="SignUpSuccessful.css" rel="stylesheet" type="text/css" />
        <nav class="navbar navbar-inverse navbar-fixed-top">
          <div class="container-fluid">
            <div class="navbar-header">
              <h4>Sign Up Successful!</h4>              
            </div>
          </div>
        </nav>

        <div class="row justify-content-center">

            <div class="col-md-4">
                <img class="logo auto-style1" src="Images/logo.png" />
                <h2>HELLO THERE!</h2>
                <h5>Get Latest Promotion and Product by Email</h5>
                <asp:Button class="myBtn" runat="server" Text="Yes, I'm in." />
                <a href="MainPage.aspx"><h4 style="margin-top: 20px;">No, continue to shop</h4></a>
            </div>

        </div>

    </form>
</body>
</html>
