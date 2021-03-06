<%@ Page Title="Fårup Natur Camping | Ordre" Language="C#" MasterPageFile="~/MainSetup.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="CampingPlads.Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/OrderSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <%-- Showcase site Choice --%>
        <section id="show">
            <div id="showcase">
                <asp:Label ID="SiteTypeLabel" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="SiteNrLabel" runat="server" Text="Label"></asp:Label>
            </div>
        </section>
        <%-- Selection form --%>
        <section class="pageBottom">
            <div>
                <h6>Ordredetaljer</h6>
                <div>
                    <%-- Adults --%>
                    <div>
                        <label for="Adults">Voksne: </label>
                        <asp:DropDownList ID="AdultList" runat="server"></asp:DropDownList>
                        <label>til 80,- kr pr. person </label>
                    </div>
                    <%-- Children --%>
                    <div>
                        <label for="Children">Børn: </label>
                        <asp:DropDownList ID="ChildList" runat="server"></asp:DropDownList>
                        <label>til 50,- kr pr. person </label>
                    </div>

                </div>
                <h6>Ekstra</h6>
                <%-- Dogs --%>
                <div>
                    <label for="Dogs">Hunde: </label>
                    <asp:DropDownList ID="DogList" runat="server"></asp:DropDownList>
                    <label>til 30,- kr pr. hund </label>
                </div>
                <%--Bedlining--%>
                <div>
                    <label for="BedLining">Sengelinned: </label>
                    <asp:CheckBox ID="Bedlining" runat="server" />
                    <label>til 30,- kr </label>
                </div>
                <%-- Cleaning --%>
                <div>
                    <label for="Cleaning">Rengøring: </label>
                    <asp:CheckBox ID="Cleaning" runat="server" />
                    <label>til 150,- kr </label>
                </div>
                <%-- BikeRental --%>
                <div>
                    <label for="BikeRental">Lån af cykler: </label>
                    <asp:TextBox ID="BikeAmount" Type="Number" PlaceHolder="Antal" runat="server"></asp:TextBox>

                    <label>til 200,- kr pr. person </label>
                </div>
                <%-- WaterWorldAdult --%>
                <div>
                    <label for="WaterWorldA">Voksenbillet til badeland: </label>
                    <asp:TextBox ID="AWAmount" Type="Number" PlaceHolder="Antal" runat="server"></asp:TextBox>
                    <%--<input id="AWAmount" name="AdultWater" type="number" placeholder="Antal" />--%>
                    <label>til 30,- kr pr. billet </label>
                </div>
                <%-- WaterWorldChild --%>
                <div>
                    <label for="WaterWorldC">Børnebillet til badeland: </label>
                    <asp:TextBox ID="CWAmount" Type="Number" PlaceHolder="Antal" runat="server"></asp:TextBox>
                    <%--<input id="CWAmount" name="ChildWater" type="number" placeholder="Antal" />--%>
                    <label>til 30,- kr pr. billet </label>
                </div>
                <asp:Button ID="SubmitForm" runat="server" OnClick="SubmitForm_Click" Text="Se pris" />
            </div>
            <%-- Total price --%>
            <div>
                <h6>Pris i alt</h6>
                <div class="PriceTable">
                    <div class="left">
                        <label>Pladspris: </label>
                        <label>Personpris: </label>
                        <label>Tilføjelsespris: </label>
                        <br />
                        <label>Total pris: </label>
                    </div>
                    <%-- Prices --%>
                    <div class="right">
                        <asp:Label ID="SitePrice" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="PersonPrice" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="DetailPrice" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="FullPrice" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <%-- Labels --%>

                <asp:Button ID="ConfirmForm" runat="server" OnClick="ConfirmForm_Click" Text="Bekræft" />
            </div>
        </section>
    </main>
</asp:Content>
