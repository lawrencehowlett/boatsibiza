<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'localhost',
	"username" => 'root',
	"password" => 's9ghu78m',
	"database" => 'boatsibiza',
	"path" => '',
);

// Set the site locale
i18n::set_locale('en_GB');
FulltextSearchable::enable();
Multilingual::enable();