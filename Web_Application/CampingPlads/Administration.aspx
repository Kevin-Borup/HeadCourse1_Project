<%@ Page Title="FN Administrator" Language="C#" MasterPageFile="~/MainSetup.Master" AutoEventWireup="true" CodeBehind="Administration.aspx.cs" Inherits="CampingPlads.Administration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/AdministrationSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <%-- To-Do today --%>
        <section>
            <%-- Arriving today --%>
            <div>
                <h6>Ankommer i dag</h6>
                <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="Admin_ArrivingToday" ForeColor="Black" GridLines="Horizontal">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />                    
                    <ItemTemplate>
                        &nbsp;<asp:Label ID="FullNameLabel" runat="server" Text='<%# Eval("FullName") %>' />
                        &nbsp;<asp:Label ID="AdultLabel" runat="server" Text='<%# Eval("Adult") %>' />
                        &nbsp;<asp:Label ID="ChildLabel" runat="server" Text='<%# Eval("Child") %>' />
                        &nbsp;<asp:Label ID="CabinNumberLabel" runat="server" Text='<%# Eval("CabinNumber") %>' />
                        &nbsp;<asp:Label ID="CampSitenumberLabel" runat="server" Text='<%# Eval("CampSitenumber") %>' />
                        &nbsp;<asp:Label ID="StartDateLabel" runat="server" Text='<%# Eval("StartDate") %>' />
                        &nbsp;<asp:Label ID="EndDateLabel" runat="server" Text='<%# Eval("EndDate") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <asp:SqlDataSource ID="Admin_ArrivingToday" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [ArrivingToday]"></asp:SqlDataSource>
            </div>
            <%-- To be cleaned --%>
            <div>
                <h6>Rengøres i dag</h6>
                <asp:DataList ID="DataList6" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="Admin_CleanToday" ForeColor="Black" GridLines="Horizontal">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <ItemTemplate>
                        CabinNumber:
                        <asp:Label ID="CabinNumberLabel" runat="server" Text='<%# Eval("CabinNumber") %>' />
                        <br />
                        EndDate:
                        <asp:Label ID="EndDateLabel" runat="server" Text='<%# Eval("EndDate") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <asp:SqlDataSource ID="Admin_CleanToday" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [CleanToday]"></asp:SqlDataSource>
            </div>
        </section>
        <%-- Interactive --%>
        <section>
            <%-- Arrived --%>
            <div>
                <h6>Ankommet</h6>
                <asp:DataList ID="DataList7" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyField="CustomerNr" DataSourceID="Admin_Arrived" ForeColor="Black" GridLines="Horizontal">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <ItemTemplate>
                        <asp:Label ID="CustomerNrLabel" runat="server" Text='<%# Eval("CustomerNr") %>' />
                        &nbsp;<asp:Label ID="ArrivedLabel" runat="server" Text='<%# Convert.ToInt32(Eval("Arrived")) == 1 ? "Ankommet" : "Ikke ankommet" %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <asp:SqlDataSource ID="Admin_Arrived" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [Arrived]"></asp:SqlDataSource>
            </div>
            <%-- Cleaned --%>
            <div>
                <h6>Rengjort</h6>
                <asp:DataList ID="DataList8" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyField="Number" DataSourceID="Admin_Cleaned" ForeColor="Black" GridLines="Horizontal">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <ItemTemplate>
                        <asp:Label ID="NumberLabel" runat="server" Text='<%# Eval("Number") %>' />
                        &nbsp;<asp:Label ID="CleanedLabel" runat="server" Text='<%# Convert.ToInt32(Eval("Cleaned")) == 1 ? "Rengjort" : "Ikke rengjort" %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <asp:SqlDataSource ID="Admin_Cleaned" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [Cleaned]"></asp:SqlDataSource>
            </div>
        </section>
        <%-- Overview --%>
        <section>
            <%-- Customers --%>
            <div>
                <h6>Kunder</h6>
                <asp:DataList ID="DataList5" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="Admin_Customers" ForeColor="Black" GridLines="Horizontal">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <ItemTemplate>
                        <asp:Label ID="FullNameLabel" runat="server" Text='<%# Eval("FullName") %>' />
                        &nbsp;<asp:Label ID="CabinNumberLabel" runat="server" Text='<%# Eval("CabinNumber") %>' />
                        &nbsp;<asp:Label ID="CampSiteNumberLabel" runat="server" Text='<%# Eval("CampSiteNumber") %>' />
                        &nbsp;<asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                        &nbsp;<asp:Label ID="PhoneNrLabel" runat="server" Text='<%# Eval("PhoneNr") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <asp:SqlDataSource ID="Admin_Customers" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
            </div>
            <%-- Reservations --%>
            <div>
                <h6>Reservationer</h6>
                <asp:DataList ID="DataList4" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyField="ReserveId" DataSourceID="Admin_Reservations" ForeColor="Black" GridLines="Horizontal">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <ItemTemplate>
                        <asp:Label ID="ReserveIdLabel" runat="server" Text='<%# Eval("ReserveId") %>' />
                        &nbsp;<asp:Label ID="FullNameLabel" runat="server" Text='<%# Eval("FullName") %>' />
                        &nbsp;<asp:Label ID="CabinNumberLabel" runat="server" Text='<%# Eval("CabinNumber") %>' />
                        &nbsp;<asp:Label ID="CampSiteNumberLabel" runat="server" Text='<%# Eval("CampSiteNumber") %>' />
                        &nbsp;<asp:Label ID="StartDateLabel" runat="server" Text='<%# Eval("StartDate") %>' />
                        &nbsp;<asp:Label ID="EndDateLabel" runat="server" Text='<%# Eval("EndDate") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <asp:SqlDataSource ID="Admin_Reservations" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [Reservations]"></asp:SqlDataSource>
            </div>
        </section>
        <%-- Site list --%>
        <section>
            <%-- Cabins --%>
            <div>
                <h6>Hytter</h6>
                <asp:DataList ID="DataList2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyField="Number" DataSourceID="Admin_Cabins" ForeColor="Black" GridLines="Horizontal">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="False" ForeColor="White" />
                    <HeaderTemplate>
                        <table>
                            <tr>
                                <td><b>HytteNummer</b></td>
                                <td><b>Type</b></td>
                                <td><b>Rengjort</b></td>
                                <td><b>Udlejet</b></td>
                            </tr>
                        </table>
                    </HeaderTemplate>
                    <HeaderTemplate>
                        <td><b>HytteNum</b></td>
                                <td><b>Ty</b></td>
                                <td><b>Rjort</b></td>
                                <td><b>Ujet</b></td>
                        </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="NumberLabel" runat="server" Text='<%# Eval("Number") %>' />
                        &nbsp;<asp:Label ID="VariantLabel" runat="server" Text='<%# Convert.ToInt32(Eval("Variant")) == 1 ? "Luksus" : "Standard" %>' />
                        &nbsp;<asp:Label ID="CleanedLabel" runat="server" Text='<%# Convert.ToInt32(Eval("Cleaned")) == 1 ? "Rengjort" : "Ikke rengjort" %>' />
                        &nbsp;<asp:Label ID="AvailableLabel" runat="server" Text='<%# Convert.ToInt32(Eval("Available")) == 1 ? "Ikke udlejet" : "Udlejet" %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <asp:SqlDataSource ID="Admin_Cabins" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [Cabin]"></asp:SqlDataSource>
            </div>
            <%-- Campsites --%>
            <div>
                <h6>Pladser</h6>
                <asp:DataList ID="DataList3" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyField="Number" DataSourceID="Admin_Campsites" ForeColor="Black" GridLines="Horizontal" RepeatColumns="4" RepeatDirection="Horizontal">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <ItemTemplate>
                        <asp:Label ID="NumberLabel" runat="server" Text='<%# Eval("Number") %>' />
                        &nbsp;<asp:Label ID="SizeLabel" runat="server" Text='<%# Convert.ToInt32(Eval("Size")) == 1 ? "Stor" : "Lille" %>' />
                        <asp:Label ID="SeaViewLabel" runat="server" Text='<%# Convert.ToInt32(Eval("SeaView")) == 1 ? "Havudsigt" : "Ingen havudsigt" %>' />
                        &nbsp;<asp:Label ID="AvailableLabel" runat="server" Text='<%# Convert.ToInt32(Eval("Available")) == 1 ? "Ikke udlejet" : "Udlejet" %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <asp:SqlDataSource ID="Admin_Campsites" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [CampSite]"></asp:SqlDataSource>
            </div>
        </section>
    </main>
</asp:Content>
