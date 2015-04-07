<?php
class Status extends DataObject {
	static $db = array(
		'Title'  => 'Varchar'
	);

	static $singular_name = "Status";

	static $plural_name = "Statuses";

    static $has_many = array(
            'Leads' => 'Lead'
    );
    
	static $summary_fields = array(
		'Title',
        'Notes'
	);
}
?>
