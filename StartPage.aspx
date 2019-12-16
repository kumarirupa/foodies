<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StartPage.aspx.cs" Inherits="Foodies.StartPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Image ID="Image1" runat="server" Height="180%" Width="100%" 
        ImageUrl="~/Images/18.jpg" style="opacity:0.9"/>
    <asp:Label ID="Label1" runat="server" Text="Foodies!..." 
        style="position:absolute;  font-size:100px; top: 260px; left: 21px; height: 115px; width: 491px; margin-bottom: 0px;" 
        Font-Size="XX-Large" Font-Names="Footlight MT Light" ForeColor="White"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Welcome to" 
                style="position:absolute; top: 236px; left: 28px;" 
                Font-Names="Freestyle Script" Font-Size="40px" ForeColor="White"></asp:Label>
                <asp:LinkButton ID="LinkButton1" runat="server" 
        style="position:absolute; top: 355px; left: 73px;" Font-Size="X-Large" 
        ForeColor="White" onclick="LinkButton1_Click">Login</asp:LinkButton>


        <asp:LinkButton ID="LinkButton2" runat="server" 
        style="position:absolute; top: 355px; left: 158px; height: 27px;" Font-Size="X-Large" 
        ForeColor="White" onclick="LinkButton2_Click">Sign Up</asp:LinkButton>

        <asp:Label ID="Label4" runat="server" Text="|" 
        style="position:absolute;  font-size:30px; top: 355px; left: 135px; height: 27px; width: 17px;" 
        Font-Size="XX-Small" Font-Names="Footlight MT Light" ForeColor="White"></asp:Label>
    </div>
    </form>
</body>
</html>
