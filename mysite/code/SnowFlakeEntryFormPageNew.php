<?php
class SnowFlakeEntryFormPageNew extends SiteTree {

	public static $db = array(

	);

	public static $has_one = array(

	
	);
	
	
	public function getCMSFields() {
		$fields = parent::getCMSFields();

		return $fields;
	}

}
class SnowFlakeEntryFormPageNew_Controller extends ContentController {

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
	
	public function Form() {
		
		$recaptchaField = new RecaptchaField('MyCaptcha');
		//$recaptchaField->jsOptions = array('theme' => 'clean'); // optional

		return new Form($this, "Form", new FieldSet(
 
			// List your fields here
			

			/*new TextField("FirstName", "First name"),
			new TextField("LastName", "Last Name"),
			new EmailField("Email", "Email address"),*/
			new FileField("Image", "Upload your snowflake photo (in jpg, gif, or png) below!")
			
			, $recaptchaField
					
			/*new OptionsetField("CurrentStudent", "Are you a current student at The University of Iowa?", array("yes"=>"Yes", "no"=>"No"),"yes")*/
 
		), new FieldSet(
 
			// List the action buttons here
			new FormAction("SignupAction", "Submit your snowflake!")
 
		), new RequiredFields(
 
			 "Image"
 
		));
	}
 
	/**
	* This function is called when the user submits the form.
	*/
	public function SignupAction($data, $form) {
 
		
		// Create a new object and load the form data into it
		$entry = new SnowFlakeEntryPage();
		$entry->setParent($this->ID);
		$form->saveInto($entry);
		
		
	/*	$snowflakes = DataObject::get("SnowFlakeEntryPage");
		$snowflake_count = ($snowflakes->Count()) + 1;*/
		
		$entry->Title = "Snowflake Submission";
		$entry->MenuTitle = "Snowflake Submission";
		
		
 		//print_r($form->fields);
		// Write it to the database.
		$entry->writeToStage("Stage");
		//$entry->publish("Stage","Live");
		
		Session::set('ActionStatus', 'success'); 
		Session::set('ActionMessage', 'Thanks for submitting your snowflake!');
		
		//print_r($form);
		Director::redirectBack();
 
	}
	
	public function StatusMessage() { 
	   if(Session::get('ActionMessage')) { 
	      $message = Session::get('ActionMessage'); 
	      $status = Session::get('ActionStatus');
	
	      Session::clear('ActionStatus'); 
	      Session::clear('ActionMessage');
	
	      return new ArrayData(array('Message' => $message, 'Status' => $status)); 
	   }
	
	   return false; 
	}

		
	
}