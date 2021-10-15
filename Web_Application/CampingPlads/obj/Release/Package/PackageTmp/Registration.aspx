<%@ Page Title="Fårup Natur Camping | Registrering" Language="C#" MasterPageFile="~/MainSetup.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CampingPlads.Registration" %>

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
            <label for="firstName"><span class="material-icons">person</span>Fornavn</label>
            <asp:TextBox type="text" ID="firstName" name="firstName" minlength="3" placeholder="John" autofocus required runat="server"></asp:TextBox>

            <%-- LastName --%>
            <label for="lastName"><span class="material-icons">group</span>Efternavn</label>
            <asp:TextBox type="text" ID="lastName" name="lastName" minlength="3" placeholder="Smith" required runat="server"></asp:TextBox>

            <%-- Email --%>
            <label for="email"><span class="material-icons">email</span>Email</label>
            <asp:TextBox type="email" ID="email" name="email" placeholder="john@example.com" required runat="server"></asp:TextBox>


            <%-- PhoneNr --%>
            <label for="phoneNr"><span class="material-icons">phone</span>Tlf. Nr.</label>
            <asp:TextBox type="tel" ID="phoneNr" name="phoneNr" length="8" placeholder="55788888" required runat="server"></asp:TextBox>


            <%-- BirthDate --%>
            <label for="birthDate"><span class="material-icons">cake</span>Fødselsdato</label>
            <asp:TextBox type="date" ID="birthDate" name="birthDate" placeholder="john@example.com" required runat="server"></asp:TextBox>


            <%-- StreetName --%>
            <label for="streetName"><span class="material-icons">add_road</span>Vej</label>
            <asp:TextBox type="text" ID="streetName" name="streetName" minlength="1" placeholder="Ahorn Alle" required runat="server"></asp:TextBox>

            <%-- BuildingNr --%>
            <label for="buildingNr"><span class="material-icons">cottage</span>Husnummer</label>
            <asp:TextBox type="text" ID="buildingNr" name="buildingNr" minlength="1" placeholder="6" required runat="server"></asp:TextBox>

            <div class="cityPost">
                <div>
                    <%-- City --%>
                    <label for="city"><span class="material-icons">location_city</span>By</label>
                    <asp:TextBox type="text" ID="city" name="city" minlength="1" placeholder="Fårup" required runat="server"></asp:TextBox>
                </div>
                <div>
                    <%-- PostalCode --%>
                    <label for="postalCode"><span class="material-icons">location_on</span>Postnummer</label>
                    <asp:TextBox type="text" ID="postalCode" length="4" name="postalCode" placeholder="4100" required runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
        <asp:Button CssClass="btn" ID="Confirm" runat="server" Text="Bekræft reservation" OnClick="Confirm_Click" />
    </main>
</asp:Content>
