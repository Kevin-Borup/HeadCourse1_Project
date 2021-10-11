<%@ Page Title="Fårup Natur Camping | Pladskort" Language="C#" MasterPageFile="~/MainSetup.Master" AutoEventWireup="true" CodeBehind="CampMap.aspx.cs" Inherits="CampingPlads.CampMap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/CampMapSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <section>
            <header>
                <h3>Kort over campingpladsen</h3>
                <p>Herunder selve visningen over hele campingpladsen.</p>
            </header>
            <%-- Map --%>
            <div>
                <%-- Map Filters --%>
                <div id="map">
                    <img id="mapBase" src="media/img/campmap/map.png" alt="Kort over Campingpladsen" />
                    <%--<div id="mapFilters">
                        <img src="media/img/campmap/mapfilters/allSites.png" alt="Billede af Hytte A - Køkken" />
                    </div>--%>

                    <%-- Index Side --%>
                    <img id="mapIndexBig" src="media/img/campmap/indexBig.png" alt="Stor signatur" />
                    <%-- Index Under --%>
                    <img id="mapIndexSmall" src="media/img/campmap/indexSmall.png" alt="Lille signatur" />
                </div>
            </div>
        </section>
    </main>
</asp:Content>
