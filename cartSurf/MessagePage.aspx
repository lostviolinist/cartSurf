<%@ Page Title="Messages" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="MessagePage.aspx.cs" Inherits="cartSurf.MessagePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="MessagePage.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="row menu">
                    <div class="col-md-12 menu_items">
                        <div class="col-md-9">
                            <h4><asp:Label ID="SellerName" runat="server" Text=""></asp:Label></h4>
                            
                        <p><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></p>
                        </div>
                        <div class="col-md-3" style="float:right; margin-top:5px; color:#808080">
                        <h6><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></h6>

                    </div>
                    </div>
                    
                </div>

                <div class="row menu">
                    <div class="col-md-12 menu_items">
                        <div class="col-md-9">
                            <h4>january202</h4>
                        <p>This item is still in stock.</p>
                        </div>
                        <div class="col-md-3" style="float:right; margin-top:5px; color:#808080">
                        <h6>12.33pm</h6>

                    </div>
                    </div>
                    
                </div>
                <div class="row menu">
                    <div class="col-md-12 menu_items">
                        <div class="col-md-9">
                            <h4>january202</h4>
                        <p>This item is still in stock.</p>
                        </div>
                        <div class="col-md-3" style="float:right; margin-top:5px; color:#808080">
                        <h6>12.33pm</h6>

                    </div>
                    </div>
                    
                </div>
                <div class="row menu">
                    <div class="col-md-12 menu_items">
                        <div class="col-md-9">
                            <h4>january202</h4>
                        <p>This item is still in stock.</p>
                        </div>
                        <div class="col-md-3" style="float:right; margin-top:5px; color:#808080">
                        <h6>12.33pm</h6>

                    </div>
                    </div>
                    
                </div>
                <div class="row menu">
                    <div class="col-md-12 menu_items">
                        <div class="col-md-9">
                            <h4>january202</h4>
                        <p>This item is still in stock.</p>
                        </div>
                        <div class="col-md-3" style="float:right; margin-top:5px; color:#808080">
                        <h6>12.33pm</h6>

                    </div>
                    </div>
                    
                </div>
                <div class="row menu">
                    <div class="col-md-12 menu_items">
                        <div class="col-md-9">
                            <h4>january202</h4>
                        <p>This item is still in stock.</p>
                        </div>
                        <div class="col-md-3" style="float:right; margin-top:5px; color:#808080">
                        <h6>12.33pm</h6>

                    </div>
                    </div>
                    
                </div>

            </div>
            <div class="col-md-8 chat">
                <div>
                <p id="rcorners2">Rounded corners fddsfdsfds fdsfds fdff sfsfds fdsfsfs ffs dfdsf dsfsdf dsfdsfd sfdsfsd!</p>
                <p id="rcorners">Rounded corners fddsfdsfds fdsfds fdff sfsfds fdsfsfs ffs dfdsf dsfsdf dsfdsfd sfdsfsd!</p>
            </div>
                
                <div class="message">
                    <div class="row">
                        <div class="col-md-11">
                            <asp:textbox id="textarea" mode="multiline" runat="server"/> 
                        </div>
                        <div class="col-md-1">
                            <%--<button class="send-message">Send</button>--%>
                            <asp:Button ID="SendMessage" runat="server" Text="Send" />
                        </div>
                    </div>
                 
                    
            </div>
            </div>
            
            
        </div>

    </div>
</asp:Content>