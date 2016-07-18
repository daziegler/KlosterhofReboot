<% if $Articles %>
    <% loop $Articles %>
        <h1>$ArticleHeader</h1>
        <p>$ArticleContent</p>
        <% if $ArticleImage %>
            <% if $ImagePosition == 'left' %>
                <img src="$ArticleImage.URL">
            <% else_if $ImagePosition == 'right' %>
                <img src="$ArticleImage.URL">
            <% end_if %>
        <% end_if %>
    <% end_loop %>
<% end_if %>