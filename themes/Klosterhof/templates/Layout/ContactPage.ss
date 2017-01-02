<div>$Content</div>
<div class="row">
    <div class="col-md-6">
        <table class="contactInfos">
            <% if $SiteConfig.Email %>
                <tr>
                    <th>
                        <img class="con-icon" src="$Themedir/images/at.png">
                    </th>
                    <td>
                        <div class="con-des">
                            <div>$SiteConfig.Email</div>
                        </div>
                    </td>
                </tr>
            <% end_if %>
            <% if $SiteConfig.Phone %>
                <tr>
                    <th>
                        <img class="con-icon" src="$Themedir/images/mobile.png">
                    </th>
                    <td>
                        <div class="con-des">
                            <div>$SiteConfig.Phone</div>
                        </div>
                    </td>
                </tr>
            <% end_if %>
            <% if $SiteConfig.Address %>
                <tr>
                    <th>
                        <img class="con-icon" src="$Themedir/images/needle.png">
                    </th>
                    <td>
                        <div class="con-des">
                            <div>$SiteConfig.Address</div>
                        </div>
                    </td>
                </tr>
            <% end_if %>
        </table>
    </div>

    <div class="col-md-6 offset-md-6">
        <% if $LocationImage %>
            <img src="$LocationImage.FillMax(400,300).URL">
            <% else %>
            <div id="map"></div>

        <% end_if %>

    </div>

</div>

<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC0-OWkfyXwKnIenRG8Y0BxuvX6S5TMCZ0&callback=initMap">
</script>
