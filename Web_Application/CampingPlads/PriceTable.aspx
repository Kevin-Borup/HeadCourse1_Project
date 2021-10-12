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
                <%-- PersonPrice --%>
                <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="PersonPrice" ForeColor="#333333" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderTemplate>
                        Kundepriser
                    </HeaderTemplate>
                    <ItemStyle BackColor="#E3EAEB" />
                    <ItemTemplate>
                        <asp:Label ID="ItemLabel" runat="server" Text='<%# Eval("Item") %>' />
                        &nbsp;&nbsp;<asp:Label ID="ActiveSeasonLabel" runat="server" Text='<%# Eval("ActiveSeason") %>' />
                        &nbsp;
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price", "{0:C}") %>' />
                        <br />
<br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
                <asp:SqlDataSource ID="PersonPrice" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [PersonPrice]"></asp:SqlDataSource>
                <%-- OrderingCost --%>
                <asp:DataList ID="DataList2" runat="server" CellPadding="4" DataKeyField="Item" DataSourceID="OrderingCost" ForeColor="#333333" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderTemplate>
                        Reservationsspriser
                    </HeaderTemplate>
                    <ItemStyle BackColor="#E3EAEB" />
                    <ItemTemplate>
                        <asp:Label ID="ItemLabel" runat="server" Text='<%# Eval("Item") %>' />
&nbsp;&nbsp;<asp:Label ID="ActiveSeasonLabel" runat="server" Text='<%# Eval("ActiveSeason") %>' />
&nbsp;
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price", "{0:C}") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
                <asp:SqlDataSource ID="OrderingCost" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [OrderingCost]"></asp:SqlDataSource>
                <%-- SeasonTicker --%>
                <asp:DataList ID="DataList3" runat="server" CellPadding="4" DataKeyField="Item" DataSourceID="SeasonTicket" ForeColor="#333333">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderTemplate>
                        Sæsonpladspriser
                    </HeaderTemplate>
                    <ItemStyle BackColor="#E3EAEB" />
                    <ItemTemplate>
                        &nbsp;<asp:Label ID="ItemLabel" runat="server" Text='<%# Eval("Item") %>' />
                        &nbsp;
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price", "{0:C}") %>' />
                        <br />
<br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
                <asp:SqlDataSource ID="SeasonTicket" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [SeasonTicket]"></asp:SqlDataSource>
                <%-- AddonCost --%>
                <asp:DataList ID="DataList4" runat="server" CellPadding="4" DataKeyField="Item" DataSourceID="AddonCost" ForeColor="#333333" ShowFooter="False">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderTemplate>
                        Tillægspriser
                    </HeaderTemplate>
                    <ItemStyle BackColor="#E3EAEB" />
                    <ItemTemplate>
                        <asp:Label ID="ItemLabel" runat="server" Text='<%# Eval("Item") %>' />
                        &nbsp;<asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price", "{0:C}") %>' />
                        <br />
<br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
                <asp:SqlDataSource ID="AddonCost" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [AddonCost]"></asp:SqlDataSource>
            </div>
        </section>
    </main>
</asp:Content>