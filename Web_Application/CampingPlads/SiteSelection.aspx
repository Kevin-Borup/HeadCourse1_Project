<%@ Page Title="Fårup Natur Camping | Pladsvalg" Language="C#" MasterPageFile="~/MainSetup.Master" AutoEventWireup="true" CodeBehind="SiteSelection.aspx.cs" Inherits="CampingPlads.SiteSelection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/SiteSelectionSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <header>
            <p>
                Fra Startdatoen: <strong>
                    <asp:Label ID="startDate" runat="server" Text="Label"></asp:Label></strong> til Slutdatoen: <strong>
                        <asp:Label ID="endDate" runat="server" Text="Label"></asp:Label></strong>
            </p>
        </header>
        <%-- Cabin Selection --%>
        <div class="cabins">
            <%-- Cabin A --%>
            <div>
                <h6>Hytte A</h6>
                <p>Hytte Nr.:</p>
                <asp:DropDownList ID="CabinAList" runat="server"></asp:DropDownList>
                <asp:Button ID="CabinA" runat="server" Text="Vælg" OnClick="CabinA_Click" />
            </div>
            <%-- Cabin B --%>
            <div>
                <h6>Hytte B</h6>
                <p>Hytte Nr.:</p>
                <asp:DropDownList ID="CabinBList" runat="server"></asp:DropDownList>
                <asp:Button ID="CabinB" runat="server" Text="Vælg" OnClick="CabinB_Click" />
            </div>

        </div>
        <%-- Campsite Selection --%>
        <div class="campsites">
            <%-- Camp Big --%>
            <div>
                <h6>Autocamper Plads</h6>
                <p>Plads Nr.:</p>
                <asp:DropDownList ID="CampBigList" runat="server"></asp:DropDownList>
                <asp:Button ID="CampBig" runat="server" Text="Vælg" OnClick="CampBig_Click" />
            </div>
            <%-- Camp Small --%>
            <div>
                <h6>Autocamper Plads</h6>
                <p>Plads Nr.:</p>
                <asp:DropDownList ID="CampSmallList" runat="server"></asp:DropDownList>
                <asp:Button ID="CampSmall" runat="server" Text="Vælg" OnClick="CampSmall_Click" />

            </div>
            <%-- Tent --%>
            <div>
                <h6>Telt Plads</h6>
                <p>Plads Nr.:</p>
                <asp:DropDownList ID="TentList" runat="server"></asp:DropDownList>
                <asp:Button ID="Tent" runat="server" Text="Vælg" OnClick="Tent_Click" />
            </div>
        </div>
    </main>
</asp:Content>
