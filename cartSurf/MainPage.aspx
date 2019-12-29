<%@ Page Title="Main Page" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="cartSurf.MainPage"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="MainPage.css" rel="stylesheet" type="text/css" />

    <div class="container" style="margin-left:250px;">
         
        

        <table>
            <tr>
            <td>
           
            <asp:DataList ID="DataList6" RepeatDirection="Vertical" runat="server">
            <ItemTemplate>
                <table>
                    <tr>
                        <td style="border:1px solid #000000; padding:17px; margin:35px; width: 150px;">
                         <asp:LinkButton ID="CategoryName" Text='<%#Eval("CategoryName") %>' CommandArgument=<%#Eval("CategoryID")%> OnClick="Category_Click" runat="server"/>

                        </td>
                    </tr>
                    </table>
                </ItemTemplate>
                </asp:DataList>
                </td>
                


           <td>
                <img src="Images/animations-e-commerce.png" id="banner" />
            </td>
                </tr>
            </table>
    </div>

            

        
                   


    
    <div style="margin-left:35px; color:#FE3939">
        <h3>New picks</h3>
    </div>
           
    
       

       
        <div class=" flex-container" style="overflow-x:scroll; width:inherit">
       

        <asp:DataList ID="DataList1" RepeatDirection="Horizontal" runat="server">
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
