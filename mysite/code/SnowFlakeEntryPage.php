<?php
class SnowFlakeEntryPage extends SiteTree {

	private static $db = array(
	/*	"FirstName" => "Text",
		"LastName" => "Text",
		"Email" => "Text",*/
	);

	private static $has_one = array(
		"Image" => "Image"
	
	);
	
	
	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Main","Content");
		
		
		$fields->addFieldToTab('Root.Main', $uploadField = new UploadField('Image', 'Snow Flake Image'));
		/*$fields->addFieldToTab('Root.Main', new HTMLEditorField('Content', 'Content'));*/
		
		$uploadfield->setCanAttachExisting(false); // Block access to SilverStripe assets library
        $uploadfield->setCanPreviewFolder(false); // Don't show target filesystem folder on upload field
        $uploadfield->relationAutoSetting = false; // Prevents the form thinking the GalleryPage is the underlying object
		
		$image_file = DataObject::get_one("File", "`ID` = '{$this->ImageID}'");
		
		if($image_file){
		$fields->addFieldToTab("Root.Main", new LiteralField("ImageLabel", '<a href="'.$image_file->getURL().'" target="_blank">Full-sized Image</a>'));}
		//print_r($image_file);
		return $fields;
	}

}
class SnowFlakeEntryPage_Controller extends Page_Controller {

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
	private static $allowed_actions = array (
		"Form"
	
	);

	public function init() {
		parent::init();

	}
	
	public function PrevNextPage($Mode = 'next') {
   
		if($Mode == 'next'){
			$Where = "ParentID = ($this->ParentID) AND Sort > ($this->Sort)";
			$Sort = "Sort ASC";
		}
		elseif($Mode == 'prev'){
			$Where = "ParentID = ($this->ParentID) AND Sort < ($this->Sort)";
			$Sort = "Sort DESC";
		}
		else{
		return false;
		}
		
		return DataObject::get("SiteTree", $Where, $Sort, null, 1);
		 
}
		
	
}