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
    <div class="col-md-3 col-md-6">
        <div class="icon-cont">

        <img id="icon-con" style="height: 80px; width:80px;"  src="$Themedir/images/mobile.png">
        <img id="icon-cont" style="height: 80px; width:80px;" style="height: 80px; width:80px;"  src="$Themedir/images/needle.png">
        <img id="icon-cont" style="height: 80px; width:80px;" src="$Themedir/images/at.png">
        <div id="icos" style="height: 80px; width:80px; background-image: url('$Themedir/images/at.png'); background-repeat:no-repeat;"></div>
        </div>
    </div>

    <div class="col-md-3 col-md-6">
        <div id="map"></div>
    </div>

</div>

<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC0-OWkfyXwKnIenRG8Y0BxuvX6S5TMCZ0&callback=initMap">
</script>
