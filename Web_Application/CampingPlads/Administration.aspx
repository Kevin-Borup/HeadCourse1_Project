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
                <div>
                <asp:GridView ID="GridView5" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="Admin_ArrivingToday" ForeColor="Black" GridLines="Horizontal" CssClass="grid">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" CssClass="gridHeader" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                </div>
               <asp:SqlDataSource ID="Admin_ArrivingToday" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [ArrivingToday]"></asp:SqlDataSource>
            </div>
            <%-- To be cleaned --%>
            <div>
                <h6>Rengøres i dag</h6>
                <div>
                <asp:GridView ID="GridView6" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="Admin_CleanToday" ForeColor="Black" GridLines="Horizontal" CssClass="grid">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" CssClass="gridHeader" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                </div>
                <asp:SqlDataSource ID="Admin_CleanToday" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [CleanToday]"></asp:SqlDataSource>
            </div>
        </section>
        <%-- Interactive --%>
        <section>
            <%-- Arrived --%>
            <div>
                <h6>Ankommet</h6>
                <div>
                <asp:GridView ID="GridView7" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="Admin_Arrived" ForeColor="Black" GridLines="Horizontal" CssClass="grid">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" CssClass="gridHeader" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                </div>
                <asp:SqlDataSource ID="Admin_Arrived" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [Arrived]"></asp:SqlDataSource>
            </div>
            <%-- Cleaned --%>
            <div>
                <h6>Rengjort</h6>
                <div>
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="grid" DataSourceID="Admin_Cleaned" ForeColor="Black" GridLines="Horizontal" ShowHeaderWhenEmpty="True" HeaderStyle-CssClass="gridHeader">
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" CssClass="gridHeader" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                </div>
                <asp:SqlDataSource ID="Admin_Cleaned" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [Cleaned]"></asp:SqlDataSource>
            </div>
        </section>
        <%-- Overview --%>
        <section>
            <%-- Customers --%>
            <div>
                <h6>Kunder</h6>
                <div>
                <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" DataSourceID="Admin_Customers" CssClass="grid">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" CssClass="gridHeader" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                </div>
                <asp:SqlDataSource ID="Admin_Customers" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
            </div>
            <%-- Reservations --%>
            <div>
                <h6>Reservationer</h6>
                <div>
                <asp:GridView ID="GridView8" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="Admin_Reservations" ForeColor="Black" GridLines="Horizontal" CssClass="grid">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" CssClass="gridHeader" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView> 
                    </div>
                <asp:SqlDataSource ID="Admin_Reservations" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [Reservations]"></asp:SqlDataSource>
            </div>
        </section>
        <%-- Site list --%>
        <section>
            <%-- Cabins --%>
            <div>
                <h6>Hytter</h6>
                <div>
                <asp:GridView ID="GridView3" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="Admin_Cabins" ForeColor="Black" GridLines="Horizontal" CssClass="grid">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" CssClass="gridHeader" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                </div>
                <asp:SqlDataSource ID="Admin_Cabins" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [Cabin]"></asp:SqlDataSource>          
            </div>
            <%-- Campsites --%>
            <div>
                <h6>Pladser</h6>
                <div>
                <asp:GridView ID="GridView4" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="Admin_Campsites" ForeColor="Black" GridLines="Horizontal" CssClass="grid">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" CssClass="gridHeader" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                </div>
                <asp:SqlDataSource ID="Admin_Campsites" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT * FROM [CampSite]"></asp:SqlDataSource>
            </div>
        </section>
    </main>
</asp:Content>
