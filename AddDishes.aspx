<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddDishes.aspx.cs" Inherits="Foodies.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            height: 27px;
            width: 379px;
        }
        .style15
        {
            width: 767px;
        }
        .style16
        {
            height: 27px;
            width: 767px;
        }
        .style17
        {
            width: 379px;
        }
        .style18
        {
            width: 379px;
            height: 39px;
        }
        .style19
        {
            width: 767px;
            height: 39px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td class="style15">
                <asp:Label ID="Label1" runat="server" Text="Add Dishes"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="Label2" runat="server" Text="Dish Category"></asp:Label>
            </td>
            <td class="style15">
                <asp:DropDownList ID="ddDishCategory" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="CategoryName" 
                    DataValueField="CategoryName" Height="18px" Width="199px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [CategoryName] FROM [DishCategory]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="Label3" runat="server" Text="Restaurant"></asp:Label>
            </td>
            <td class="style16">
                <asp:DropDownList ID="ddRestaurant" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" 
                    Height="17px" Width="195px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Name] FROM [Restaurants]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="Label4" runat="server" Text="Dish Name"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="txtDishName" runat="server"></asp:TextBox>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="Label5" runat="server" Text="Amount"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="Label6" runat="server" Text="Image"></asp:Label>
            </td>
            <td class="style15">
                <asp:FileUpload ID="fuDish" runat="server" />
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Image ID="Image2" runat="server" Height="118px" Width="193px" />
            </td>
        </tr>
        <tr>
            <td class="style18">
                </td>
            <td class="style19">
                <asp:Button ID="btAddDish" runat="server" Text="Add" onclick="btAddDish_Click" 
                    Width="131px" />
            </td>
        </tr>
    </table>
</asp:Content>
