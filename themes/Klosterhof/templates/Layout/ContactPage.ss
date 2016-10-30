<div>$Content</div>
<!--Content ist Beschreibungstext-->

<!-- Symbole adden-->
<% if $SiteConfig.Email %>
    <div>Mail: $SiteConfig.Email</div>
<% end_if %>
<% if $SiteConfig.Phone %>
    <div>Telefon: $SiteConfig.Phone</div>
<% end_if %>
<% if $SiteConfig.Address %>
    <div>Adresse: $SiteConfig.Address</div>
<% end_if %>

<% if $LocationImage %>
    <img src="$LocationImage.FillMax(400,300).URL">
<% end_if %>
<div class="row">
    <div class="col-md-6">
        <table class="contactInfos">
            <tr>
                <th>
                    <img class="con-icon" src="$Themedir/images/mobile.png">
                </th>
                <td>
                    <div class="con-des">Hier Kontaktdaten einsetzen</div>
                </td>
            </tr>
            <tr>
                <th>
                    <img class="con-icon" src="$Themedir/images/at.png">
                </th>
                <td>
                    <div class="con-des">Hier Kontaktdaten einsetzen</div>
                </td>
            </tr>
            <tr>
                <th>
                    <img class="con-icon" src="$Themedir/images/needle.png">
                </th>
                <td>
                    <div class="con-des">Hier Kontaktdaten einsetzen</div>
                </td>
            </tr>
        </table>
    </div>

    <div class="col-md-6 offset-md-6">
        <div id="map"></div>
    </div>

</div>

<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC0-OWkfyXwKnIenRG8Y0BxuvX6S5TMCZ0&callback=initMap">
</script>
