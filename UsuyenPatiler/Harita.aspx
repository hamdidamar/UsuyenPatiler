<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Harita.aspx.cs" Inherits="Harita" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


 <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">
var markers = [
<asp:Repeater ID="rptMarkers" runat="server">
<ItemTemplate>
            {
            "Adres": '<%# Eval("Adres") %>',
            "Aciklama": '<%# Eval("Aciklama") %>',
            "X": '<%# Eval("X") %>',
            "Y": '<%# Eval("Y") %>',
            "Adi": '<%# Eval("hayvanBilgi.Adi") %>'
        }
</ItemTemplate>
<SeparatorTemplate>
    ,
</SeparatorTemplate>
</asp:Repeater>
];
</script>
<script type="text/javascript">
    window.onload = function () {
        var mapOptions = {
            center: new google.maps.LatLng(markers[0].X, markers[0].Y),
            zoom: 14,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var infoWindow = new google.maps.InfoWindow();
        var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
        for (i = 0; i < markers.length; i++) {
            var data = markers[i]
            var myLatlng = new google.maps.LatLng(data.X, data.Y);
            var marker = new google.maps.Marker({
                position: myLatlng,
                map: map,
                title: data.Adres
            });
            (function (marker, data) {
                var content = " Hayvan Adı : " + data.Adi + "<br>" + "Açıklama : " + data.Aciklama;
                google.maps.event.addListener(marker, "click", function (e) {
                    infoWindow.setContent(content);
                    infoWindow.open(map, marker);
                });
            })(marker, data);
        }
    }
</script>
<div id="dvMap" style="width: 1670px; height: 600px">
</div>

</asp:Content>

