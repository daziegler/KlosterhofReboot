<nav>
    <ul>
        <% loop $Menu(1) %>
            <li <% if $isCurrent %>class="active"<% end_if %>>
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
