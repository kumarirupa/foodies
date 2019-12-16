<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AfterAdminLogin.aspx.cs" Inherits="Foodies.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            height: 265px;
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
        .rounded {
            border-radius: 50%;
        }
        .style17
        {
            width: 160px;
            height: 23px;
        }
        .style18
        {
            width: 302px;
        }
        .style19
        {
            width: 302px;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td style="width:160px">
                &nbsp;</td>
            <td style="width:160px">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:160px">
                &nbsp;</td>
            <td style="width:160px">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <center><asp:Label ID="Label1" runat="server" 
                        Text="You can perform following function" Font-Size="XX-Large"></asp:Label></center>
            </td>
        </tr>
        <tr>
            <td style="width:160px">
                &nbsp;</td>
            <td style="width:160px">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:160px">
                &nbsp;</td>
            <td style="width:160px">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:160px">
                                <center><asp:Image ID="Image2" runat="server" Height="220px" ImageUrl="~/Images/12.jpg" 
                    Width="259px" class="rounded"/></Center>
            </td>
            <td style="width:160px">
                                <center><asp:Image ID="Image1" runat="server" Height="220px" ImageUrl="~/Images/12.jpg" 
                    Width="259px" class="rounded"/></Center></td>
            <td class="style18">
            <center><asp:Image ID="Image5" runat="server" Height="220px" ImageUrl="~/Images/13.jpg" 
                    Width="259px" class="rounded"/></Center>
                    </td>
        </tr>
        <tr>
            <td style="width:160px">
                <center>
                    <asp:Button ID="btViewUsers" runat="server" Text="View Users" class="btn" 
                    Width="258px" onclick="btViewUsers_Click"  /></center>
            </td>
            <td style="width:160px">
                <center>
                    <asp:Button ID="btViewRestaurants" runat="server" Text="View Restaurants" class="btn" 
                    Width="258px" onclick="btViewRestaurants_Click"  /></center>
            </td>
            <td class="style18">
                                <center>
                                    <asp:Button ID="btViewDishes" runat="server" Text="View Dishes" class="btn" 
                    Width="258px" onclick="btViewDishes_Click"  /></center></td>
        </tr>
        <tr>
            <td style="width:160px">
                                <center><asp:Image ID="Image3" runat="server" Height="220px" ImageUrl="~/Images/12.jpg" 
                    Width="259px" class="rounded"/></Center></td>
            <td style="width:160px">
                                <center><asp:Image ID="Image4" runat="server" Height="220px" ImageUrl="~/Images/12.jpg" 
                    Width="259px" class="rounded"/></Center></td>
            <td class="style18">
                     <center><asp:Image ID="Image6" runat="server" Height="220px" ImageUrl="~/Images/11.jpg" 
                    Width="259px" class="rounded"/></Center>                 </td>
        </tr>
        <tr>
            <td style="width:160px">
                               <center>
                                   <asp:Button ID="btDeleteUser" runat="server" Text="Delete User" class="btn" 
                    Width="258px" onclick="btDeleteUser_Click"  /></center> </td>
            <td style="width:160px">
                                <center>
                                    <asp:Button ID="btDeleteRestaurant" runat="server" Text="Delete Restaurant" class="btn" 
                    Width="258px" onclick="btDeleteRestaurant_Click"  /></center></td>
            <td class="style18">
                    <center>
                        <asp:Button ID="Button1" runat="server" Text="Delete Dishes" class="btn" 
                    Width="258px" onclick="Button1_Click"  /></center></td>
        </tr>
        <tr>
            <td class="style17">
                </td>
            <td class="style17">
                </td>
            <td class="style19">
                </td>
        </tr>
        <tr>
            <td style="width:160px">
                &nbsp;</td>
            <td style="width:160px">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
