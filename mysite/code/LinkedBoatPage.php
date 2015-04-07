<?php
class LinkedBoatPage extends MultilingualDataObject
{
    static $db = array (
        "SortOrder" => "Int"
    );

    static $has_one = array("BoatCategory" => "BoatCategory",'BoatPage' => 'SiteTree' );
    
    public function getCMSFields(){

        return new FieldList(
            new TreeDropdownField("BoatPageID", "Select a boat from your fleet", "SiteTree")
        );
    }
    
    // public function CTALink(){
    //     if ($this->TargetPageID > 0){
    //         //$URLString = DataObject::get_by_id("SiteTree", $this->TargetPageID)->Link();
    //         $URLData = DataObject::get_by_id("SiteTree", $this->TargetPageID);
    //         if (is_object($URLData)){
    //             $URLString = $URLData->Link();
    //         } else {
    //             $URLString = $this->TargetPageID;
    //         }
    //         return $URLString;
    //     } else {
    //         return false;
    //     }
    // }

    public function getCMSValidator() { 
      return new LinkedBoatPage_Validator(); 
    } 

    public function getValidator() { 
      return new LinkedBoatPage_Validator(); 
    } 

    public function getTitle(){
        if ($this->BoatPageID > 0){
            $Data = DataObject::get_by_id("SiteTree", $this->BoatPageID);
            if (is_object($Data)){
                $Title = $Data->Title;
            } else {
                $Title = "Not Set";
            }
            return $Title;
        } else {
            return "Not Set";
        }
    }

    public function getPage(){
        

        $StageVersion = Versioned::current_stage() == "Stage"? "SiteTree.ID=":"SiteTree_Live.ID=";
        $Page = Page::get()->where($StageVersion.$this->BoatPageID);

        return $Page;
    }

    private static $summary_fields = array( 
       'Title' => 'Title' 
   );


}

class LinkedBoatPage_Validator extends RequiredFields { 
   function php($data) { 
      $bRet = parent::php($data);
        if (empty($data['BoatPageID'])) { 
            $this->validationError('BoatPageID','Boat Page is required',"required"); 
            $bRet = false; 
        }

        return $bRet; 
   } 
}