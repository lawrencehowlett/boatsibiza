<?php
class Page extends MultilingualPage {

	public static $hide_ancestor = "MultilingualPage"; 

    private static $db = array(
	);

	private static $has_one = array(
	);

    public static $multilingual_fields=array(
    );

	private static $has_many = array(
		"GalleryImages" => "GalleryImage",
		"ContentTabs" => "ContentTab",
		"Reviews" => "Review",
		"Faqs" => "Faq"
	);

	function getCMSFields() {
        $fields = parent::getCMSFields();

        //gallery
        $gridFieldConfig = GridFieldConfig_RecordEditor::create(); 
	    $gridFieldConfig->addComponent(new GridFieldBulkUpload());  
	    $gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder')); 
	    $gridfield = new GridField("GalleryImages", "Gallery Images", $this->GalleryImages()->sort("SortOrder"), $gridFieldConfig);
	    $fields->addFieldToTab('Root.GalleryImages', $gridfield);

	    //Tabs
	    $gridFieldConfig = GridFieldConfig_RecordEditor::create();   
        $gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder'));
        $grid = new GridField('ContentTabs','ContentTabs', $this->ContentTabs()->sort("SortOrder"),$gridFieldConfig); 
		$grid->getConfig()->getComponentByType('GridFieldDetailForm')->setValidator(singleton('ContentTab')->getCMSValidator()); 
		$fields->addFieldToTab('Root.Tabs', $grid);

		//Reviews
	    $gridFieldConfig = GridFieldConfig_RecordEditor::create();   
        $gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder'));
        $grid = new GridField('Reviews','Reviews', $this->Reviews()->sort("SortOrder"),$gridFieldConfig); 
		$grid->getConfig()->getComponentByType('GridFieldDetailForm')->setValidator(singleton('Review')->getCMSValidator()); 
		$fields->addFieldToTab('Root.Reviews', $grid);

		//Faqs
	    $gridFieldConfig = GridFieldConfig_RecordEditor::create();   
        $gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder'));
        $grid = new GridField('Faqs','Faqs', $this->Faqs()->sort("SortOrder"),$gridFieldConfig); 
		$grid->getConfig()->getComponentByType('GridFieldDetailForm')->setValidator(singleton('Faq')->getCMSValidator()); 
		$fields->addFieldToTab('Root.Faqs', $grid);

        $this->doExtend("updateCMSFields",$fields, get_class());

        return $fields;
    }

}
class Page_Controller extends MultilingualPage_Controller {

	
	private static $allowed_actions = array (
		'enquire'
	);

	public function init() {
		parent::init();
        //get special offers
        $specialOffers = DataObject::get("SpecialOffer")->where("ExpiryDate <= now()");
        foreach($specialOffers as $offer){
            $date = new DateTime("+5 days");
            echo $date->format("Y-m-d H:i:s");
            $offer->ExpiryDate = $date->format("Y-m-d H:i:s");
            $offer->write();
        }
		// You can include any CSS or JS required by your project here.
		// See: http://doc.silverstripe.org/framework/en/reference/requirements
	}

	public function getTopBoatList(){
		return TopBoat::get()->sort('SortOrder');
	}

    public function getSpecialOfferSingle(){
        return SpecialOffer::get()->sort('ExpiryDate ASC')->limit("2");
    }


    function enquire() {
        if (strlen($_REQUEST["captcha"]) == 0){
            //create our new lead
            $Lead = new Lead();
            $Lead->Name = convert::raw2sql($_REQUEST["Name"]);
            $Lead->EmailAddress = convert::raw2sql($_REQUEST["EmailAddress"]);
            $Lead->Telephone = convert::raw2sql($_REQUEST["Telephone"]);
            $Lead->NoOfPassengers = convert::raw2sql($_REQUEST["NoOfPassengers"]);
            $Lead->HireDate = convert::raw2sql($_REQUEST["HireDate"]);
            $Lead->Comments = convert::raw2sql($_REQUEST["Comments"]);
            $Lead->Budget = convert::raw2sql($_REQUEST["Budget"]);
            $Lead->pageTitle = convert::raw2sql($_REQUEST["pageTitle"]);
            $Lead->EnquiryDate = date("Y-m-d");
            $Lead->StatusID = 1;
            $Lead->write();

            //populate data for email
            $data["Name"] = $Lead->Name;
            $data["Telephone"] = $Lead->Telephone;
            $data["EmailAddress"] = $Lead->EmailAddress;
            $data["NoOfPassengers"] = $Lead->NoOfPassengers;
            $data["HireDate"] = $Lead->HireDate;
            $data["Comments"] = $Lead->Comments;
            $data["Budget"] = $Lead->Budget;
            $data["pageTitle"] = $Lead->pageTitle;

            //send email to admin
            $From = $Lead->EmailAddress;
            $To = "enquiry@boatsibiza.com";
            $Subject = "New enquiry from $Lead->Name";     
            $email = new Email($From, $To, $Subject);
            $email->setTemplate('GenericEnquiry');
            $email->populateTemplate($data);
            $email->send();


        }        
        Controller::redirect("/thank-you");
    }

}
