<?php
class Faq extends MultilingualDataObject
{
    static $db = array (
        'Title' => 'Text',
        'Text'  => 'HTMLText',
        'SortOrder'  => 'Int'
    );

    public static $multilingual_fields=array(
    'Title','Text'
    );

    static $has_one = array("Page" => "Page");

    static $field_labels = array( 
        "Title"          => "Question",
        "Text"          => "Answer"      
    );
    
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->removeFieldFromTab("Root.Main","PageID");
        $fields->removeFieldFromTab("Root.Main","SortOrder");
        $this->doExtend("updateCMSFields",$fields, get_class());
        return $fields; 
    }

    public function getCMSValidator() { 
      return new Faq_Validator(); 
    } 

    public function getValidator() { 
      return new Faq_Validator(); 
    } 
    
   
}

class Faq_Validator extends RequiredFields { 
   function php($data) { 
      $bRet = parent::php($data);
        if (empty($data['Title'])) { 
            $this->validationError('Title','Title is required',"required"); 
            $bRet = false; 
        }

        if (empty($data['Text'])) { 
            $this->validationError('Text','Text is required',"required"); 
            $bRet = false; 
        }

        return $bRet; 
   } 
}