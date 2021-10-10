<%@ Page Title="Fårup Natur Camping | Området" Language="C#" MasterPageFile="~/MainSetup.Master" AutoEventWireup="true" CodeBehind="Area.aspx.cs" Inherits="CampingPlads.Area" %>

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
            <div class="areaLeft">
                <div class="areaCon">
                    <a href="https://www.lalandia.dk/da-dk/billund" target="_blank">
                        <img class="areaImg" src="media/img/area/fnLalandia.jpg" alt="Billede af Lalandia" />
                        <div class="areaMid">
                            <div class="areaText">
                                <h4>Lalandia</h4>
                                <p class="areaButton"><strong>LÆS MERE</strong></p>
                            </div>
                        </div>
                    </a>

                </div>
            </div>
            <%-- Givskud Zoo --%>
            <div>
                <div class="areaCon">
                    <a href="https://www.givskudzoo.dk/" target="_blank">
                        <img class="areaImg" src="media/img/area/fnGivskud.jpg" alt="Billede af Givskud Zoo" />
                        <div class="areaMid">
                            <div class="areaText">
                                <h4>Givskud Zoo</h4>
                                <p class="areaButton"><strong>LÆS MERE</strong></p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <%-- Legoland --%>
            <div class="areaRight">
                <div class="areaCon">
                    <a href="https://www.legoland.dk/" target="_blank">
                        <img class="areaImg" src="media/img/area/fnLegoland.jpg" alt="Billede af Legoland" />
                        <div class="areaMid">
                            <div class="areaText">
                                <h4>Legoland</h4>
                                <p class="areaButton"><strong>LÆS MERE</strong></p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <%-- Fiske --%>
            <div class="areaLeft">
                <div class="areaCon">
                    <a href="https://fishingindenmark.info/fiskepladser/farup-so" target="_blank">
                        <img class="areaImg" src="media/img/area/fnFishing.jpg" alt="Billede af fiskning ved Fårup Sø" />
                        <div class="areaMid">
                            <div class="areaText">
                                <h4>Fiskning</h4>
                                <p class="areaButton"><strong>LÆS MERE</strong></p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <%-- Kajak og Kanoer --%>
            <div>
                <div class="areaCon">
                    <a href="https://www.visitvejle.dk/vejle/oplevelser/paa-vandet/robaad-og-kanoudlejning" target="_blank">
                        <img class="areaImg" src="media/img/area/fnSailing.jpg" alt="Billede af en robåd" />
                        <div class="areaMid">
                            <div class="areaText">
                                <h4>Robåd & Kanoer</h4>
                                <p class="areaButton"><strong>LÆS MERE</strong></p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <%-- Natur --%>
            <div class="areaRight">
                <div class="areaCon">
                    <a href="https://www.vejle.dk/borger/mit-liv/aktiv-i-naturen/find-ruter-i-naturen/vandreruter/grejsdalstien/" target="_blank">
                        <img class="areaImg" src="media/img/area/fnNature.jpg" alt="Billede af Grejdalstien" />
                        <div class="areaMid">
                            <div class="areaText">
                                <h4>Fårup Natur</h4>
                                <p class="areaButton"><strong>LÆS MERE</strong></p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </section>
        <%-- Google Maps kort --%>
        <section>
            <br />
            <br />
            <h2>Lokalt Kort</h2>
            <p>
                Det lokale kort af FN Camping, hvilket inkludere Fårup Sø, Jellinge By, Vejle, og Billund.
                De store serværdigheder inkluderer Givskud Zoo, Legoland, Lalandia. Alt dette suppleret af Google Maps.
            </p>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d116353.48562928759!2d9.23722976815395!3d55.77226720943126!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x464b7c45b6702387%3A0x42186581a2c2c70a!2sJellingvej%2065-55%2C%207182%20Bredsten!5e1!3m2!1sda!2sdk!4v1633903541533!5m2!1sda!2sdk" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </section>
    </main>
</asp:Content>
