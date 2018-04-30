<?php
class SnowFlakeEntryFormPage extends SiteTree {

	private static $db = array(

	);

	private static $has_one = array(

	
	);
	
	
	public function getCMSFields() {
		$fields = parent::getCMSFields();

		return $fields;
	}

}
class SnowFlakeEntryFormPage_Controller extends ContentController {

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
	
	public function Form() {
		
		$recaptchaField = new NocaptchaField('MyCaptcha');
		//$recaptchaField->jsOptions = array('theme' => 'clean'); // optional
		$uploadField = new FileField("Image", "Upload your snowflake photo (in jpg, gif, or png) below! If your snowflake picture is bigger than 1.5 MB, please make it smaller before submitting it. ");


		// $uploadField->setCanAttachExisting(false); // Block access to SilverStripe assets library
  //       $uploadField->setCanPreviewFolder(false); // Don't show target filesystem folder on upload field
  //       $uploadField->relationAutoSetting = false; // Prevents the form thinking the GalleryPage is the underlying object
		return new Form($this, "Form", new FieldList(
 
			// List your fields here
			

			/*new TextField("FirstName", "First name"),
			new TextField("LastName", "Last Name"),
			new EmailField("Email", "Email address"),*/
			$uploadField 
			, $recaptchaField
					
			/*new OptionsetField("CurrentStudent", "Are you a current student at The University of Iowa?", array("yes"=>"Yes", "no"=>"No"),"yes")*/
 
		), new FieldList(
 
			// List the action buttons here
			new FormAction("SignupAction", "Upload")
 
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
		
		
		$entry->Title = "Snowflake Submission";
		$entry->MenuTitle = "Snowflake Submission";
		
		
 		//print_r($form->fields);
		// Write it to the database.
		$entry->writeToStage("Stage");
		//$entry->publish("Stage","Live");
		
		Session::set('ActionStatus', 'success'); 
		Session::set('ActionMessage', '<p>Thanks for submitting your snowflake! Check this site to see your snowflake soon!</p>');
		
	//Email notification
		$image_file = DataObject::get_one("File", "`ID` = '{$entry->ImageID}'");
		$adminEmailAddress = Config::inst()->get('email', 'admin_email');

		$from = $adminEmailAddress;
		//$to = "ann-goff@uiowa.edu, bret-gothe@uiowa.edu, dustin-quam@uiowa.edu";
		//$to = "bret-gothe@uiowa.edu, dustin-quam@uiowa.edu";
		$to = "dustin-quam@uiowa.edu, benjamin-lewis@uiowa.edu";
		$subject = "New Snowflake Submission";
		$body = '<p>A new snowflake photo has been submitted!</p>

				<p><a href="'.$image_file->getURL().'">This is the image that was submitted.</a> </p>
				
				<p><a href="http://studentlife.uiowa.edu/snowflake/admin/pages/edit/show/'.$entry->ID.'">Approve it (or don\'t) here</a></p>
				';
			
		
		$email = new Email($from, $to, $subject, $body);
		
		
		$email->send();
		
		//print_r($form);
		$this->redirect('/snowflake/submissions');
 
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