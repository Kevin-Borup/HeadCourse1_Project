<%@ Page Title="Fårup Natur Camping | Sæsonplads" Language="C#" MasterPageFile="~/MainSetup.Master" AutoEventWireup="true" CodeBehind="SeasonTicket.aspx.cs" Inherits="CampingPlads.SeasonTicket" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/SeasonTicketSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <h1>Sæsonplads</h1>
        <p>Ønsker du at bruge din campingvogn ofte, uden at skulle bøvle med at stille den op og tage den ned hver gang, kan du købe en sæsonplads. Her bliver vognen stående på den samme plads, så længe du ønsker det, og du kan besøge den så ofte, du ønsker. Hvis du gerne vil have vognen bliver stående hele året, tilbyder vi nu begrænset vintercamping for sæsongæster.</p>
        <%-- De 4 sæsonpladser --%>
        <div class="season">
            <%-- Forår --%>
            <div>
                <h4>Forårsplads</h4>
                <h6>med prisen: </h6>
                <p>
                    <asp:Label ID="FallLabel" runat="server" Text="Label"></asp:Label>
                </p>
                <p>
                    Periode:
                    <br />
                    01/04 - 30/06
                </p>
                <asp:Button ID="FallButton" runat="server" Text="Bestil Plads" OnClick="FallButton_Click" />
            </div>
            <%-- Sommer --%>
            <div>
                <h4>Sommerplads</h4>
                <h6>med prisen: </h6>
                <p>
                    <asp:Label ID="SummerLabel" runat="server" Text="Label"></asp:Label>
                </p>
                <p>
                    Periode:
                    <br />
                    01/07 - 14/08
                </p>
                <asp:Button ID="SummerButton" runat="server" Text="Bestil Plads" OnClick="SummerButton_Click" />
            </div>
            <%-- Efterår --%>
            <div>
                <h4>Efterårsplads</h4>
                <h6>med prisen: </h6>
                <p>
                    <asp:Label ID="SpringLabel" runat="server" Text="Label"></asp:Label>
                </p>
                <p>
                    Periode:
                    <br />
                    15/08 - 31/10
                </p>
                <asp:Button ID="SpringButton" runat="server" Text="Bestil Plads" OnClick="SpringButton_Click" />
            </div>
            <%-- Vinter --%>
            <div>
                <h4>Vinterplads</h4>
                <h6>med prisen: </h6>
                <p>
                    <asp:Label ID="WinterLabel" runat="server" Text="Label"></asp:Label>
                </p>
                <p>
                    Periode:
                    <br />
                    01/11 - 31/03
                </p>
                <asp:Button ID="WinterButton" runat="server" Text="Bestil Plads" OnClick="WinterButton_Click" />
            </div>
        </div>
    </main>
</asp:Content>