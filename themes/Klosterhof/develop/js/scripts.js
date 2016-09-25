/**
 * Created by Daniel on 18.07.2016.
 */

$("#toggleOpeningHours").click(
    function(){
    $("#OpeningHoursBody").toggle();
});

function initMap() {
    var uluru = {lat: 48.7665708, lng: 13.0292092};
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 15,
        scrollwheel: false,
        center: uluru
    });
    var marker = new google.maps.Marker({
        position: uluru,
        map: map
    });
}
