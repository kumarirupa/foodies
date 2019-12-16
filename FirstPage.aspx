<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FirstPage.aspx.cs" Inherits="Foodies.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    
    <asp:Image ID="Image1" runat="server" Height="180%" Width="100%" 
        ImageUrl="~/Images/18.jpg" style="opacity:0.9"/>
    <asp:Label ID="Label1" runat="server" Text="Foodies!..." 
        style="position:absolute;  font-size:100px; top: 338px; left: 21px; height: 115px; width: 491px; margin-bottom: 0px;" 
        Font-Size="XX-Large" Font-Names="Footlight MT Light" ForeColor="White"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Welcome to" 
                style="position:absolute; top: 302px; left: 28px;" 
                Font-Names="Freestyle Script" Font-Size="40px" ForeColor="White"></asp:Label>
                <asp:LinkButton ID="LinkButton1" runat="server" 
        style="position:absolute; top: 439px; left: 73px; height: 27px;" Font-Size="X-Large" 
        ForeColor="White" onclick="LinkButton1_Click">Login</asp:LinkButton>

            <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click" style="position:absolute; top: 439px; left: 160px; height: 27px;" Font-Size="X-Large" 
        ForeColor="White">Sign Up</asp:LinkButton>
        <asp:Label ID="Label4" runat="server" Text="|" 
        style="position:absolute;  font-size:30px; top: 436px; left: 135px; height: 27px; width: 17px;" 
        Font-Size="XX-Small" Font-Names="Footlight MT Light" ForeColor="White"></asp:Label>
</asp:Content>
