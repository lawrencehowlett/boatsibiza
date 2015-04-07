<?php
class BoatCategory extends Page {

	private static $db = array(
	);

	private static $has_one = array(
	);

    private static $has_many = array(
        "LinkedBoatPages" => "LinkedBoatPage"
    );

	private static $allowed_children = array(
			"BoatPage"
	);

	private static $default_parent = 'BoatCategory';

    private static $description = "A collection of boats in a category";
    
    private static $singular_name = 'Boat Category Page';
    
    private static $plural_name = 'Boat Category Pages';
    
    private static $can_be_root = true;

    private static $defaults = array(
        "ProvideComments" => false,
        'ShowInMenus' => true
    );

    function getCMSFields() {
        $fields = parent::getCMSFields();

        //Tabs
        $gridFieldConfig = GridFieldConfig_RecordEditor::create();   
        $gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder'));
        $grid = new GridField('LinkedBoatPages ', 'LinkedBoatPages', $this->LinkedBoatPages(),$gridFieldConfig); 
        $grid->getConfig()->getComponentByType('GridFieldDetailForm')->setValidator(singleton('LinkedBoatPage')->getCMSValidator()); 
        $fields->addFieldToTab('Root.Boats', $grid);

        $this->doExtend("updateCMSFields",$fields, get_class());

        return $fields;
    }

}
class BoatCategory_Controller extends Page_Controller {


}
