<ul>
    <% loop $Menu(1) %>
        <li>
            <a class="LinkingMode" href="$Link">$MenuTitle</a>
        </li>
    <% end_loop %>
    <li>
        <% include OpeningHours %>
    </li>
</ul>
