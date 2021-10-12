<%@ Page Title="Fårup Natur Camping | Reservation" Language="C#" MasterPageFile="~/MainSetup.Master" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="CampingPlads.Reservation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/ReservationSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <main>
        <h2>Reservation</h2>
        <p>Vælg datoerne for dit ophold</p>
        <section class="Cal">
            <div>
                <h6>Start Dato</h6>
                <hr />
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Calendar ID="ReserveCalStart" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="350px" NextPrevFormat="FullMonth" OnSelectionChanged="ReserveCalStart_SelectionChanged" OnVisibleMonthChanged="StartMonthChange">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <div>
                <h6>Slut Dato</h6>
                <hr />
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:Calendar ID="ReserveCalEnd" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="350px" NextPrevFormat="FullMonth" OnSelectionChanged="ReserveCalEnd_SelectionChanged" OnVisibleMonthChanged="EndMonthChange">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </section>
        <hr />
        <asp:Button CssClass="linkTextLabel ReButton" ID="Button1" runat="server" Text="Videre" OnClick="Button1_Click" />
    </main>
</asp:Content>
