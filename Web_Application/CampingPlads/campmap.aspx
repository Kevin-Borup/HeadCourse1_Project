<%@ Page Title="Fårup Natur Camping | Pladskort" Language="C#" MasterPageFile="~/MainSetup.Master" AutoEventWireup="true" CodeBehind="campmap.aspx.cs" Inherits="CampingPlads.campmap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/ContentStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>

        <section>
            <header>
                <h3>Kort over campingpladsen</h3>
                <p>Herunder selve visningen over hele campingpladsen.</p>
            </header>
            <img src="media/img/home/MapWIndex.png" alt="Kort over området" />
        </section>
    </main>
</asp:Content>
