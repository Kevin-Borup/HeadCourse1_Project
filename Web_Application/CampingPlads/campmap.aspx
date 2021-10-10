<%@ Page Title="Fårup Natur Camping | Pladskort" Language="C#" MasterPageFile="~/MainSetup.Master" AutoEventWireup="true" CodeBehind="CampMap.aspx.cs" Inherits="CampingPlads.CampMap" %>
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
            <img class="campMap"/>
        </section>
    </main>
</asp:Content>