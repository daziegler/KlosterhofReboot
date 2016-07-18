<nav>
    <ul class="list-inline">
        <% loop $Menu(1) %>
            <li>
                <a class="LinkingMode" href="$Link">$MenuTitle</a>
            </li>
        <% end_loop %>
        <li>
            <a href="#" id="toggleOpeningHours" ><%t Misc.OpeningHours "Öffnungszeiten" %></a>
        </li>
    </ul>
    <div data-uk-sticky>
        <% include OpeningHours %>
    </div>
</nav>
