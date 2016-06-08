<!DOCTYPE html>
<!--[if IE 7 ]> <html class="ie ie7"> <![endif]-->
<!--[if IE 8 ]> <html class="ie ie8"> <![endif]-->
<!--[if IE 9 ]> <html class="ie ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="de"> <!--<![endif]-->
<head>
    <% base_tag %>
    <link rel="shortcut icon" href="$ThemeDir/favicon.ico" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no">

    <!-- Custom CSS -->
    <% require ThemedCSS("theme.min") %>

    <!-- Bootstrap Core CSS -->
    <% require ThemedCSS("bootstrap.min") %>

    <!-- Vendor CSS -->
    <% require ThemedCSS("vendor.min") %>

    <title>$SiteConfig.Title - $Title - $SiteConfig.Tagline</title>
</head>
<body>

    <% include Navigation %>
<div>
    $Layout
</div>

<!-- jQuery Javascript -->
    <% require javascript("themes/Klosterhof/js/jquery.min.js") %>
<!-- Bootstrap Javascript -->
    <% require javascript("themes/Klosterhof/js/bootstrap.min.js") %>
<!-- All Vendor Javascript Files -->
    <% require javascript("themes/Klosterhof/js/vendor.min.js") %>
<!-- Custom Javascript -->
    <% require javascript("themes/Klosterhof/js/script.js") %>
</body>
</html>