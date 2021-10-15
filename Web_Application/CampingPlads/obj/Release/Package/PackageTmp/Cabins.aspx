<%@ Page Title="Fårup Natur Camping | Hytter" Language="C#" MasterPageFile="~/MainSetup.Master" AutoEventWireup="true" CodeBehind="Cabins.aspx.cs" Inherits="CampingPlads.Cabins" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/SitesSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <h2>Hytterne</h2>
        <%-- Fremvisning af typer --%>
        <section class="cabinShow">
            <%-- Luxury Cabin - Class A --%>
            <div>
                <h3>Hytte A</h3>
                <div class="cabOut" id="cabinImgOuter">
                    <img src="media/img/cabins/cabinLuxPic2.jpg" alt="Billede af Hytte A - Toilet" />
                    <div id="cabinImgInner">
                        <img src="media/img/cabins/cabinLuxPic1.jpg" alt="Billede af Hytte A - Køkken" />
                    </div>
                </div>
                <div class="cabIn">
                    <p>
                        Hytten har 5 faste sovepladser fordelt over 2 soverum 
                        (det ene soverum har 2 køjesenge og det andet soverum har en dobbeltseng med en overkøje). 
                        Hytten har eget toilet og der er tekøkken med kogeplader, køleskab, kaffemaskine, el-kedel, bord, stole samt køkkengrej og service. 
                        Dyner og puder. Linned kan lejes. Der er koldt vand indlagt og varmt vand i køkkenet. 
                        Stor overdækket terrasse med havemøbler. Hund tilladt.
                    </p>
                </div>
                <img class="cabOut" src="media/img/cabins/LuxCabinAprint.png" alt="Husplan til Hytte A" />
            </div>
            <hr />
            <%-- Standard Cabin - Class B --%>
            <div>
                <h3>Hytte B</h3>
                <img class="cabOut" src="media/img/cabins/cabinStaPic1.jpg" alt="Billede af Hytte B" />
                <div class="cabIn">
                    <p>
                        Hytten har 2 køjesenge.
                        Tekøkken med kogeplader, køleskab, kaffemaskine, el-kedel samt køkkengrej og service. 
                        Der er bord, stole og havemøbler på terrassen. Dyner og puder. Linned kan lejes. 
                        Hytterne opvarmes med el. Hund tilladt.
                    </p>
                </div>
                <img class="cabOut" src="media/img/cabins/StaCabinBprint.png" alt="Husplan til Hytte B" />
            </div>
        </section>
        <hr />
        <%-- Fremvisning af priser --%>
        <section class="sitePrice">
            <%-- Luxury Cabin --%>
            <div class="cabA">
                <h4>Hytte A</h4>
                <h6>Pr. døgn</h6>
                <h5>Lavsæson</h5>
                <h6>
                    <asp:Label ID="CabinALSeason" runat="server" Text="Label"></asp:Label></h6>
                <h5>Højsæson</h5>
                <h6>
                    <asp:Label ID="CabinAHSeason" runat="server" Text="Label"></asp:Label></h6>
            </div>
            <%-- Standard Cabin --%>
            <div class="cabB">
                <h4>Hytte B</h4>
                <h6>Pr. døgn</h6>
                <h5>Lavsæson</h5>
                <h6>
                    <asp:Label ID="CabinBLSeason" runat="server" Text="Label"></asp:Label></h6>
                <h5>Højsæson</h5>
                <h6>
                    <asp:Label ID="CabinBHSeason" runat="server" Text="Label"></asp:Label></h6>
            </div>
        </section>
        <%-- Reservation Reference --%>
        <section class="siteReserve">
            <h3>Book din ferie nu!</h3>
            <a class="linkTextLabel" href="Reservation.aspx">Se reservationer og start din ferie her!</a>
        </section>
        <hr />
        <%-- Fremvisning af billeder fra campingpladsen i relation til hytter --%>
        <%-- Slideshow Gallery --%>
        <section class="siteGallery">
            <h3 style="text-align: center">Billeder af Hytterne</h3>
            <div class="containerGallery">
                <div class="mySlides">
                    <div class="numbertext">1 / 6</div>
                    <img src="media/img/cabins/gallery/cabinLuxOverview.jpg" />
                </div>

                <div class="mySlides">
                    <div class="numbertext">2 / 6</div>
                    <img src="media/img/cabins/gallery/cabinLuxOverview2.jpg" />
                </div>

                <div class="mySlides">
                    <div class="numbertext">3 / 6</div>
                    <img src="media/img/cabins/gallery/cabinLuxOverview1.jpg" />
                </div>

                <div class="mySlides">
                    <div class="numbertext">4 / 6</div>
                    <img src="media/img/cabins/gallery/cabinOverview.jpg" />
                </div>

                <div class="mySlides">
                    <div class="numbertext">5 / 6</div>
                    <img src="media/img/cabins/gallery/cabinStaOverview.jpg" />
                </div>

                <div class="mySlides">
                    <div class="numbertext">6 / 6</div>
                    <img src="media/img/cabins/gallery/cabinPark.jpg" />
                </div>

                <a class="prev" onclick="plusSlides(-1)">❮</a>
                <a class="next" onclick="plusSlides(1)">❯</a>

                <div class="caption-container">
                    <p id="caption"></p>
                </div>

                <div class="row">
                    <div class="column">
                        <img class="demo cursor" src="media/img/cabins/gallery/cabinLuxOverview.jpg" onclick="currentSlide(1)" alt="B-Hytterne" />
                    </div>
                    <div class="column">
                        <img class="demo cursor" src="media/img/cabins/gallery/cabinLuxOverview2.jpg" onclick="currentSlide(2)" alt="Den flotte udsigt" />
                    </div>
                    <div class="column">
                        <img class="demo cursor" src="media/img/cabins/gallery/cabinLuxOverview1.jpg" onclick="currentSlide(3)" alt="A-Hytterne" />
                    </div>
                    <div class="column">
                        <img class="demo cursor" src="media/img/cabins/gallery/cabinOverview.jpg" onclick="currentSlide(4)" alt="En vidunderlig friskhed" />
                    </div>
                    <div class="column">
                        <img class="demo cursor" src="media/img/cabins/gallery/cabinStaOverview.jpg" onclick="currentSlide(5)" alt="Den flotte natur nær hytterne" />
                    </div>
                    <div class="column">
                        <img class="demo cursor" src="media/img/cabins/gallery/cabinPark.jpg" onclick="currentSlide(6)" alt="Mulighed for privat parkering" />
                    </div>
                </div>
            </div>
        </section>
    </main>
    <script src="js/SlideshowGallery.js"></script>
</asp:Content>
