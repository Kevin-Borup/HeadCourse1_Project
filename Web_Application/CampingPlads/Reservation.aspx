<%@ Page Title="Fårup Natur Camping | Reservation" Language="C#" MasterPageFile="~/MainSetup.Master" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="CampingPlads.Reservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/ReservationSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <h2>Reservation</h2>
        <p>Vælg datoerne for dit ophold</p>
        <section class="Cal">
            <h6>Start Dato</h6>
            <hr />
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="350px" NextPrevFormat="FullMonth">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
        </section>
        <%--I get an error below this--%>
        <asp:Menu
            ID="menuTabs"
            Orientation="Horizontal"
            Width="100%"
            runat="server"
            OnMenuItemClick="menuTabs_MenuItemClick"> 
               <Items>
                   <asp:MenuItem Text="Vælg dato" Value="0" Selected="true" />
                   <asp:MenuItem Text="Personlige informationer" Value="1" />
                   <asp:MenuItem Text="Opholdsdetaljer" Value="2" />
               </Items>
        </asp:Menu>
        <asp:MultiView ID="multiviewOrder"
            runat="server" ActiveViewIndex="0">
        </asp:MultiView>
        <asp:MultiView ID="multiview1"
            runat="server" ActiveViewIndex="0">
            <asp:View runat="server">
                <div>
                    <%--First a table row and in the first cell you write what kind of input you want from the user
                        in this case it's the startdate
                        Then you put another cell where you have a textbox for the actual user input--%>
                    <asp:Table runat="server" CssClass="viewCSS">
                        <asp:TableRow>
                            <asp:TableCell>  
                                    <asp:Label runat="server">Startdato</asp:Label>  
                            </asp:TableCell>
                            <asp:TableCell>  
                                    <asp:TextBox runat="server"></asp:TextBox>  
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>  
                                    <asp:Label runat="server">Slutdato</asp:Label>  
                            </asp:TableCell>
                            <asp:TableCell>  
                                    <asp:TextBox runat="server"></asp:TextBox>  
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </div>
            </asp:View>
            <%--So this is where I think it changes from one part of the page to another--%> 
            <asp:View runat="server">
                <div>
                    <asp:Table runat="server" CssClass="viewCSS">
                        <asp:TableRow>
                            <asp:TableCell>  
                                    <asp:Label runat="server">Hyttenummer</asp:Label>  
                            </asp:TableCell>
                            <asp:TableCell>  
                                    <asp:TextBox runat="server"></asp:TextBox>  
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>  
                                    <asp:Label runat="server">Campingpladsnummer</asp:Label>  
                            </asp:TableCell>
                            <asp:TableCell>  
                                    <asp:TextBox runat="server"></asp:TextBox>  
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </div>
            </asp:View>
            <asp:View runat="server">
                <div>
                    <asp:Table runat="server" CssClass="viewCSS">
                        <asp:TableRow>
                            <asp:TableCell>  
                                    <asp:Label runat="server">Antal voksne</asp:Label>  
                            </asp:TableCell>
                            <asp:TableCell>  
                                    <asp:TextBox runat="server"></asp:TextBox>  
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>  
                                    <asp:Label runat="server">Antal børn</asp:Label>  
                            </asp:TableCell>
                            <asp:TableCell>  
                                    <asp:TextBox runat="server"></asp:TextBox>  
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>  
                                    <asp:Label runat="server">Antal hunde</asp:Label>  
                            </asp:TableCell>
                            <asp:TableCell>  
                                    <asp:TextBox runat="server"></asp:TextBox>  
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </div>
            </asp:View>
            <asp:View runat="server">
                <div>
                    <asp:Table runat="server" CssClass="viewCSS">
                        <asp:TableRow>
                            <asp:TableCell>  
                                    <asp:Label runat="server">Fornavn</asp:Label>  
                            </asp:TableCell>
                            <asp:TableCell>  
                                    <asp:TextBox runat="server"></asp:TextBox>  
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>  
                                    <asp:Label runat="server">Efternavn</asp:Label>  
                            </asp:TableCell>
                            <asp:TableCell>  
                                    <asp:TextBox runat="server"></asp:TextBox>  
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>  
                                    <asp:Label runat="server">Email</asp:Label>  
                            </asp:TableCell>
                            <asp:TableCell>  
                                    <asp:TextBox runat="server"></asp:TextBox>  
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>  
                                    <asp:Label runat="server">Telefon Nr</asp:Label>  
                            </asp:TableCell>
                            <asp:TableCell>  
                                    <asp:TextBox runat="server"></asp:TextBox>  
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>  
                                    <asp:Label runat="server">By</asp:Label>  
                            </asp:TableCell>
                            <asp:TableCell>  
                                    <asp:TextBox runat="server"></asp:TextBox>  
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>  
                                    <asp:Label runat="server">Postnummer</asp:Label>  
                            </asp:TableCell>
                            <asp:TableCell>  
                                    <asp:TextBox runat="server"></asp:TextBox>  
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>  
                                    <asp:Label runat="server">Fødselsdato</asp:Label>  
                            </asp:TableCell>
                            <asp:TableCell>  
                                    <asp:TextBox runat="server"></asp:TextBox>  
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </div>
            </asp:View>
        </asp:MultiView>
    </main>
</asp:Content>
