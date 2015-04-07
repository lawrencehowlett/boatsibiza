<?php
class TopBoatManager extends ModelAdmin {

    private static $managed_models = array(
        'TopBoat'
    );

    public static $url_segment = 'topboats'; // Linked as /admin/products/

    public static $model_importers = array();

    public static $menu_title = 'Top Boat List';

    //private static $menu_icon = 'mysite/adminimages/branches.png';

    //private static $menu_priority = 6;

    private static $allowed_actions = array (
        'SearchForm','doSearch'
    );



    public function getEditForm($id = null, $fields = null) {
        $form = parent::getEditForm($id, $fields);
        $gridField = $form->Fields()->fieldByName($this->sanitiseClassName($this->modelClass));
        $gridField->getConfig()->addComponent(new GridFieldSortableRows('SortOrder'));
        return $form;
    }


}