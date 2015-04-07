<?php
class GalleryPage extends Page {

	private static $icon = 'mysite/images/image-icon.png';

	private static $has_many = array(
		'GalleryImages' => 'Gallery'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields = $this->getGalleryField($fields);

		$this->doExtend("updateCMSFields",$fields, get_class());

		return $fields;
	}

	private function getGalleryField(&$fields) {
		$config = GridFieldConfig_RecordEditor::create(); 
		$config->addComponent(new GridFieldBulkUpload());   
		$config->addComponent(new GridFieldSortableRows('SortOrder'));	

		$fields->addFieldToTab(
			'Root.Gallery',
			GridField::create('galleryimages', 'Image Gallery', $this->GalleryImages(), $config)
		);

		return $fields;
	}
}

class GalleryPage_Controller extends Page_Controller {

	public function init() {
		parent::init();

		Requirements::customCSS(<<<CSS
			.subpage-gallery__item {width: 23.7%;}
CSS
);
	}

	public function getGalleryImagesList() {
		$paginatedItems = new PaginatedList($this->GalleryImages(), $this->request);
		$paginatedItems->setPageLength(16);
		
		return $paginatedItems;
	}
}