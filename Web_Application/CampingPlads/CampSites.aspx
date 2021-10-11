<%@ Page Title="Fårup Natur Camping | Pladser" Language="C#" MasterPageFile="~/MainSetup.Master" AutoEventWireup="true" CodeBehind="CampSites.aspx.cs" Inherits="CampingPlads.CampSites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/SitesSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <h2>Campingpladserne</h2>
        <%-- Fremvisning af type og priser --%>
        <section class="sitePrice">
            <%-- Camp Big --%>
            <div>
                <h4>Autocamper<br />
                    Plads</h4>
                <h5>Stor m/ el</h5>
                <h6>Pr. døgn</h6>
                <h5>Lavsæson</h5>
                <h6>
                    <asp:Label ID="CampBigLSeason" runat="server" Text="Label"></asp:Label></h6>
                <h5>Højsæson</h5>
                <h6>
                    <asp:Label ID="CampBigHSeason" runat="server" Text="Label"></asp:Label></h6>
            </div>
            <%-- Camp Small --%>
            <div>
                <h4>Autocamper<br />
                    Plads</h4>
                <h6>Lille m/ el</h6>
                <h6>Pr. døgn</h6>
                <h5>Lavsæson</h5>
                <h6>
                    <asp:Label ID="CampSmallLSeason" runat="server" Text="Label"></asp:Label></h6>
                <h5>Højsæson</h5>
                <h6>
                    <asp:Label ID="CampSmallHSeason" runat="server" Text="Label"></asp:Label></h6>
            </div>
            <%-- Tent --%>
            <div>
                <h4>Telt<br />
                    Plads</h4>
                <h6>Plads m/ el</h6>
                <h6>Pr. døgn</h6>
                <h5>Lavsæson</h5>
                <h6>
                    <asp:Label ID="TentLSeason" runat="server" Text="Label"></asp:Label></h6>
                <h5>Højsæson</h5>
                <h6>
                    <asp:Label ID="TentHSeason" runat="server" Text="Label"></asp:Label></h6>
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
            <h3 style="text-align: center">Billeder af Pladserne</h3>
            <div class="containerGallery">
                <div class="mySlides">
                    <div class="numbertext">1 / 6</div>
                    <img src="media/img/campsites/gallery/autocampOverview3.jpg" />
                </div>

                <div class="mySlides">
                    <div class="numbertext">2 / 6</div>
                    <img src="media/img/campsites/gallery/autocampOverview1.jpg" />
                </div>

                <div class="mySlides">
                    <div class="numbertext">3 / 6</div>
                    <img src="media/img/campsites/gallery/campLake1.jpg" />
                </div>

                <div class="mySlides">
                    <div class="numbertext">4 / 6</div>
                    <img src="media/img/campsites/gallery/campGrill.jpg" />
                </div>

                <div class="mySlides">
                    <div class="numbertext">5 / 6</div>
                    <img src="media/img/campsites/gallery/tentFamily.jpg" />
                </div>

                <div class="mySlides">
                    <div class="numbertext">6 / 6</div>
                    <img src="media/img/campsites/gallery/tentNature.jpg" />
                </div>

                <a class="prev" onclick="plusSlides(-1)">❮</a>
                <a class="next" onclick="plusSlides(1)">❯</a>

                <div class="caption-container">
                    <p id="caption"></p>
                </div>

                <div class="row">
                    <div class="column">
                        <img class="demo cursor" src="media/img/campsites/gallery/autocampOverview3.jpg" onclick="currentSlide(1)" alt="Den naturlige frihed hos autocamperne" />
                    </div>
                    <div class="column">
                        <img class="demo cursor" src="media/img/campsites/gallery/autocampOverview1.jpg" onclick="currentSlide(2)" alt="Lige til vandet" />
                    </div>
                    <div class="column">
                        <img class="demo cursor" src="media/img/campsites/gallery/campLake1.jpg" onclick="currentSlide(3)" alt="Fårup Sø" />
                    </div>
                    <div class="column">
                        <img class="demo cursor" src="media/img/campsites/gallery/campGrill.jpg" onclick="currentSlide(4)" alt="Familiebegivenhederne" />
                    </div>
                    <div class="column">
                        <img class="demo cursor" src="media/img/campsites/gallery/tentFamily.jpg" onclick="currentSlide(5)" alt="Ren hygge for familien" />
                    </div>
                    <div class="column">
                        <img class="demo cursor" src="media/img/campsites/gallery/tentNature.jpg" onclick="currentSlide(6)" alt="Den smukke natur lige rundt om hjørnet" />
                    </div>
                </div>
            </div>
        </section>
    </main>
    <script src="js/SlideshowGallery.js"></script>
</asp:Content>
