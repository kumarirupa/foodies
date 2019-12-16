<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewRestaurants.aspx.cs" Inherits="Foodies.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <center>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Restaurants"></asp:Label></center>
        <br />
        <br />
        <br />
       <center><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="RId" DataSourceID="SqlDataSource1" 
        ForeColor="Black" GridLines="Vertical" Height="257px" Width="873px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="RId" HeaderText="RId" InsertVisible="False" 
                ReadOnly="True" SortExpression="RId" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="UId" HeaderText="UId" SortExpression="UId" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="Location" HeaderText="Location" 
                SortExpression="Location" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:ImageField DataImageUrlField="RImage" HeaderText="Restaurant Image">
            <ControlStyle Height="100px" Width="150px"/>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [RId], [UId], [Name], [Location], [City], [RImage] FROM [Restaurants]">
    </asp:SqlDataSource>
</asp:Content>
