<%@ Page Title="Fårup Natur Camping |  Sæsonplads" Language="C#" MasterPageFile="~/MainSetup.Master" AutoEventWireup="true" CodeBehind="seasonticket.aspx.cs" Inherits="CampingPlads.seasonticket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/ContentStyleSheet.css" rel="stylesheet" />
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
                <h6>Prisen: </h6>
                <a href="#">Bestil plads</a>
            </div>
            <%-- Sommer --%>
            <div>
                
                <h4>Sommerplads</h4>
                <h6>Prisen: </h6>
                <a href="#">Bestil plads</a>
            </div>
            <%-- Efterår --%>
            <div>
                
                <h4>Efterårsplads</h4>
                <h6>Prisen: </h6>
                <a href="#">Bestil plads</a>
            </div>
            <%-- Vinter --%>
            <div>
                
                <h4>Vinterplads</h4>
                <h6>Prisen: </h6>
                <a href="#">Bestil plads</a>
            </div>
        </div>
    </main>
</asp:Content>
