<?php
class SnowFlakeEntryPage extends SiteTree {

	public static $db = array(
	/*	"FirstName" => "Text",
		"LastName" => "Text",
		"Email" => "Text",*/
	);

	public static $has_one = array(
		"Image" => "Image"
	
	);
	
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Content.Main","Content");
		
		
		$fields->addFieldToTab('Root.Content.Main', new ImageField('Image', 'Snow Flake Image'));
		/*$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Content', 'Content'));*/
		
		
		
		$image_file = DataObject::get_one("File", "`ID` = '{$this->ImageID}'");
		
		if($image_file){
		$fields->addFieldToTab("Root.Content.Main", new LiteralField("ImageLabel", '<a href="'.$image_file->getURL().'" target="_blank">Full-sized Image</a>'));}
		//print_r($image_file);
		return $fields;
	}

}
class SnowFlakeEntryPage_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	public static $allowed_actions = array (
	);

	public function init() {
		parent::init();

	}
		
	
}