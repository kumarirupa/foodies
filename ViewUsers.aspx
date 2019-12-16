<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewUsers.aspx.cs" Inherits="Foodies.WebForm22" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
        <center><asp:Label ID="Label1" runat="server" Text="Users Details" 
                Font-Size="X-Large"></asp:Label></center>
    </p>
    <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" DataKeyNames="UId" DataSourceID="SqlDataSource2" 
            ForeColor="Black" GridLines="Vertical" Height="272px" Width="926px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="UId" HeaderText="UId" InsertVisible="False" 
                    ReadOnly="True" SortExpression="UId" />
                <asp:BoundField DataField="UName" HeaderText="UName" SortExpression="UName" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="EMail" HeaderText="EMail" SortExpression="EMail" />
                <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
                    SortExpression="ContactNo" />
                <asp:BoundField DataField="SecurityQues" HeaderText="SecurityQues" 
                    SortExpression="SecurityQues" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [UId], [UName], [Type], [EMail], [ContactNo], [SecurityQues] FROM [UserDetails]">
        </asp:SqlDataSource>
    <p>
    </p>
</asp:Content>
