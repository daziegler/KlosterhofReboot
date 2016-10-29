<% if $DownloadableMenus %>
    <div class="row menuFileContainer">
        <div class="col-md-offset-2 col-md-3">
            <ul class="fileList">
                <% loop $DownloadableMenus %>
                    <li>
                        <a href="$BaseURL/$Filename">$Title</a>
                    </li>
                <% end_loop %>
            </ul>
        </div>
    </div>
<% end_if %>

<% if $MenuCategories %>
    <div class="row">
        <div class="col-md-offset-2 col-md-8">
            <div class="uk-accordion menuCategories" data-uk-accordion="{collapse: false}">
                <% loop $MenuCategories %>
                    <h3 class="uk-accordion-title">$Title</h3>
                    <div class="uk-accordion-content">
                        <% if $MenuEntries %>
                            <% loop $MenuEntries %>
                                <p>$Title - $NicePrice</p>
                                <% if $Description %>
                                    <div>$Description</div>
                                <% end_if %>
                            <% end_loop %>
                        <% end_if %>
                        <% if $Information %>
                            <p>$Information</p>
                        <% end_if %>
                    </div>
                <% end_loop %>
            </div>
        </div>
    </div>
<% end_if %>