<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="Review.aspx.cs" Inherits="cartSurf.Review" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row" style="background-color: #FFFFFF">
            <div class="col-md-12">
                <asp:DataList ID="DataReview" runat="server" Width="1582px">
                    <ItemTemplate>
                        <table class="text-center" style="width:100%;">

                            <tr class="padding-class">
                                <td style="width:20%">
                                    <%#Eval("Seller") %>
                                </td>
                                <td style="width:20%">
                                    <asp:Image ID="Image2" ImageUrl=<%#Eval("ImageUrl") %> runat="server" />
                                </td>
                                <td style="width:20%">
                                    <%#Eval("Variations") %>
                                </td>
                                <td style="width:20%">
                                    <%#Eval("UnitPrice") %>
                                </td>
                                <td style="width:20%">
                                    <%#Eval("Quantity") %>
                                </td>
                            </tr>
                        </table>

                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>

        <div class="row" style="margin-top: 60px;">
            <div class="col-md-3">
                <h4>Rating</h4>
            </div>
            <div class="col-md-9">
                <asp:DropDownList ID="DropDownRating" runat="server">
                    <asp:ListItem Value="0">0</asp:ListItem>
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="Validator1" runat="server" ErrorMessage="Please select a rating." ForeColor="Red" ControlToValidate="DropDownRating"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="row">
            <div class="col-md-3">
                <h4>Comment</h4>
            </div>
            <div class="col-md-9">
                <asp:TextBox ID="TbReview" runat="server" Width="450px" Height="250px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="Validator2" runat="server" ErrorMessage="Please enter a comment." ForeColor="Red" ControlToValidate="TbReview"></asp:RequiredFieldValidator>
            </div>
            
        </div>

        <div class="row">
            <div class="col-md-12">
                <asp:Button ID="BtnSave" runat="server" Text="Save" Font-Size="Larger" ForeColor="White" BackColor="#FE3939" OnClick="BtnSave_Click" />
            </div>
        </div>
    </div>
</asp:Content>
