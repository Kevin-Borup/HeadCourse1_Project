<%@ Page Title="Fårup Natur Camping | Hjem" Language="C#" MasterPageFile="~/MainSetup.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="CampingPlads.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/ContentStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="front">
        <h1>Fårup Natur Camping</h1>
        <p>Selve pladsen har plads til, og er godkendt til, 217 pladser på deres i alt ca. 4 hektar. Derudover er der 7 hytter på 16 m<sup>2</sup> hver og 6 luksus hytter på 20 m<sup>2</sup>.</p>
        <p>
            Du ankommer med sin campingvogn/autocamper er det i udgangspunktet efter kl. 13 man kan komme ind på sin plads, men det er kun hvis der rent faktisk fyldt op på pladsen. Er der en fri plads kan man komme ind på sin plads tidligere.
Anderledes er det dog med hytterne der p.g.a. rengøring først KAN lejes ud efter kl. 13.00 når rengøringen og klargøringen af hytten er færdig.
For alle gælder det man skal være ude kl. 11.00.
        </p>
        <%-- Tilbud --%>
        <%-- img left --%>
        <section>
            <img src="media/img/placeholder.png" alt="Alternate Text" />
            <div>

                <h3>Dejlige tilbud til pungen, det gør mulighederne større</h3>
                <p>
                    På pladsen er det også muligt at opnå rabat enten som trofast kunde eller ved at benytte sig af en af de attraktive tilbud campingpladsen tilbyder.
                </p>
                <ul class="list-group list-group-flush">
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

                <a href="seasonticket.aspx">Se priser for en sæsonplads</a>
            </div>

            <img src="media/img/placeholder.png" alt="Alternate Text" />

        </section>
        <%-- Se priser --%>
        <%-- img left --%>
        <section>
            <img src="media/img/placeholder.png" alt="Alternate Text" />
            <div>
            <h3>Vil du se priserne for dit ophold? Her er vores prisskema</h3>
            <p>wowowowowowowowowowowowowowowowowow</p>
            <a href="pricetabel.aspx">Se priser for ophold</a>
            </div>
        </section>
        <%-- Se området --%>
        <%-- img right --%>
        <section>
            <div>
            <h3>Tæt på Legoland, Givskud Zoo, Lalandia og Jelling by</h3>
            <p>Tag på opdagelse i vikingernes by, Jelling, hils på løverne i Givskud Zoo eller prøv en forlystelse i Danmarks mest kendte attraktionspark, LEGOLAND®, som ligger kun 19 km herfra!</p>
            <a href="https://www.legoland.dk/">Se mere om Legoland</a>
            <a href="https://www.givskudzoo.dk/">Se mere om Givskud Zoo</a>
            <a href="https://www.lalandia.dk/da-dk/billund">Se mere om Lalandia</a>
            </div>
            <img src="media/img/placeholder.png" alt="Alternate Text" />
        </section>
    </main>
</asp:Content>
