<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddRestaurant.aspx.cs" Inherits="Foodies.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style15
        {
            width: 690px;
        }
        .style16
        {
            height: 116px;
            width: 353px;
        }
        .style17
        {
            width: 690px;
            height: 116px;
        }
        .style18
        {
            width: 353px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td class="style15">
                <asp:Label ID="Label4" runat="server" Text="Add Restaurant"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                <asp:Label ID="Label5" runat="server" Text="Restaurateur Id"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="txtRestaurateurId" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style18">
                <asp:Label ID="Label1" runat="server" Text="Restaurant Name"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style18">
                <asp:Label ID="Label6" runat="server" Text="Image"></asp:Label>
            </td>
            <td class="style15">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
                <asp:Image ID="Image2" runat="server" Height="82px" Width="133px" />
            </td>
        </tr>
        <tr>
            <td class="style18">
                <asp:Label ID="Label2" runat="server" Text="Location"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style18">
                <asp:Label ID="Label3" runat="server" Text="City"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                </td>
            <td class="style17">
                <asp:Button ID="btAdd" runat="server" Text="Add " onclick="btAdd_Click" 
                    Width="80px" />
            </td>
        </tr>
    </table>
</asp:Content>
