<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ekle.aspx.cs" Inherits="Ekle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
     <style type="text/css">
         .auto-style6 {
             height: 50px;
             width: 198px;
             padding-top: 0;
             padding-bottom: 0;
         }
         .auto-style8 {
             width: 198px;
             height: 50px;
         }
         .auto-style9 {
             width: 199px;
             height: 50px;
         }
         .auto-style10 {
             width: 199px;
             height: 100px;
         }
         .auto-style11 {
             width: 198px;
             height: 100px;
         }
         .auto-style12 {
             height: 50px;
             width: 199px;
             padding-top: 0;
             padding-bottom: 0;
         }
     </style>

     Hoşgeldiniz    <asp:Label for="txtHAdi" ID="girenkullanici" runat="server" Text="" style="font-weight: 700"></asp:Label>
<head runat="server">
    <link href="Dosyalar/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="Dosyalar/css/modern-business.css" rel="stylesheet">
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
     <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="AnaSayfa.aspx">Üşüyen Patiler</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="Hakkimizda.aspx">Hakkımızda</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Harita.aspx">Pati'le</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Iletisim.aspx">İletişim</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Giris.aspx">Giriş</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
    <div id="map_area" style="width: 1200px; height: 362px; text-align:center; right: auto; left: 150px;" ></div>
    <div id="form" >
    <form id="form1" onsubmit="return validform()" runat="server"  method="">
        <table cellpadding="0" cellspacing="0" style="text-align:right;padding-top:100px;" class="py-0">
            <tr>
                <td class="auto-style12">X :</td>
                <td class="auto-style6"><asp:TextBox ID="txtLat"  runat="server" Enabled="False"></asp:TextBox></td>
            </tr>
            <br />
            <tr>
                <td class="auto-style12" colspan="1">Y :</td>
                <td class="auto-style8"><asp:TextBox ID="txtLng" runat="server" Enabled="False"></asp:TextBox></td>
            </tr>
            <br />
            <tr>
                <td class="auto-style9">Ad :</td>
                <td class="auto-style8"><asp:TextBox ID="txtAd" runat="server"></asp:TextBox></td>
            </tr>
            <br />
            <tr>
                <td class="auto-style9">Tür :</td>
                <td class="auto-style8"><asp:TextBox ID="txtTur" runat="server"></asp:TextBox></td>
            </tr>
            <br />
            <tr>
                <td class="auto-style9">Yiyecek Durumu :</td>
                <td class="auto-style8"><asp:TextBox ID="txtYiyecekDurum" runat="server"></asp:TextBox></td>
            </tr>
            <br />
            <tr>
                <td class="auto-style9">Adres :</td>
                <td class="auto-style8"><asp:TextBox ID="txt_Adres" runat="server"></asp:TextBox></td>
            </tr>
            <br />
            <tr>
                <td class="auto-style9">Açıklama :</td>
                <td class="auto-style8"><asp:TextBox ID="txt_Aciklama" runat="server"></asp:TextBox></td>
            </tr>
            <br />
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style11"><asp:Button ID="btnSave" runat="server" Text="Ekle" CssClass="btn btn-primary" onclick="btnSave_Click" BackColor="#009933" BorderColor="#009933" ForeColor="White" /></td>
            </tr>
                        <br />
            <tr>
                <td class="auto-style10">Mevcut Bir Hayvanı Güncellemek İçin Basın</td>
                <td class="auto-style11"><asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-primary" onclick="btnUpload_Click" BackColor="#009933" BorderColor="#009933" ForeColor="White" /></td>
            </tr>
        </table>
    </form>
</div>
      <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Üşüyen Patiler 2019</p>
    </div>
    
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
