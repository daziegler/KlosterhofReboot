<header>
    <% include Navigation %>
    <% include OpeningHours%>
</header>
<% if $BannerImage %>
    <div class="row">
        <div class="bannerHolder" style="background-image: url($BannerImage.URL)"></div>
    </div>
<% end_if %>