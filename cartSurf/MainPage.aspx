<%@ Page Title="Main Page" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="cartSurf.MainPage"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="MainPage.css" rel="stylesheet" type="text/css" />

    <div class="container">
        <div class="row">
            <div class="col-md-3 menu">
                <div class="row menu">
                    <div class="col-md-12 menu_items">
                        <a href="CategoryPage.aspx"><p>Fashion</p></a>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 menu_items">
                        <a href="CategoryPage.aspx"><p>Electronic</p></a>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 menu_items">
                        <a href="CategoryPage.aspx"><p>Furniture</p></a>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 menu_items">
                        <a href="CategoryPage.aspx"><p>Baby</p></a>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 menu_items">
                        <a href="CategoryPage.aspx"><p>Car Appliances</p></a>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 menu_items">
                        <a href="CategoryPage.aspx"><p>Health and Beauty</p></a>
                    </div>
                </div>

            </div>

            <div class="col-md-9">
                <img src="Images/animations-e-commerce.png" id="banner" />
            </div>

        </div>


    </div>
    <div style="margin-left:25px; color:#FE3939">
        <h3>New picks</h3>
    </div>

    
       

       
        <div class=" flex-container" style="overflow-x:scroll; width:inherit">
       

        <asp:DataList ID="DataList1" RepeatDirection="Horizontal" runat="server">
            <ItemTemplate>
                <table>
                    <tr>
                        <td>
                           <asp:ImageButton ID="Image1" ImageUrl=<%#Eval("ImageUrl")%>  CommandArgument=<%#Eval("ProductID")%> runat="server" OnClick="Image1_Click" Width="120px"  Height="120px"/>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <%#Eval("ProductName") %>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <%#Eval("ProductUnitPrice") %>
                        </td>
                    </tr>

                </table>


            </ItemTemplate>

        </asp:DataList>
      </div>
    
    <div style="margin-left:25px;color:#FE3939">
        <h3>Recently viewed</h3>
    </div>

    <div class=" flex-container" style="overflow-x:scroll; width:inherit">
       

        <asp:DataList ID="DataList2" RepeatDirection="Horizontal" runat="server">
            <ItemTemplate>
                <table style="margin:40px; " >
                    <tr>
                        <td>
                           <asp:ImageButton ID="Image1" ImageUrl=<%#Eval("ImageUrl")%>  CommandArgument=<%#Eval("ProductID")%> runat="server" OnClick="Image1_Click" Width="120px"  Height="120px" />

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <%#Eval("ProductName") %>
                        </td>
                    </tr>

                </table>


            </ItemTemplate>

        </asp:DataList>
      </div>


        
    





</asp:Content>
