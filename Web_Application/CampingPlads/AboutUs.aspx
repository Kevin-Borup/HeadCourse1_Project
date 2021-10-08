<%@ Page Title="Fårup Natur Camping | Om Os" Language="C#" MasterPageFile="~/MainSetup.Master" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="CampingPlads.aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link href="css/ContentStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <article>
            <h2>Om familien Fårup Natur Camping</h2>
            <div class="polaroid">
                <img src="media/img/aboutus/JorgenBirthe.png" alt="Jøren & Birthe Carlsen">
                <div class="container">
                    <p>Jørgen & Birthe Carlsen</p>
                </div>
            </div>
            <p class="leftOfImg">
                Birthe og Jørgen Carlsen har efter stor overvejelse valgt at købe en campingplads 
            hvor de kan være fælles om arbejdet med drift og servicering af gæster ikke mindst. 
            Campingpladsen har undergået en enorm renovering så alt fremstår som næsten nyt.
            </p>
        </article>
        <section>
            <%-- Prisskema med synkroniseret med serverens tabels --%>
            <header>
                <h4>Prisskema</h4>
                <p><strong>Højsæson:</strong> 14. juni <span class="arrow material-icons">trending_flat</span> 15. august</p>
                <p><strong>Lavsæson:</strong> 1. januar 14. juni & 15. august 31. december</p>
                <p>Alle priser er i DKK inkle. moms </p>
            </header>
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="Item" DataSourceID="CampingPladsData" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#333333" HorizontalAlign="Left">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" HorizontalAlign="Right" VerticalAlign="Top" Wrap="False" />
                <HeaderTemplate>
                    Tillæg Pris
                </HeaderTemplate>
                <ItemStyle BackColor="#E3EAEB" Wrap="False" />
                <ItemTemplate>
                    &nbsp;<asp:Label ID="ItemLabel" runat="server" Text='<%# Eval("Item") %>' />
                    &nbsp;<asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price", "{0:C}") %>' />
<br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
            <asp:SqlDataSource ID="CampingPladsData" runat="server" ConnectionString="<%$ ConnectionStrings:FNCampingDatabase %>" SelectCommand="SELECT [Item], [Price] FROM [AddonCost]"></asp:SqlDataSource>
        </section>
    </main>
</asp:Content>
