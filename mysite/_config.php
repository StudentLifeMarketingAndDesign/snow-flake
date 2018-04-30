<?php

global $project;
$project = 'mysite';

global $database;
//!!! YOU HAVE TO DEFINE YOUR DATABASE FIRST, MAN. !!!
$database = 'snowflake';
require_once "conf/ConfigureFromEnv.php";


// Set the site locale
i18n::set_locale('en_US');

// enable nested URLs for this site (e.g. page/sub-page/)
SiteTree::enable_nested_urls();

if(Director::isLive()) {
	Director::forceSSL(array('/^Security/','/^admin/'));
}
