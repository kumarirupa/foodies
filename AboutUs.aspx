<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Foodies.WebForm24" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style15
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style15">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="About Us" 
                    
                    
                    Style="position:absolute; top: 118px; left: 610px; height: 40px; width: 202px;" 
                    Font-Size="50px" ForeColor="White"></asp:Label>
                <asp:Image ID="Image2" runat="server" Height="25%" Width="100%" 
                    ImageUrl="~/Images/14.jpg" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
