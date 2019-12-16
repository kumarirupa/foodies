<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Foodies.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="LOGIN"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Type</td>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="type" 
                    Text="Customer" />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="type" 
                    Text="Restaurateur" />
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="type" 
                    Text="Admin" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btLogin" runat="server" Text="Login" onclick="btLogin_Click" 
                    style="width: 47px" />
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:LinkButton ID="lbForgotPassword" runat="server" 
                    onclick="lbForgotPassword_Click">?Forgot Password</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
