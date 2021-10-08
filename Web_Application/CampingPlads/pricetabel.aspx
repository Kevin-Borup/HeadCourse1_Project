<%@ Page Title="Fårup Natur Camping |  Prisskema" Language="C#" MasterPageFile="~/MainSetup.Master" AutoEventWireup="true" CodeBehind="pricetabel.aspx.cs" Inherits="CampingPlads.pricetabel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/ContentStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>

        <section>
            <%-- Prisskema med synkroniseret med serverens tabels --%>
            <header>
                <h4>Prisskema</h4>
                <p><strong>Højsæson:</strong> 14. juni <span class="arrow material-icons">trending_flat</span> 15. august</p>
                <p><strong>Lavsæson:</strong> 1. januar 14. juni & 15. august 31. december</p>
                <p>Alle priser er i DKK inkle. moms </p>
            </header>
            <%-- Pricetable --%>
            <div>
                <%-- PersonPrice --%>
                <%-- OrderingCost --%>
                <%-- SeasonTicker --%>
                <%-- AddonCost --%>
            </div>
        </section>

    </main>
</asp:Content>
