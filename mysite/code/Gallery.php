<?php
class Gallery extends DataObject {

	private static $db = array(
		'Title' => 'Varchar', 
		'Caption' => 'Varchar',
		'SortOrder' => 'Int'
	);

	private static $has_one = array(
		'Image' => 'Image',
		'GalleryPage' => 'GalleryPage'
	);


	public static $default_sort='SortOrder';

	private static $summary_fields = array(
		'Thumbnail' => 'Thumbnail',
		'Title' 	=> 'Title'
	);

	public function getCMSFields() {
		
		$fields = parent::getCMSFields();

		$uploadField = UploadField::create('Image', 'Image');
		$uploadField->setFolderName('GalleryImages');
		$fields->addFieldToTab('Root.Main', $uploadField);

		$this->doExtend("updateCMSFields",$fields, get_class());

		return $fields;
	}

	public function getThumbnail() {
		return $this->Image()->PaddedImage(50, 50);
	}

	protected static $current_class="DataObject";

	function doExtend($hook,$args,$currentclass){				
		if($currentclass==self::$current_class){						
			$this->extend($hook,$args);
		}
	}	
}