<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AfterCustomerLogin.aspx.cs" Inherits="Foodies.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style15
        {
            width: 100%;
        }
                .rounded {
  border-radius: 50%;
}


                .btn {
  background-color: #f4511e;
  border: none;
  color: white;
  padding: 5px 21px;
  text-align: center;
  font-size: 14px;
  margin: 4px 2px;
  opacity: 1;
  transition: 0.3s;
  border-radius: 8px;
} 
        .style16
        {
            width: 999px;
        }
        .style17
        {
            width: 102%;
            height: 439px;
        }
        .style18
        {
            height: 20px;
        }
        .style23
        {
            width: 999px;
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style15">
        <tr>
            <td class="style23" bgcolor="#FF6600">
                <asp:LinkButton ID="LinkButton1" runat="server" 
                    style="position:absolute; top: 92px; left: 108px;" Font-Size="Large" 
                    Font-Underline="True" ForeColor="White"> Appetizers </asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" 
                    style="position:absolute; top: 92px; left: 235px; height: 10px;" 
                    Font-Size="Large" Font-Underline="True" ForeColor="White">Starters </asp:LinkButton>
                <asp:LinkButton ID="LinkButton3" runat="server" 
                    style="position:absolute; top: 92px; left: 332px;" Font-Size="Large" 
                    Font-Underline="True" ForeColor="White">Ice Creams </asp:LinkButton>
                <asp:LinkButton ID="LinkButton4" runat="server" 
                    style="position:absolute; top: 92px; left: 17px;" Font-Size="Large" 
                    Font-Underline="True" ForeColor="White">Coffee </asp:LinkButton>
                <asp:LinkButton ID="LinkButton5" runat="server" 
                    style="position:absolute; top: 92px; left: 460px;" Font-Size="Large" 
                    Font-Underline="True" ForeColor="White">South Indian </asp:LinkButton>
                <asp:LinkButton ID="LinkButton6" runat="server" 
                    style="position:absolute; top: 92px;left: 604px; margin-bottom: 5px;" Font-Size="Large" 
                    Font-Underline="True" ForeColor="White">Italian    </asp:LinkButton>
                <asp:LinkButton ID="LinkButton7" runat="server" 
                    style="position:absolute; top: 92px; left: 694px;" Font-Size="Large" 
                    Font-Underline="True" ForeColor="White">Continental   </asp:LinkButton>
                <asp:LinkButton ID="LinkButton8" runat="server" 
                    style="position:absolute; top: 92px; left: 829px;" Font-Size="Large" 
                    Font-Underline="True" ForeColor="White">Cakes   </asp:LinkButton>
                </td>
        </tr>
        <tr>
            <td class="style23" bgcolor="White">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                    RepeatColumns="3" RepeatDirection="Horizontal" Width="573px">
                    <ItemTemplate>
                        <table class="style17">
                            <tr>
                                <td class="style18">
                                    <center>
                                        <asp:Image ID="Image2" runat="server" Height="300px" ImageAlign="Middle" 
                                        ImageUrl='<%# Eval("DishImage") %>' Width="300px" class="rounded"/></center>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <center><asp:Label ID="Label1" runat="server"  Text='<%# Eval("DishName") %>' 
                                            Font-Size="Larger"></asp:Label></center>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <center>
                                        <asp:Label ID="Label3" runat="server" Text="Rs. - "></asp:Label>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>'></asp:Label></center>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <center><asp:Button ID="Button1" runat="server" Text="Add To Cart" class="btn" 
                                            Height="41px" Width="182px"/><center>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="style16">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    
                    SelectCommand="SELECT [DishName], [Price], [DishImage], [RId], [DCId], [DId] FROM [Dishes]">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
