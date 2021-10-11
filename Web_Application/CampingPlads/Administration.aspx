<%@ Page Title="FN Administrator" Language="C#" MasterPageFile="~/MainSetup.Master" AutoEventWireup="true" CodeBehind="Administration.aspx.cs" Inherits="CampingPlads.Administration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/ContentStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyField="Number" DataSourceID="AdminCabinList" ForeColor="Black" GridLines="Horizontal">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
                Cabins
            </HeaderTemplate>
            <ItemTemplate>
                Cabin
                <asp:Label ID="NumberLabel" runat="server" Text='<%# Eval("Number") %>' />
                : Variant:
                <asp:Label ID="VariantLabel" runat="server" Text='<%# Eval("Variant") %>' />
                &nbsp;- Cleaned:
                <asp:Label ID="CleanedLabel" runat="server" Text='<%# Eval("Cleaned") %>' />
                &nbsp;- Available:
                <asp:Label ID="AvailableLabel" runat="server" Text='<%# Eval("Available") %>' />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="AdminCabinList" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [Cabin]"></asp:SqlDataSource>
    </main>
</asp:Content>
