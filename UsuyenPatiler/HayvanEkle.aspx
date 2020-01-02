<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HayvanEkle.aspx.cs" Inherits="HayvanEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


<html xmlns="http://www.w3.org/1999/xhtml">
     Hoşgeldiniz    <asp:Label for="txtHAdi" ID="girenkullanici" runat="server" Text="" style="font-weight: 700"></asp:Label>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title></title>

    <script type="text/javascript" src="http://maps.google.com/maps/api/js?v=3.1&sensor=false&language=tr"></script>
    <script type="text/javascript">
    function initialize()
      {
          var myLatlng = new google.maps.LatLng(38.498877082187455,27.705030075073182);
          var myOptions = {zoom: 15, center: myLatlng, mapTypeId: google.maps.MapTypeId.ROADMAP}
          var map = new google.maps.Map(document.getElementById("map_area"), myOptions);
          var marker = new google.maps.Marker({ position: myLatlng, draggable: true, flat: false, map: map, title: "Lütfen imleci işaretlemek istediğiniz noktaya taşıyınız." });
          document.forms[0].txtLat.value = 38.498877082187455;
          document.forms[0].txtLng.value = 27.705030075073182;
          google.maps.event.addListener(marker, "drag", function () {
              var latlng = marker.getPosition();
              document.forms[0].txtLat.value = latlng.lat();
              document.forms[0].txtLng.value = latlng.lng();
          });
      }
</script>
</head>
<body onload="initialize()">
    <div id="map_area" style="width: 1500px; height: 800px"></div>
    <div id="form">
    <form id="form1" onsubmit="return validform()" runat="server" method="">
        <table cellpadding="0" cellspacing="0" style="width: 400px">
            <tr>
                <td>X</td>
                <td><asp:TextBox ID="txtLat" runat="server"></asp:TextBox></td>
            </tr>
            <br />
            <tr>
                <td>Y</td>
                <td><asp:TextBox ID="txtLng" runat="server"></asp:TextBox></td>
            </tr>
            <br />
            <tr>
                <td>Ad</td>
                <td><asp:TextBox ID="txtAd" runat="server"></asp:TextBox></td>
            </tr>
            <br />
            <tr>
                <td>Tür</td>
                <td><asp:TextBox ID="txtTur" runat="server"></asp:TextBox></td>
            </tr>
            <br />
            <tr>
                <td>Yiyecek Durum</td>
                <td><asp:TextBox ID="txtYiyecekDurum" runat="server"></asp:TextBox></td>
            </tr>
            <br />
            <tr>
                <td>Adres</td>
                <td><asp:TextBox ID="txt_Adres" runat="server"></asp:TextBox></td>
            </tr>
            <br />
            <tr>
                <td>Aciklama</td>
                <td><asp:TextBox ID="txt_Aciklama" runat="server"></asp:TextBox></td>
            </tr>
            <br />
            <tr>
                <td></td>
                <td><asp:Button ID="btnSave" runat="server" Text="Kaydet" CssClass="btn btn-primary" onclick="btnSave_Click" /></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>

</asp:Content>

