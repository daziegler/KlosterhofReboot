<%--<nav id="nav" class="collapse in">--%>
<%--<ul>--%>
<%--<% loop $Menu(1) %>--%>
<%--<li <% if $isCurrent %>class="active"<% end_if %>>--%>
<%--<a class="LinkingMode" href="$Link">$MenuTitle</a>--%>
<%--</li>--%>
<%--<% end_loop %>--%>
<%--<li>--%>
<%--<a href="#" id="toggleOpeningHours" ><%t Misc.OpeningHours "Öffnungszeiten" %></a>--%>
<%--</li>--%>
<%--</ul>--%>
<%--<div data-uk-sticky>--%>
<%--<% include OpeningHours %>--%>
<%--</div>--%>
<%--</nav>--%>
<%--<button class="navbar-toggle custom-navbar-toggle" type="button" data-toggle="collapse" data-target="#nav">--%>
<%--<span class="icon-bar"></span>--%>
<%--<span class="icon-bar"></span>--%>
<%--<span class="icon-bar"></span>--%>
<%--</button>--%>

<div id="custom-bootstrap-menu" class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder"><span
                    class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span
                    class="icon-bar"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse navbar-menubuilder">
            <ul class="nav navbar-nav navbar-right">
                <% loop $Menu(1) %>
                    <li <% if $isCurrent %>class="active"<% end_if %>>
                        <a class="LinkingMode" href="$Link">$MenuTitle</a>
                    </li>
                <% end_loop %>
                <li>
                    <a href="#" id="toggleOpeningHours"><%t Misc.OpeningHours "Öffnungszeiten" %></a>
                </li>
            </ul>
        </div>
    </div>
</div>
