<?php
class Lead extends MultilingualDataObject {
    static $db = array(
        'Name'          => 'Varchar(225)',
        'EmailAddress'  => 'Varchar(225)',
        'Telephone'     => 'Varchar(225)',
        'EnquiryDate'   => 'Date',
        "NoOfPassengers"  => 'Varchar(225)',
        "Budget" => "Varchar(225)",
        "HireDate" => "Varchar(225)",
        "Comments"=>"Text",
        "pageTitle" => "Text"

    );

    static $has_one = array(
        'Status'        => 'Status'
    );

    static $has_many = array(
    );

    static $searchable_fields = array(
        'Name',
        'EmailAddress',
        'Telephone',
        'StatusID' => array('title'=>'Status')
    );   

    private static $default_sort = "EnquiryDate DESC";
   
    static $summary_fields = array (
        "EnquiryDate.Nice",
        "Budget",
        "Name",
        "EmailAddress",
        "Telephone",
        "Status.Title"
    );
   
    static $field_labels = array( 
        "EmailAddress"          => "Email Address",
        "Status.Title"          => "Status",
        "pageTitle" => "Page enquired from"
    );
    
    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->removeByName('EnquiryDate');
        $enquiry = new DateField('EnquiryDate', 'Enquiry Date'); 
        $fields->addFieldToTab('Root.Main', $enquiry->setConfig('showcalendar', true));
        return $fields; 
   }
    
}
?>
