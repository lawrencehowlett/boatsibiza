<?php
 
class SpecialOffer extends MultilingualDataObject {
 
  
  private static $db = array(	
	  'Title' => 'Varchar',
    'Content' => 'Text',
    'SortOrder' => 'Int',
    "ExpiryDate" => "SS_Datetime"
  );

  public static $multilingual_fields=array(
    'Title','Content'
    );
 
  // One-to-one relationship with gallery page
  private static $has_one = array(
    'SpecialOfferPage' => 'SpecialOfferPage',	
    'Image' => "Image"
  );
 
 // tidy up the CMS by not showing these fields
  public function getCMSFields() {
 		$fields = parent::getCMSFields();
    $fields->removeFieldFromTab("Root.Main","SortOrder");
    $fields->addFieldToTab('Root.Main',  $uploadField = new UploadField($name = 'Image',$title = 'Upload an image'));
    $uploadField->setFolderName('SpecialOffers');
    $uploadField->setAllowedExtensions(array('jpg', 'jpeg', 'png', 'gif')); 
    $this->doExtend("updateCMSFields",$fields, get_class());
		return $fields;		
  }
  
  // Tell the datagrid what fields to show in the table
   private static $summary_fields = array( 
	   'Title' => 'Title' ,
    'Content' => 'Content'
   );
   public function getCMSValidator() { 
      return new SpecialOffer_Validator(); 
    } 

    public function getValidator() { 
      return new SpecialOffer_Validator(); 
    } 

   
}

class SpecialOffer_Validator extends RequiredFields { 
   function php($data) { 
      $bRet = parent::php($data);
        if (empty($data['Title'])) { 
            $this->validationError('Title','Title is required',"required"); 
            $bRet = false; 
        }

        if (empty($data['Content'])) { 
         $this->validationError('Content','Content is required',"required"); 
         $bRet = false; 
        }

        return $bRet; 
   } 
}