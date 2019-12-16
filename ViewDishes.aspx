<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewDishes.aspx.cs" Inherits="Foodies.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
   <center> <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Dishes"></asp:Label></center>
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [DId], [DCId], [RId], [DishName], [Price], [DishImage] FROM [Dishes]">
    </asp:SqlDataSource>
    <center><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" Height="80px" Width="1086px" CellPadding="3" 
        ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#999999" 
            BorderStyle="Solid" BorderWidth="1px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="DId" HeaderText="DId" InsertVisible="False" 
                ReadOnly="True" SortExpression="DId" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="Large" />
            </asp:BoundField>
            <asp:BoundField DataField="DCId" HeaderText="DCId" SortExpression="DCId" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="Large" />
            </asp:BoundField>
            <asp:BoundField DataField="RId" HeaderText="RId" SortExpression="RId" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="Large" />
            </asp:BoundField>
            <asp:BoundField DataField="DishName" HeaderText="DishName" 
                SortExpression="DishName" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="Large" />
            </asp:BoundField>
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="Large" />
            </asp:BoundField>
            <asp:ImageField DataImageUrlField="DishImage" HeaderText="Dish Image" >
            <ControlStyle Height="100px" Width="150px"/>
                <ItemStyle Height="5px" Width="5px" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
            </asp:ImageField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView></center>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
