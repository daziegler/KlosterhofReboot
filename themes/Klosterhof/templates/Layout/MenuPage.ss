<% if $DownloadableMenus %>
    <% loop $DownloadableMenus %>
        <a href="$BaseURL/$Filename">$Title</a>
        <br />
    <% end_loop %>
<% end_if %>

<% if $MenuCategories %>
    <% loop $MenuCategories %>
        <h1>$Title</h1>

        <% if $MenuEntries %>
            <% loop $MenuEntries %>
                <div>
                    <p>$Title - $NicePrice</p>
                    <div>$Description</div>
                </div>
            <% end_loop %>
        <% end_if %>
    <% end_loop %>
<% end_if %>