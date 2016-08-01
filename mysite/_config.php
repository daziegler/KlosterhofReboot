<?php

global $project;
$project = 'Klosterhof';

global $database;
$database = 'klosterhof';

require_once('conf/ConfigureFromEnv.php');

// Set the site locale
i18n::set_locale('de_DE');
