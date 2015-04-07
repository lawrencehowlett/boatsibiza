<?php
 
class ContentTab extends MultilingualDataObject {
 
  
  private static $db = array(	
	  'Title' => 'Varchar',
    'Content' => 'HTMLText',
    'SortOrder' => 'Int'
  );
 
  // One-to-one relationship with gallery page
  private static $has_one = array(
    'Page' => 'Page'	
  );

  public static $multilingual_fields=array(
    'Title','Content'
  );
 
 // tidy up the CMS by not showing these fields
  public function getCMSFields() {
 		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Main","PageID");
    $fields->removeFieldFromTab("Root.Main","SortOrder");
    $this->doExtend("updateCMSFields",$fields, get_class());
		return $fields;		
  }
  
  // Tell the datagrid what fields to show in the table
   private static $summary_fields = array( 
	   'Title' => 'Title'
   );
   public function getCMSValidator() { 
      return new ContentTab_Validator(); 
    } 

    public function getValidator() { 
      return new ContentTab_Validator(); 
    } 
  
}

class ContentTab_Validator extends RequiredFields { 
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