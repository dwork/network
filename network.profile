<?php

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

  $default_theme = 'omega_network';
  $admin_theme = 'seven';

  $values = array(
    array(
      'module' => 'simplenews',
      'delta' => 'Newsletter: Multi Subscription',
      'theme' => $default_theme,
      'status' => 1,
      'weight' => 0,
      'region' => 'sidebar_second',
      'pages' => '',
      'cache' => -1,
    ),
    array(
      'module' => 'club_attendance',
      'delta' => 'Attendance',
      'theme' => $default_theme,
      'status' => 1,
      'weight' => 10,
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
	_create_taxonomy_term_custom('Absent', 'attendance', 'Absent');
	_create_taxonomy_term_custom('Excused', 'attendance', 'Do Not Count');
	_create_taxonomy_term_custom('Makeup', 'attendance', 'Makeup');
	_create_taxonomy_term_custom('Regular Meeting', 'attendance', 'Present');
	
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

    	// Member Title
	_create_taxonomy_term('Miss', 'title');
	_create_taxonomy_term('Mr', 'title');
	_create_taxonomy_term('Ms', 'title');
	_create_taxonomy_term('Mrs', 'title');
	_create_taxonomy_term('Sir', 'title');
  
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
function _create_taxonomy_term($name,$machine_name) {
  $voc = taxonomy_vocabulary_machine_name_load($machine_name);
  $term = new stdClass();
  $term->name = $name;
  if (isset($voc)) {
  	$term->vid = $voc->vid;
  } else {
    	$term->vid = 1;
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

