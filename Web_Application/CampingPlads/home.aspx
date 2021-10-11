<%@ Page Title="Fårup Natur Camping | Hjem" Language="C#" MasterPageFile="~/MainSetup.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CampingPlads.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/ContentStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="front">
        <h1>Fårup Natur Camping</h1>
        <p>
            Du ankommer med sin campingvogn/autocamper er det i udgangspunktet efter kl. 13 man kan komme ind på sin plads, men det er kun hvis der rent faktisk fyldt op på pladsen. Er der en fri plads kan man komme ind på sin plads tidligere.
Anderledes er det dog med hytterne der p.g.a. rengøring først KAN lejes ud efter kl. 13.00 når rengøringen og klargøringen af hytten er færdig.
For alle gælder det man skal være ude kl. 11.00.
        </p>
        <%-- Tilbud --%>
        <%-- img left --%>
        <section>
            <img class="frontImg left" src="media/img/home/fnGreenery.jpg" alt="Et billede af naturen hos FN Camping" />
            <div>

                <h3>Dejlige tilbud til pungen, det gør mulighederne større</h3>
                <p>
                    På pladsen er det også muligt at opnå rabat enten som trofast kunde eller ved at benytte sig af en af de attraktive tilbud campingpladsen tilbyder.
                </p>
                <ul>
                    <li class="list-group-item">
                        <h4>Tilbuddene lyder således:</h4>
                    </li>
                    <li class="list-group-item">Bliv på campingpladsen 3 dage og få pladsgebyret gratis for den næste dag. Er man på pladsen i 3 dage derudover opnås rabatten igen.</li>
                    <li class="list-group-item">1 uges plads inkl. 4 personer, 6 x morgenmad og billetter til badeland hele ugen.
                    <br />
                        1099,-</li>
                </ul>
            </div>
        </section>
        <%-- Sæsonplads --%>
        <%-- img right --%>
        <section>
            <div>
                <h3>Ønsker du endnu mere camping for pengene? Få en sæsonplads</h3>
                <p>Ønsker du at bruge din campingvogn ofte, uden at skulle bøvle med at stille den op og tage den ned hver gang? Så er en sæsonplads måske det helt rigtige for dig! Vi tilbyder både forårspladser, efterårspladser og helårspladser. </p>

                <a class="linkTextLabel" href="seasonticket.aspx">Se priser for en sæsonplads</a>
            </div>

            <img class="frontImg right" src="media/img/home/fnPool.jpg" alt="Et billede af en pool hos FN Camping" />

        </section>
        <%-- Se priser --%>
        <%-- img left --%>
        <section>
            <img class="frontImg left" src="media/img/home/fnCampingLake.jpg" alt="Et billede af Fårup Sø" />
            <div>
                <h3>Vil du se priserne for dit ophold? Her er vores prisskema</h3>
                <p>
                    wowowo
                wowowowowo
                wowowowowo
                wowow
                owow
                </p>
                <a class="linkTextLabel" href="pricetabel.aspx">Se priser for ophold</a>
            </div>
        </section>
        <%-- Se området --%>
        <%-- img right --%>
        <section>
            <div>
                <h3>Tæt på Legoland, Givskud Zoo, Lalandia og Jelling by</h3>
                <p>Tag på opdagelse i vikingernes by, Jelling, hils på løverne i Givskud Zoo eller prøv en forlystelse i Danmarks mest kendte attraktionspark, LEGOLAND®, som ligger kun 19 km herfra!</p>
                <div>
                    <a class="linkTextLabel" href="https://www.legoland.dk/">Se mere om Legoland</a>
                    <a class="linkTextLabel" href="https://www.givskudzoo.dk/">Se mere om Givskud Zoo</a>
                    <a class="linkTextLabel" href="https://www.lalandia.dk/da-dk/billund">Se mere om Lalandia</a>
                </div>
            </div>
            <img class="frontImg right" src="media/img/home/fnLegolandFront.jpg" alt="Et billede af Legoland" />
        </section>
    </main>
</asp:Content>
