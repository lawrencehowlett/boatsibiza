<?php
class OurFleetPage extends Page {

	private static $db = array(
	);

	private static $has_one = array(
	);

    private static $has_many = array(
    );

	private static $allowed_children = array(
			"BoatPage"
	);

	private static $default_parent = 'OurFleetPage';

    private static $description = "A collection of boats in your fleet";
    
    private static $singular_name = 'Boat Fleet Page';
    
    private static $plural_name = 'Boat Fleet Pages';
    
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
class OurFleetPage_Controller extends Page_Controller {


}
