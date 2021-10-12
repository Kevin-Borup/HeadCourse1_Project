<%@ Page Title="Fårup Natur Camping | Prisskema" Language="C#" MasterPageFile="~/MainSetup.Master" AutoEventWireup="true" CodeBehind="PriceTable.aspx.cs" Inherits="CampingPlads.PriceTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/PriceTableSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <section>
            <%-- Prisskema med synkroniseret med serverens tabels --%>
            <header>
                <h4>Prisskema</h4>
                <p><strong>Højsæson:</strong> 14. juni <span class="arrow material-icons">trending_flat</span> 15. august</p>
                <p><strong>Lavsæson:</strong> 1. januar <span class="arrow material-icons">trending_flat</span> 14. juni & 15. august <span class="arrow material-icons">trending_flat</span> 31. december</p>
                <p>Alle priser er i DKK inkl. moms </p>
            </header>
            <%-- Pricetable --%>
            <div class="pricetable">
                <%-- OrderingCost --%>
                <asp:GridView ID="OrderingCostGrid" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="OrderingCost" ForeColor="Black" GridLines="Horizontal">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="OrderingCost" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [OrderingCost]"></asp:SqlDataSource>
                <%-- SeasonTicket --%>
                <asp:GridView ID="SeasonTicketGrid" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SeasonTicket" ForeColor="Black" GridLines="Horizontal">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SeasonTicket" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [SeasonTicket]"></asp:SqlDataSource>
                <%-- AddonCost --%>
                <asp:GridView ID="AddonCostGrid" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="AddonCost" ForeColor="Black" GridLines="Horizontal">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="AddonCost" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [AddonCost]"></asp:SqlDataSource>
            </div>
        </section>
    </main>
</asp:Content>