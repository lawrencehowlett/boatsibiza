<?php
class GalleryHolder extends Page {

	private static $icon = 'mysite/images/folder-icon.png';

	private static $allowed_children = array('GalleryPage');

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$this->doExtend("updateCMSFields",$fields, get_class());

		return $fields;
	}
}

class GalleryHolder_Controller extends Page_Controller {

	public function init() {
		parent::init();
	}

	public function getGalleryPageItems() {
		$paginatedItems = new PaginatedList(GalleryPage::get(), $this->request);
		$paginatedItems->setPageLength(6);

		return $paginatedItems;
	}
}