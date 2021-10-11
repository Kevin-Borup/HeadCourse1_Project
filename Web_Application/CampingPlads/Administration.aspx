<%@ Page Title="FN Administrator" Language="C#" MasterPageFile="~/MainSetup.Master" AutoEventWireup="true" CodeBehind="Administration.aspx.cs" Inherits="CampingPlads.Administration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/AdministrationSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Number" DataSourceID="Admin_Cabins" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                Cabin:
                <asp:Label ID="NumberLabel" runat="server" Text='<%# Eval("Number") %>' />
                <br />
                Variant:
                <asp:Label ID="VariantLabel" runat="server" Text='<%# Eval("Variant") %>' />
                <br />
                Cleaned:
                <asp:Label ID="CleanedLabel" runat="server" Text='<%# Eval("Cleaned") %>' />
                <br />
                Available:
                <asp:Label ID="AvailableLabel" runat="server" Text='<%# Eval("Available") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="Admin_Cabins" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [Cabin]"></asp:SqlDataSource>
        
        <asp:DataList ID="DataList2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="Admin_GuestsArrivingToday" ForeColor="Black" GridLines="Horizontal">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                FullName:
                <asp:Label ID="FullNameLabel" runat="server" Text='<%# Eval("FullName") %>' />
                <br />
                Adult:
                <asp:Label ID="AdultLabel" runat="server" Text='<%# Eval("Adult") %>' />
                <br />
                Child:
                <asp:Label ID="ChildLabel" runat="server" Text='<%# Eval("Child") %>' />
                <br />
                CabinNumber:
                <asp:Label ID="CabinNumberLabel" runat="server" Text='<%# Eval("CabinNumber") %>' />
                <br />
                CampSitenumber:
                <asp:Label ID="CampSitenumberLabel" runat="server" Text='<%# Eval("CampSitenumber") %>' />
                <br />
                StartDate:
                <asp:Label ID="StartDateLabel" runat="server" Text='<%# Eval("StartDate") %>' />
                <br />
                EndDate:
                <asp:Label ID="EndDateLabel" runat="server" Text='<%# Eval("EndDate") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="Admin_GuestsArrivingToday" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [ArrivingToday]"></asp:SqlDataSource>
        
        <asp:DataList ID="DataList3" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="Admin_CleanToday" ForeColor="Black" GridLines="Horizontal">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                CabinNumber:
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("CabinNumber") %>' />
                <br />
                EndDate:
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("EndDate") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="Admin_CleanToday" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [CleanToday]"></asp:SqlDataSource>
        
        <asp:DataList ID="DataList4" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="Admin_Customers" ForeColor="Black" GridLines="Horizontal">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                FullName:
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("FullName") %>' />
                <br />
                CabinNumber:
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("CabinNumber") %>' />
                <br />
                CampSiteNumber:
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("CampSiteNumber") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                PhoneNr:
                <asp:Label ID="PhoneNrLabel" runat="server" Text='<%# Eval("PhoneNr") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="Admin_Customers" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
        
        <asp:DataList ID="DataList5" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyField="CustomerNr" DataSourceID="Admin_GuestsArrived" ForeColor="Black" GridLines="Horizontal">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                CustomerNr:
                <asp:Label ID="CustomerNrLabel" runat="server" Text='<%# Eval("CustomerNr") %>' />
                <br />
                Arrived:
                <asp:Label ID="ArrivedLabel" runat="server" Text='<%# Eval("Arrived") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
        <asp:SqlDataSource ID="Admin_GuestsArrived" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [Arrived]"></asp:SqlDataSource>
        <asp:DataList ID="DataList6" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyField="ReserveId" DataSourceID="Admin_Reservations" ForeColor="Black" GridLines="Horizontal">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                ReserveId:
                <asp:Label ID="ReserveIdLabel" runat="server" Text='<%# Eval("ReserveId") %>' />
                <br />
                FullName:
                <asp:Label ID="Label6" runat="server" Text='<%# Eval("FullName") %>' />
                <br />
                CabinNumber:
                <asp:Label ID="Label7" runat="server" Text='<%# Eval("CabinNumber") %>' />
                <br />
                CampSiteNumber:
                <asp:Label ID="Label8" runat="server" Text='<%# Eval("CampSiteNumber") %>' />
                <br />
                StartDate:
                <asp:Label ID="Label9" runat="server" Text='<%# Eval("StartDate") %>' />
                <br />
                EndDate:
                <asp:Label ID="Label10" runat="server" Text='<%# Eval("EndDate") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="Admin_Reservations" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [Reservations]"></asp:SqlDataSource>
    </main>
</asp:Content>
