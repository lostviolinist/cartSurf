<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="ToShip.aspx.cs" Inherits="cartSurf.ToShip" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="ToShip.css" rel="stylesheet" type="text/css" />

    <div class="flex-container" style="width: inherit;">
        <div class="row">
            <div id="status-body" class="col-md-12">
                <asp:DataList ID="ToShipData" runat="server" BackColor="White" BorderColor="Black" BorderWidth="1px" CellPadding="10" CellSpacing="20" Font-Bold="False" Font-Italic="False" Font-Names="Trebuchet MS" Font-Overline="False" Font-Size="Larger" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" GridLines="Both" Height="71px" Width="1006px" HorizontalAlign="Center">
                    <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Names="Trebuchet MS" Font-Overline="False" Font-Size="Larger" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Top" />
                    <ItemStyle Font-Bold="False" Font-Italic="False" Font-Names="Trebuchet MS" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                    <ItemTemplate>
                        <header>

                        </header>
                        <table class="text-center">
                            <tr class="padding-class">
                                <td Width="20%">
                                    <%#Eval("Seller") %>
                                </td>
                                <td Width="30%">
                                    <%#Eval("ProductName") %>
                                </td>
                                <td Width="20%">
                                    <%#Eval("UnitPrice") %>
                                </td>
                                <td Width="15%">
                                    <%#Eval("Quantity") %>
                                </td>
                                <td Width="15%">
                                    <%#Eval("Total") %>
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
