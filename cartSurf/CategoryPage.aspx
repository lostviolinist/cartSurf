<%@ Page Title="Category" Language="C#" AutoEventWireup="true" MasterPageFile="~/HeaderFooter.Master" CodeBehind="CategoryPage.aspx.cs" Inherits="cartSurf.CategoryPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CategoryPage.css" rel="stylesheet" type="text/css">

    <div style="margin-left:40px; margin-top:10px; color:#000000">
        <h2><asp:Label ID="Category" runat="server" Text=""></asp:Label></h2>
        
    </div>

    <div class="container">
        
            <img src="Images/08-.jpg" id="banner" />
        

    </div>
    <div style="margin-left:25px; color:#FE3939">
        <h3>Check these out</h3>
    </div>

    <div class=" flex-container" style="overflow-x:scroll; width:inherit">
       

        <asp:DataList ID="DataList7" RepeatDirection="Horizontal" runat="server">
            <ItemTemplate>
                <table style="margin:50px;  border:1px solid #FE3939; background-color:white;">
                    <tr>
                        <td style="padding:20px;">
                           <asp:ImageButton ID="Image1" ImageUrl=<%#Eval("ImageUrl")%>  CommandArgument=<%#Eval("ProductID")%> runat="server" OnClick="Image1_Click" Width="120px"  Height="120px"/>

                        </td>
                    </tr>
                    <tr>
                        <td style="padding:10px;">
                            <%#Eval("ProductName") %>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding:10px;">
                            RM <%#Eval("ProductUnitPrice") %>
                        </td>
                    </tr>

                </table>


            </ItemTemplate>

        </asp:DataList>
      </div>

    


</asp:Content>
