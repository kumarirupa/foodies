<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Foodies.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            height: 23px;
        }
        .style9
        {
            height: 61px;
        }
        .style1
        {
            width: 533px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Register"></asp:Label>
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
                <asp:Label ID="Label2" runat="server" Text="Type"></asp:Label>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="type" 
                    Text="Customer" />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="type" 
                    Text="Restaurateur" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtUsername" ErrorMessage="*Enter Name" Font-Size="Small" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="*Enter Password" 
                    Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCnfPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtPassword" ControlToValidate="txtCnfPassword" 
                    ErrorMessage="*Password does'nt Match" Font-Size="Small" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="E-Mail Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmailId" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtEmailId" ErrorMessage="*Enter Email Id" Font-Size="Small" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmailId" ErrorMessage="*Enter valid Email ID" 
                    Font-Size="Small" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Contact Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtContactNo" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtContactNo" ErrorMessage="*Enter Contact Number" 
                    Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Security Question"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddSecurityQues" runat="server">
                    <asp:ListItem>Favourite Dish</asp:ListItem>
                    <asp:ListItem>Favourite Restaurant</asp:ListItem>
                    <asp:ListItem>Birth Place</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Security Answer"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSecurityAns" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtSecurityAns" ErrorMessage="*Enter Security Answer" 
                    Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
            </td>
            <td class="style9">
                <asp:Image ID="imgCaptcha" runat="server" Height="75px" Width="185px" />
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="Label9" runat="server" Text="Captcha"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="txtCaptcha" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtCaptcha" ErrorMessage="*Enter Captcha Value" 
                    Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btSignUp" runat="server" Text="Sign Up" 
                    onclick="btSignUp_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
