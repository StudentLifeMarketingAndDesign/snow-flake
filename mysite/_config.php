<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'koko.imu.uiowa.edu',
	"username" => 'dsl_snowflake',
	"password" => 'pRuTAs29',
	"database" => 'dsl_snowflake',
	"path" => '',
);

MySQLDatabase::set_connection_charset('utf8');

// This line set's the current theme. More themes can be
// downloaded from http://www.silverstripe.org/themes/
SSViewer::set_theme('blackcandy');

// Set the site locale
i18n::set_locale('en_US');

// enable nested URLs for this site (e.g. page/sub-page/)
SiteTree::enable_nested_urls();
SpamProtectorManager::set_spam_protector("RecaptchaProtector");
Director::set_environment_type("live");
RecaptchaField::$public_api_key = '6LciYb8SAAAAAAQbOZzL5o3uqCygC3qmtFIppRkF';
RecaptchaField::$private_api_key = '6LciYb8SAAAAAAiHTl1-SV0qdUg6nIw9qN98Syxv';