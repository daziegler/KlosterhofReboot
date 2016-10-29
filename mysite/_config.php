<?php

global $project;
$project = 'KlosterhofReboot';

global $database;
$database = 'klosterhof';

require_once('conf/ConfigureFromEnv.php');

error_reporting(E_ALL);

// Set the site locale
i18n::set_locale('de_DE');
