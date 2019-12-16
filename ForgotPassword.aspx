<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Foodies.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style15
    {
        width: 413px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label4" runat="server" Text="Forgot Password"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="txtUsername" runat="server" 
                    ontextchanged="txtUsername_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtUsername" ErrorMessage="*Enter Name" Font-Size="Small" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSecQues" runat="server" Text="Security Question"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="txtSecQues" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSecAns" runat="server" Text="Security Answer"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="txtSecAns" runat="server" 
                    ontextchanged="txtSecAns_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtSecAns" ErrorMessage="*Enter Answer" Font-Size="Small" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style15">
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style15">
                <asp:Button ID="btSubmit" runat="server" Text="Submit" 
                    onclick="btSubmit_Click" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
