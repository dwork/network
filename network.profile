<?php
/*  DCW  03-09-2014  Added a couple of taxonomy terms */

/**
 * Implements hook_install_tasks().
 */
function network_install_tasks($install_state) {
  return array(
    // Just a hidden task callback.
    'network_profile_setup' => array(),
    'network_block_setup' => array(),
  );
}

/**
 * Installer task callback.
 */
function network_block_setup() {

  $default_theme = 'professional_theme';
  $admin_theme = 'seven';

  $values = array(
    array(
      'module' => 'simplenews',
      'delta' => 'Newsletter: Multi Subscription',
      'theme' => $default_theme,
      'status' => 1,
      'weight' => 30,
      'region' => 'sidebar_first',
      'pages' => '',
      'cache' => -1,
    ),
  );
  $query = db_insert('block')->fields(array('module', 'delta', 'theme', 'status', 'weight', 'region', 'pages', 'cache'));
  foreach ($values as $record) {
    $query->values($record);
  }
  $query->execute();

}

/**
 * Installer task callback.
 */
function network_profile_setup() {

	# SMTP module defaults
	variable_set('smtp_on','1');
	variable_set('smtp_username','crxymail');
	variable_set('smtp_password','crxy010#');
	variable_set('smtp_port','587');
	variable_set('smtp_host','smtp.earthclick.net');
	variable_set('smtp_fromname','Networking');
	variable_set('smtp_from','aegir@aegir.earthclick.net');

	// member status
	_create_taxonomy_term('Active', 'member_status');
	_create_taxonomy_term('Inactive', 'member_status');
	_create_taxonomy_term('Former Member', 'member_status');
	_create_taxonomy_term('Substitute', 'member_status');

	// attendance 
	_create_taxonomy_term_custom('Regular Meeting', 'attendance', 'Present');
	_create_taxonomy_term_custom('Substitute', 'attendance', 'Substitute');
	_create_taxonomy_term_custom('Tardy', 'attendance', 'Tardy');
	_create_taxonomy_term_custom('Makeup', 'attendance', 'Makeup');
	_create_taxonomy_term_custom('Absent', 'attendance', 'Absent');
	_create_taxonomy_term_custom('Excused', 'attendance', 'Do Not Count');
	
	// phone/address locations
	_create_taxonomy_term('Billing', 'location');
	_create_taxonomy_term('Home', 'location');
	_create_taxonomy_term('Mailing', 'location');
	_create_taxonomy_term('Other', 'location');
	_create_taxonomy_term('Work', 'location');

	// phone type
	_create_taxonomy_term('Phone', 'phone_types');
	_create_taxonomy_term('Cell', 'phone_types');
	_create_taxonomy_term('Fax', 'phone_types');
	_create_taxonomy_term('Message', 'phone_types');
	_create_taxonomy_term('Pager', 'phone_types');
	_create_taxonomy_term('Toll Free', 'phone_types');

    	// club officers
	_create_taxonomy_term('President', 'officers');
	_create_taxonomy_term('Vice President', 'officers');
	_create_taxonomy_term('Past President', 'officers');
	_create_taxonomy_term('Secretary', 'officers');
	_create_taxonomy_term('Treasurer', 'officers');
	_create_taxonomy_term('Sergeant at Arms', 'officers');

    	// board members
	_create_taxonomy_term('President', 'board');
	_create_taxonomy_term('Vice President', 'board');
	_create_taxonomy_term('Secretary', 'board');
	_create_taxonomy_term('Treasurer', 'board');
	_create_taxonomy_term('Member at Large (1)', 'board');
	_create_taxonomy_term('Member at Large (2)', 'board');

    	// Member Title
	_create_taxonomy_term('Miss', 'title');
	_create_taxonomy_term('Mr', 'title');
	_create_taxonomy_term('Ms', 'title');
	_create_taxonomy_term('Mrs', 'title');
	_create_taxonomy_term('Sir', 'title');
  
        // Event Type
        _create_taxonomy_term('Meeting', 'event_type');
        _create_taxonomy_term('Business Faire', 'event_type');
        _create_taxonomy_term('Social', 'event_type');
        _create_taxonomy_term('Board Meeting', 'event_type');
        _create_taxonomy_term('Executive Board Meeting', 'event_type');
  
        // Dues Application Rule
        _create_taxonomy_term('Anniversary', 'dues_application_rule');
        _create_taxonomy_term('Policy Date', 'dues_application_rule');
  
        // Membership Renewal
        _create_taxonomy_term('Automatic', 'membership_renewal','Membership is automatically renewed following payment of dues');
        _create_taxonomy_term('Membership', 'membership_renewal','Membership at large votes on renewal before it is official');
        _create_taxonomy_term('Officers', 'membership_renewal','Renewal requires approval by chapter/club officers or board');
        _create_taxonomy_term('Not Renewable', 'membership_renewal','Membership is not renewable');

}
/*
 * Create taxonomy vocabulary
*/
function _create_taxonomy($name,$machine_name,$description,$help) {
  $vocabulary = (object) array(
    'name' => $name,
    'description' => $description,
    'machine_name' => $machine_name,
    'help' => $help,
  );
  taxonomy_vocabulary_save($vocabulary);

}

/*
 * Create taxonomy terms give machine name ($mac)
 */
function _create_taxonomy_term($name,$machine_name,$description = NULL) {
  $voc = taxonomy_vocabulary_machine_name_load($machine_name);
  $term = new stdClass();
  $term->name = $name;
  if (isset($voc)) {
  	$term->vid = $voc->vid;
  } else {
    	$term->vid = 1;
  }
  if (isset($description)) {
     $term->description = $description;
  }
  taxonomy_term_save($term);
  return $term->tid;
}

/*
 * Create taxonomy terms give machine name ($mac)
 */
function _create_taxonomy_term_custom($name,$machine_name,$statistic) {
  $voc = taxonomy_vocabulary_machine_name_load($machine_name);
  $term = new stdClass();
  $term->name = $name;
  $term->statistic['und'][0]['value'] = $statistic;
  if (isset($voc)) {
        $term->vid = $voc->vid;
  } else {
        $term->vid = 1;
  }
  taxonomy_term_save($term);
  return $term->tid;
}

?>
