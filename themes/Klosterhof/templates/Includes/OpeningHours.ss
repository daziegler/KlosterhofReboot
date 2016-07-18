<div> <!-- Add Wrapper -->
    <a href="#" id="toggleOpeningHours" ><%t Misc.OpeningHours "Öffnungszeiten" %></a> <!-- Add Toggle -->

    <div id="OpeningHoursBody"> <!-- OpeningHours Body -->
        <h4><%t Misc.OpeningHoursAre "Unsere Öffnungszeiten" %>:</h4>
        <div>
            <div>$SiteConfig.RestaurantTitle</div>
            <div>$SiteConfig.RestaurantOpeningDays</div>
            <div>$SiteConfig.RestaurantOpeningHours </div>
            <% if $SiteConfig.DayOff %>
                <div>$SiteConfig.DayOff Ruhetag</div>
            <% end_if %>
            <br />
            <% if $SiteConfig.BiergartenTitle %>
                <div>$SiteConfig.BiergartenTitle</div>
                <% if $SiteConfig.BiergartenDayOff %>
                    <div>$SiteConfig.BiergartenDayOff</div>
                <% end_if %>
                <% if $SiteConfig.BiergartenOpeningHours %>
                    <div>$SiteConfig.BiergartenOpeningHours</div>
                <% end_if %>
            <% end_if %>
        </div>
    </div>
</div>