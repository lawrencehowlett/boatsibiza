<?php
 
class TopBoat extends MultilingualDataObject {
 
  
  private static $db = array(	
    "Title" => "Varchar",
    "SortOrder" => "Int"
  );
 
  // One-to-one relationship with gallery page
  private static $has_one = array(
    'BoatNumberOne' => 'SiteTree'
  );
 
 // tidy up the CMS by not showing these fields
  public function getCMSFields() {
 		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Main","TopBoatListID");
    $fields->removeFieldFromTab("Root.Main","SortOrder");
    $fields->addFieldToTab('Root.Main', new TreeDropdownField("BoatNumberOneID", "Select a boat page", "SiteTree"));
		return $fields;		
  }
  
  // Tell the datagrid what fields to show in the table
   private static $summary_fields = array( 
	   'Title' => 'Title' 
   );

   public function getPage(){

        $StageVersion = Versioned::current_stage() == "Stage"? "SiteTree.ID=":"SiteTree_Live.ID=";
        $Page = Page::get()->where($StageVersion.$this->BoatNumberOneID);

        return $Page;

    }

}
