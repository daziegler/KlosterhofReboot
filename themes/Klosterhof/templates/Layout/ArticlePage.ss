<% if $Articles %>
    <% loop $Articles %>
        <div class="row">
            <% if $ArticleImage %>
                <% if $ImagePosition == 'left' %>
                    <div class="col-xs-6 col-md-4">
                        <a href="$ArticleImage.ScaleMaxWidth(800).URL" data-uk-lightbox>
                            <img src="$ArticleImage.FillMax(800,600).URL" class="img-responsive">
                        </a>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-8">
                        <h1>$ArticleHeader</h1>
                        <p>$ArticleContent</p>
                    </div>
                <% else_if $ImagePosition == 'right' %>
                    <div class="col-xs-12 col-sm-6 col-md-8">
                        <h1>$ArticleHeader</h1>
                        <p>$ArticleContent</p>
                    </div>
                    <div class="col-xs-6 col-md-4">
                        <a href="$ArticleImage.ScaleMaxWidth(800).URL" data-uk-lightbox>
                            <img src="$ArticleImage.FillMax(800,600).URL" class="img-responsive">
                        </a>
                    </div>
                <% end_if %>
            <% else %>
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <h1>$ArticleHeader</h1>
                    <p>$ArticleContent</p>
                </div>
            <% end_if %>
        </div>
    <% end_loop %>
<% end_if %>