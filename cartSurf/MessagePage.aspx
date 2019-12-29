<%@ Page Title="Messages" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="MessagePage.aspx.cs" Inherits="cartSurf.MessagePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="MessagePage.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="container">
        <%--<div class="row">--%>
            
                
                
                
            <div class="chat" style="width:1200px;">
                <div style="height:550px; width:100%; overflow:scroll; background-color:white; margin-top:10px;">
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                    <asp:DataList ID="DataList4" RepeatDirection="Vertical" runat="server" EnableViewState="true">

            <ItemTemplate>
               
                    
                <table style="width:1000px;">
                   
                    <tr>
                        
                        <td style="width:50%">
                           <p style="color:#000000; font-size:20px; margin-left:20px;"><asp:Label ID="left" Text=<%#Eval("left") %> runat="server" /></p>

                        </td>
                        <td style="width:50%">
                            <p style="color:#FE3090; text-align:right; font-size:20px;"><asp:Label ID="right" Text=<%#Eval("right") %> runat="server" /></p>
                        </td>
                    </tr>
                   
                    

                </table>

                
            </ItemTemplate>

        </asp:DataList>
                                             <asp:Timer ID="timer" runat="server" Interval="100" OnTick="timer_tick">

                    </asp:Timer>
                        </ContentTemplate>
                         </asp:UpdatePanel>

                    </div>
                <div class="container message">
                    <div class="row">
                        <div class="col-md-11">
                            <asp:textbox id="textarea" mode="multiline" runat="server" Width="1000px"/> 
                        </div>
                       
                            <%--<button class="send-message">Send</button>--%>
                            <asp:Button ID="SendMessage" OnClick="sendmessage_Click" runat="server" Text="Send" />
                        
                    </div>
                 
                    
            </div>
              
                </div>
                
                
            </div>
            
            
        </div>
            </div>


</asp:Content>