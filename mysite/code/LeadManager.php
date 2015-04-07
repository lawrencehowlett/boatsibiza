<?php
class LeadManager extends ModelAdmin {
  public static $managed_models = array('Lead','Status'); 
  static $url_segment = 'leadmanagement'; 
  static $menu_title = 'Leads';
}
?>