﻿<%@ Page Title="Fårup Natur Camping | Registrering" Language="C#" MasterPageFile="~/MainSetup.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CampingPlads.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Google Icons API -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />

    <link href="css/RegistrationSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <div>
            <h3>Fakturerings Addresse</h3>

            <%-- FirstName --%>
            <label for="firstName"><span class="material-icons"></span>Fornavn</label>
            <input type="text" id="firstName" name="firstName" placeholder="John"/>

            <%-- LastName --%>
            <label for="lastName"><span class="material-icons"></span>Efternavn</label>
            <input type="text" id="lastName" name="lastName" placeholder="Smith"/>

            <%-- Email --%>
            <label for="email"><span class="material-icons"></span>Email</label>
            <input type="text" id="email" name="email" placeholder="john@example.com"/>

            <%-- PhoneNr --%>
            <label for="phoneNr"><span class="material-icons"></span>Tlf. Nr.</label>
            <input type="text" id="phoneNr" name="phoneNr" placeholder="55788888"/>

            <%-- BirthDate --%>
            <label for="birthDate"><span class="material-icons"></span>Fødselsdato</label>
            <input type="text" id="birthDate" name="birthDate" placeholder="john@example.com"/>

            <%-- StreetName --%>
            <label for="streetName"><span class="material-icons"></span>Vej</label>
            <input type="text" id="streetName" name="streetName" placeholder="Ahorn Alle"/>

            <%-- BuildingNr --%>
            <label for="buildingNr"><span class="material-icons"></span>Husnummer</label>
            <input type="text" id="buildingNr" name="buildingNr" placeholder="6"/>

            <div class="cityPost">
                <div>
                    <%-- City --%>
                    <label for="city"><span class="material-icons"></span>By</label>
                    <input type="text" id="city" name="city" placeholder="Fårup"/>
                </div>
                <div>
                    <%-- PostalCode --%>
                    <label for="postalCode">Postnummer</label>
                    <input type="text" id="postalCode" name="postalCode" placeholder="4100"/>
                </div>
            </div>
        </div>
        <input type="submit" value="Bekræft reservation" class="btn"/>
    </main>
</asp:Content>
