<header>
    <% include Navigation %>
    <% include OpeningHours%>
</header>
<% if $BannerImage %>
    <div class="row">
        <div class="bannerHolder" style="background-image: url($BannerImage.URL)">
            <h1>$Title</h1>
        </div>
    </div>
<% else %>
    <div class="row subHeader">
        <div class="col-md-offset-10 col-md-2">
            <h1>$Title</h1>
        </div>
    </div>
<% end_if %>