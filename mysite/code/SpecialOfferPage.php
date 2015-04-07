<?php
class SpecialOfferPage extends Page {

	private static $db = array(
	);

	private static $has_one = array(
        "MainImage" => "Image"
	);

    private static $has_many = array(
        "SpecialOffers" => "SpecialOffer"
    );

	private static $allowed_children = array(
	);

	private static $default_parent = 'SpecialOfferPage';

    private static $description = "List of special offers";
    
    private static $singular_name = 'Special Offer Page';
    
    private static $plural_name = 'Special Offer Page';
    
    private static $can_be_root = true;

    private static $defaults = array(
        "ProvideComments" => false,
        'ShowInMenus' => true
    );

    function getCMSFields() {
        $fields = parent::getCMSFields();

        //gallery
        $gridFieldConfig = GridFieldConfig_RecordEditor::create(); 
        $gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder')); 
        $gridfield = new GridField("SpecialOffers", "SpecialOffers", $this->SpecialOffers()->sort("SortOrder"), $gridFieldConfig);
        $fields->addFieldToTab('Root.SpecialOffers', $gridfield);
        $this->doExtend("updateCMSFields",$fields, get_class());
        return $fields;
    }

}
class SpecialOfferPage_Controller extends Page_Controller {


}
