<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="ToReview.aspx.cs" enableEventValidation="false"  Inherits="cartSurf.ToReview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="ToShip.css" rel="stylesheet" type="text/css" />

    <div class="container">

        <div class="row">
            <div class="col-md-4 text-center" style="background-color: #FFFFFF; padding: 10px 0; font-size: 1.2em; border: 1px solid black;">
                <asp:LinkButton runat="server" OnClick="Unnamed1_Click">To Ship</asp:LinkButton>
            </div>
            <div class="col-md-4 text-center" style="background-color: #FFFFFF; padding: 10px 0; font-size: 1.2em; border: 1px solid black;">
                <asp:LinkButton runat="server" OnClick="Unnamed2_Click">To Receive</asp:LinkButton>
            </div>
            <div class="col-md-4 text-center" style="background-color: #FFFFFF; padding: 10px 0; font-size: 1.2em; border: 1px solid black;">
                <asp:LinkButton runat="server" OnClick="Unnamed3_Click">To Review</asp:LinkButton>
            </div>
        </div>

        <div class="row" id="empty" runat="server">
            <div class="col-md-12 text-center" style="height: 370px; background-color: #FFFFFF; border: 1px solid black; border-top: none;">
                <h4>No item to display.</h4>
            </div>
        </div>
        <div class="row">
            <div id="status-body" class="col-md-12">
                
                <div id="gotItem" runat="server" style="margin-left: 68px; margin-right: 68px; margin-top: 40px;">
                    <table class="text-center" style="border: 1px solid black; width: 100%; background-color: #FE3939; color: #FFFFFF;">
                        <tr>
                            <td style="width:20%;">
                                <h4>Seller</h4>
                            </td>
                            <td style="width:20%">
                                <h4 style="font: #FFFFFF;">Picture</h4>      
                            </td>
                            <td style="width:20%">
                                <h4>Product</h4>
                            </td>
                            <td style="width:20%">
                                <h4>Unit Price</h4>
                            </td>
                            <td style="width:20%">
                                <h4>Quantity</h4>
                            </td>
                            <td style="width:20%">
                                <h4 style="color: #FE3939">Review</h4>
                            </td>

                        </tr>
                    </table>
                </div>


                <asp:DataList ID="ToReviewData" runat="server" BackColor="White" BorderColor="Black" BorderWidth="1px" CellPadding="10" CellSpacing="20" Font-Bold="False" Font-Italic="False" Font-Names="Trebuchet MS" Font-Overline="False" Font-Size="Larger" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" GridLines="Both" Height="71px" Width="1006px" HorizontalAlign="Center">
                    <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Names="Trebuchet MS" Font-Overline="False" Font-Size="Larger" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Top" />
                    <ItemStyle Font-Bold="False" Font-Italic="False" Font-Names="Trebuchet MS" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                    <ItemTemplate>
                        <table class="text-center" style="width: 100%;">
                            <tr style="padding-top: 20px; padding-bottom: 20px;">
                                <td style="width:20%">
                                    <%#Eval("Seller") %>
                                </td>
                                <td style="width:20%">
                                    <asp:Image ID="Image1" ImageUrl=<%#Eval("ImageUrl") %> runat="server" />
                                </td>
                                <td style="width:20%">
                                    <%#Eval("ProductName") %>
                                </td>
                                <td style="width: 20%">
                                    <%#Eval("UnitPrice") %>
                                </td>
                                <td style="width:20%">
                                    <%#Eval("Quantity") %>
                                </td>
                                <td style="width:20%">
                                    <asp:Button ID="BtnReview" runat="server" Text="Review" OnClick="reviewItem" CommandArgument= <%#Eval("ID") %>/>
                                </td>
                            </tr>

                        </table>

                    </ItemTemplate>
                    <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Names="Trebuchet MS" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                </asp:DataList>

            </div>
        </div>
    </div>
</asp:Content>
