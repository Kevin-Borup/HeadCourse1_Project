<%@ Page Title="Fårup Natur Camping | Området" Language="C#" MasterPageFile="~/MainSetup.Master" AutoEventWireup="true" CodeBehind="area.aspx.cs" Inherits="CampingPlads.area" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/ContentStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <article>
            <h2>Området</h2>
            <p>
                Smukke Midtjylland, Lalandia, Givskud Zoo, Legoland. 
                Direkte adgang til å, med gode fiskemuligheder samt mulighed for udlejning af kajakker og kanoer.
            </p>
        </article>
        <section class="area">
            <%-- Lalandia --%>
            <div>
                <h4>Lalandia</h4>
                <p>Nærliggende Lalandia</p>
                <a href="https://www.lalandia.dk/da-dk/billund">Lalandia</a>
            </div>
            <%-- Givskud Zoo --%>
            <div>
                <h4>Givskud Zoo</h4>
                <p>Nærliggende Givskud Zoo</p>
                <a href="https://www.givskudzoo.dk/">Givskud Zoo</a>
            </div>
            <%-- Legoland --%>
            <div>
                <h4>Legoland</h4>
                <p>Nærliggende Legoland</p>
                <a href="https://www.legoland.dk/">Legoland</a>
            </div>
            <%-- Fiske --%>
            <div>
                <h4>Fiskning</h4>
                <p>Mulighed for at fiske</p>
            </div>
            <%-- Kajak og Kanoer --%>
            <div>
                <h4>Kajakker & Kanoer</h4>
                <p>Mulighed for at ro i Kano og Kajak</p>
            </div>
            <%-- Natur --%>
            <div>
                <h4>Naturen</h4>
                <p>Mulighed for at udforske den flotte natur</p>
            </div>
        </section>
    </main>
</asp:Content>
