<?php
class BoatPage extends Page {

	private static $db = array(
		"ShortDescription" => "Text",
        "ShortDescriptionTwo" => "HTMLText",
		"Capacity" => "Varchar(200)"
	);

	private static $has_one = array(
		"FeaturedImage" => "Image"
	);

	private static $allowed_children = array(
	);

	private static $default_parent = 'BoatCategory';

    private static $description = "Boat detail page";
    
    private static $singular_name = 'Boat Page';
    
    private static $plural_name = 'Boat Pages';
    
    private static $can_be_root = true;

    private static $defaults = array(
        "ProvideComments" => false,
        'ShowInMenus' => true
    );

    function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Details',new TextareaField('ShortDescription',"Short Description (Used on boat category page)"));
        $fields->addFieldToTab('Root.Details',new HTMLEditorField('ShortDescriptionTwo',"Short Description for Right Hand Side of image gallery"));
        
        $fields->addFieldToTab('Root.Details',new TextField('Capacity',"Boat Capacity"));
        
        $fields->addFieldToTab('Root.GalleryImages',  $uploadField = new UploadField($name = 'FeaturedImage',$title = 'Upload a Feature Image'));
        $uploadField->setFolderName('FeaturedImage');
        $uploadField->setAllowedExtensions(array('jpg', 'jpeg', 'png', 'gif')); 

        $this->doExtend("updateCMSFields",$fields, get_class());

        return $fields;
    }

}
class BoatPage_Controller extends Page_Controller {


}
