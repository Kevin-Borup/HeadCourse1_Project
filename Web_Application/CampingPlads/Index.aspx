<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CampingPlads.Index" %>

<!DOCTYPE html>

<html lang="da" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- The HTML encoding used for character conversion. -->
    <!-- UTF-8 is the recommended character set for HTML5. -->
    <meta charset="utf-8"/>
    <!-- Bootstrap mobile first. Follow device width & initial zoom level. -->
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Scripting Unlocking -->
    <script src="https://code.jquery.com/jquery-3.3.1.js"
        integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous">
        </script>
    <!-- Loading HTML -->
    <script>
        $(function () {
            $("#banner").load("common/banner.html");
            $("#nav").load("common/nav.html");
            $("#footer").load("common/footer.html");
        })
    </script>

    <!-- Personalized Data -->
    <link rel="icon" href="media/img/TabIconV2.png"/>
    <title>Fårup Strand Camping</title>
    <link rel="StyleSheet" type="text/css" href="css/PrimaryStyleSheet.css"/>
    <link rel="StyleSheet" type="text/css" href="css/ReducedStyleSheet.css"/>
    <link rel="StyleSheet" type="text/css" href="css/BannerSheet.css"/>
    <link rel="StyleSheet" type="text/css" href="css/NavSheet.css"/>
    <link rel="StyleSheet" type="text/css" href="css/FooterSheet.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <%-- Banner --%>
        <div></div>
        <%-- Nav Bar --%>
        <div></div>
        <main>

        </main>
    </form>
</body>
</html>
