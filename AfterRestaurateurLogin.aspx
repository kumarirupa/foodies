<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AfterRestaurateurLogin.aspx.cs" Inherits="Foodies.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style15
        {
            width: 103%;
        }
        
        .rounded {
  border-radius: 50%;
}
        
        .btn {
  background-color: #f4511e;
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  opacity: 1;
  transition: 0.3s;
  border-radius: 8px;
}
        .style23
        {
            width: 210px;
        }
        .style24
        {
            width: 149px;
            height: 24px;
        }
        .style25
        {
            width: 210px;
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style15">
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <center><asp:Label ID="Label1" runat="server" 
                        Text="You can perform following functions" Font-Size="XX-Large"></asp:Label></center>
            </td>
        </tr>
        <tr>
            <td style="width:149px">
                &nbsp;</td>
            <td style="width:149px">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:149px">
                &nbsp;</td>
            <td style="width:149px">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:149px">
                <center><asp:Image ID="Image2" runat="server" Height="220px" ImageUrl="~/Images/12.jpg" 
                    Width="259px" class="rounded"/></Center>
            </td>
            <td style="width:149px">
                <center><asp:Image ID="Image3" runat="server" Height="220px" ImageUrl="~/Images/14.jpg" 
                    Width="259px" class="rounded" /></center>
            </td>
            <td class="style23">
                <center><asp:Image ID="Image6" runat="server" ImageUrl="~/Images/17.jpg" Height="220px" Width="259px" class="rounded" /></center>
            </td>
        </tr>
        <tr>
            <td style="width:149px">
                <center>
                    <asp:Button ID="bt" runat="server" Text="Add Restaurant" class="btn" 
                    Width="258px" onclick="bt_Click"  /></center>
            </td>
            <td style="width:149px">
                <center><asp:Button ID="Button2" runat="server" Text="Add Dish Category"  
                        class="btn" Width="258px" onclick="Button2_Click"  /></center>
            </td>
            <td class="style23">
                <center>
                    <asp:Button ID="Button5" runat="server" Text="View Dishes" class="btn" 
                    Width="258px" onclick="Button5_Click"  /></center>
            </td>
        </tr>
        <tr>
            <td style="width:149px">
                <center><asp:Image ID="Image4" runat="server" ImageUrl="~/Images/18.jpg" Height="220px" Width="259px" class="rounded"/></center>
            </td>
            <td style="width:149px">
                <center><asp:Image ID="Image5" runat="server" ImageUrl="~/Images/9.jpg" Height="220px"  Width="259px" class="rounded"/></center>
            </td>
            <td class="style23">
                <center><asp:Image ID="Image7" runat="server" ImageUrl="~/Images/5.jpg" Height="220px"  Width="259px" class="rounded" /></center>
            </td>
        </tr>
        <tr>
            <td style="width:149px">
                <center>
                    <asp:Button ID="Button3" runat="server" Text="Add Dish" class="btn" 
                    Width="258px" onclick="Button3_Click"  /></center>
            </td>
            <td style="width:149px">
                                <center>
                                    <asp:Button ID="Button4" runat="server" Text="View Restaurants" class="btn" 
                    Width="258px" onclick="Button4_Click"  /></center>
            </td>
            <td class="style23">
                                 <center>
                                     <asp:Button ID="Button6" runat="server" Text="View Dish Categories" class="btn" 
                    Width="258px" onclick="Button6_Click"  /></center>
            </td>
        </tr>
        <tr>
            <td style="width:149px">
                 <center><asp:Image ID="Image1" runat="server" ImageUrl="~/Images/5.jpg" Height="220px"  Width="259px" class="rounded" /></center>
            </td>
            <td style="width:149px">
                < <center><asp:Image ID="Image8" runat="server" ImageUrl="~/Images/5.jpg" Height="220px"  Width="259px" class="rounded" /></center>
            </td>
            <td class="style23">
                 <center><asp:Image ID="Image9" runat="server" ImageUrl="~/Images/5.jpg" Height="220px"  Width="259px" class="rounded" /></center>
            </td>
        </tr>
        <tr>
            <td style="width:149px">
                                 <center>
                                     <asp:Button ID="Button7" runat="server" Text="Update Dish Categories" class="btn" 
                    Width="258px" onclick="Button7_Click1"  /></center>
            </td>
            <td style="width:149px">
                                                 <center>
                                                     <asp:Button ID="Button8" runat="server" Text="Update Dishes" class="btn" 
                    Width="258px" onclick="Button8_Click"  /></center>
            </td>
            <td class="style23">
                                                 <center>
                                                     <asp:Button ID="Button1" runat="server" Text="Update Restaurants" class="btn" 
                    Width="258px" onclick="Button1_Click"  /></center>
            </td>
        </tr>
    </table>
</asp:Content>
