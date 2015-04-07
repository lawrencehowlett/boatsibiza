<?php
class ContactPage extends Page {

	private static $db = array(
	);

	private static $has_one = array(

	);

    private static $has_many = array(

    );

	private static $allowed_children = array(
	);

	private static $default_parent = 'ContactPage';

    private static $description = "Contact page";
    
    private static $singular_name = 'Contact Page';
    
    private static $plural_name = 'Contact Pages';
    
    private static $can_be_root = true;

    private static $defaults = array(
        "ProvideComments" => false,
        'ShowInMenus' => true
    );

    function getCMSFields() {
        $fields = parent::getCMSFields();

        $this->doExtend("updateCMSFields",$fields, get_class());

        return $fields;
    }

}
class ContactPage_Controller extends Page_Controller {


}
