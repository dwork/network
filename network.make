api = 2
core = 7.x

; Build Kit 7.x-2.x HEAD
includes[] = http://drupalcode.org/project/buildkit.git/blob_plain/refs/heads/7.x-2.x:/drupal-org.make

;--------------------
; Build Kit overrides
;--------------------

projects[tao][subdir] = contrib
projects[rubik][subdir] = contrib
projects[mayo][subdir] = contrib
projects[professional_theme][subdir] = contrib
projects[professional_theme][type] = theme

# Override
projects[features][subdir] = contrib
projects[features][version] = "2.0"
projects[views][version] = "3.7"
projects[ctools][version] = "1.4"

projects[omega][subdir] = contrib
projects[omega][version] = "3.1"

projects[redirect][subdir] = contrib
projects[redirect][version] = "1.0-rc1"

projects[emfield[subdir] = contrib
projects[emfield][version] = "1.0-alpha2"

projects[globalredirect[subdir] = contrib
projects[globalredirect][version] = "1.5"

projects[kwresearch][subdir] = contrib
projects[kwresearch][version] = "1.0-alpha4"

projects[media][subdir] = contrib
projects[media][version] = "1.4"

projects[metatag][subdir] = contrib
projects[metatag][version] = "1.0-beta9"

projects[seotools][subdir] = contrib
projects[seotools][version] = "1.0-alpha6"

projects[socialmedia][subdir] = contrib
projects[socialmedia][version] = "1.0-beta3"

;--------------------
; Additional Contrib
;--------------------

;  Allow site to email 
projects[smtp][subdir] = contrib
projects[smtp][version] = 1.0

projects[mimemail][subdir] = contrib
projects[mimemail][version] = 1.0-beta3

projects[mailsystem][subdir] = contrib
projects[mailsystem][version] = 2.34

;  Special Menu Items
projects[special_menu_items][subdir] = contrib
projects[special_menu_items][version] =  "2.0"

;  Simplenews newsletter
projects[simplenews][subdir] = contrib
projects[simplenews][version] =  "1.1"

;  Rules 
projects[rules][subdir] = contrib
projects[rules][version] = 2.6 

;  Calendar
projects[calendar][subdir] = contrib
projects[calendar][version] = 3.4

projects[link][subdir] = contrib
projects[link][version] = 1.2

projects[admin_menu][subdir] = contrib
projects[admin_menu][version] = 3.0-rc4

projects[boxes][subdir] = contrib
projects[boxes][version] = 1.1

projects[markdown][subdir] = contrib
projects[markdown][version] = 1.2

; Creates invalid HTML with preformatted blocks. Patch may not be necessary with v1.2
; http://drupal.org/node/684554
; projects[markdown][patch][684554] = http://drupal.org/files/issues/markdown-684554.patch

; Modules
projects[addressfield][version] = "1.0-beta5"
projects[addressfield][subdir] = "contrib"

projects[auto_nodetitle][version] = "1.0"
projects[auto_nodetitle][subdir] = "contrib"

projects[ckeditor][version] = "1.13"
projects[ckeditor][subdir] = "contrib"

projects[cck_phone][version] = "1.x-dev"
projects[cck_phone][subdir] = "contrib"

projects[context][version] = "3.2"
projects[context][subdir] = "contrib"

projects[css_injector][version] = "1.10"
projects[css_injector][subdir] = "contrib"

projects[date][version] = "2.7"
projects[date][subdir] = "contrib"

projects[defaultcontent][version] = "1.0-alpha9"
projects[defaultcontent][subdir] = "contrib"

projects[devel][version] = "1.4"
projects[devel][subdir] = "contrib"

projects[editablefields][version] = "1.0-alpha2"
projects[editablefields][subdir] = "contrib"

projects[email][version] = "1.2"
projects[email][subdir] = "contrib"

projects[entity][version] = "1.3"
projects[entity][subdir] = "contrib"

projects[entityreference][version] = "1.1"
projects[entityreference][subdir] = "contrib"

projects[entityconnect][version] = "1.0-rc1"
projects[entityconnect][subdir] = "contrib"

; projects[eva][version] = "1.2"
; projects[eva][subdir] = "contrib"

projects[fancy_login][version] = "3.0-beta6"
projects[fancy_login][subdir] = "contrib"

projects[features_extra][version] = "1.0-beta1"
projects[features_extra][subdir] = "contrib"

projects[field_permissions][version] = "1.0-beta2"
projects[field_permissions][subdir] = "contrib"

projects[field_collection][version] = "1.0-beta5"
projects[field_collection][subdir] = "contrib"

projects[field_collection_views][version] = "1.0-beta3"
projects[field_collection_views][subdir] = "contrib"

projects[field_group][version] = "1.3"
projects[field_group][subdir] = "contrib"

projects[geocoder][version] = "1.2"
projects[geocoder][subdir] = "contrib"

projects[geofield][version] = "2.1"
projects[geofield][subdir] = "contrib"

projects[geophp][version] = "1.7"
projects[geophp][subdir] = "contrib"

projects[hierarchical_select][version] = "3.0-alpha6"
projects[hierarchical_select][subdir] = "contrib"

projects[imce][version] = "1.8"
projects[imce][subdir] = "contrib"

projects[insert_view][version] = "2.0"
projects[insert_view][subdir] = "contrib"

projects[libraries][version] = "2.2"
projects[libraries][subdir] = "contrib"

projects[logintoboggan][version] = "1.3"
projects[logintoboggan][subdir] = "contrib"

projects[nice_menus][version] = "2.5"
projects[nice_menus][subdir] = "contrib"

; copy of "node_clone", due to naming inconsistency
projects[clone][download][type] = "git"
projects[clone][download][url] = "https://github.com/dwork/clone.git"
projects[clone][subdir] = "contrib"
projects[clone][type] = "module"

projects[pathauto][version] = "1.2"
projects[pathauto][subdir] = "contrib"

projects[profile2][version] = "1.3"
projects[profile2][subdir] = "contrib"

projects[quicktabs][version] = "3.6"
projects[quicktabs][subdir] = "contrib"

projects[readmorecontrol][version] = "1.2"
projects[readmorecontrol][subdir] = "contrib"

projects[references][version] = "2.1"
projects[references][subdir] = "contrib"

projects[registration][version] = "1.3"
projects[registration][subdir] = "contrib"

projects[registration_views][version] = "1.0"
projects[registration_views][subdir] = "contrib"

projects[nodereference_url][version] = "1.12"
projects[nodereference_url][subdir] = "contrib"

; Please fill the following out. Type may be one of get, g://github.com/phayes/geoPHP.gitt, bzr or svn,
; and url is the url of the download.
projects[rotary_projects_membership][download][type] = "git"
projects[rotary_projects_membership][download][url] = "https://github.com/dwork/rotary_project_membership.git"
projects[rotary_projects_membership][subdir] = "contrib"
projects[rotary_projects_membership][type] = "module"

projects[club_base][download][type] = "git"
projects[club_base][download][url] = "https://github.com/dwork/club_base.git"
projects[club_base][subdir] = "contrib"
projects[club_base][type] = "module"

projects[club_dues][download][type] = "git"
projects[club_dues][download][url] = "https://github.com/dwork/club_dues.git"
projects[club_dues][subdir] = "contrib"
projects[club_dues][type] = "module"

projects[club_events][download][type] = "git"
projects[club_events][download][url] = "https://github.com/dwork/club_events.git"
projects[club_events][subdir] = "contrib"
projects[club_events][type] = "module"

projects[club_attendance][download][type] = "git"
projects[club_attendance][download][url] = "https://github.com/dwork/club_attendance.git"
projects[club_attendance][subdir] = "contrib"
projects[club_attendance][type] = "module"

projects[club_networking][download][type] = "git"
projects[club_networking][download][url] = "https://github.com/dwork/club_networking.git"
projects[club_networking][subdir] = "contrib"
projects[club_networking][type] = "module"

projects[club_views][download][type] = "git"
projects[club_views][download][url] = "https://github.com/dwork/club_views.git"
projects[club_views][subdir] = "contrib"
projects[club_views][type] = "module"

projects[club_newsletter][download][type] = "git"
projects[club_newsletter][download][url] = "https://github.com/dwork/club_newsletter.git"
projects[club_newsletter][subdir] = "contrib"
projects[club_newsletter][type] = "module"

projects[youtube_field][download][type] = "git"
projects[youtube_field][download][url] = "https://github.com/dwork/youtube_field.git"
projects[youtube_field][subdir] = "contrib"
projects[youtube_field][type] = "module"

projects[image_gallery][download][type] = "git"
projects[image_gallery][download][url] = "https://github.com/dwork/image_gallery.git"
projects[image_gallery][subdir] = "contrib"
projects[image_gallery][type] = "module"

projects[token][version] = "1.5"
projects[token][subdir] = "contrib"

projects[views_php][version] = "1.0-alpha1"
projects[views_php][subdir] = "contrib"

projects[views_send][version] = "1.0-rc3"
projects[views_send][subdir] = "contrib"

projects[views_slideshow][version] = "3.1"
projects[views_slideshow][subdir] = "contrib"

projects[views_bulk_operations][version] = "3.2"
projects[views_bulk_operations][subdir] = "contrib"

projects[widgets][version] = "1.0-rc1"
projects[widgets][subdir] = "contrib"

projects[xmlsitemap][version] = "2.0-rc2"
projects[xmlsitemap][subdir] = "contrib"

projects[omega_network][download][type] = "git"
projects[omega_network][download][url] = "https://github.com/dwork/omega_network.git"
projects[omega_network][subdir] = "contrib"
projects[omega_network][type] = "theme"

; Libraries
; Please fill the following out. Type may be one of get, git, bzr or svn,
; and url is the url of the download.
; libraries[geoPHP][download][type] = "git"
; libraries[geoPHP][download][url] = "https://github.com/phayes/geoPHP.git"
; libraries[geoPHP][directory_name] = "geoPHP"
; libraries[geoPHP][type] = "library"

libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.3/ckeditor_3.6.3.tar.gz"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][destination] = "modules/contrib/ckeditor"
libraries[ckeditor][overwrite] = 1

;--------------------
; Custom
;--------------------

includes[image_gallery] = http://raw.github.com/dwork/image_gallery/master/image_gallery.make.inc

; Include levelten features
includes[enterprise_base] = http://github.com/dwork/make-levelten/raw/master/enterprise_base.make.inc
includes[seotools] = http://github.com/dwork/make-levelten/raw/master/seotools.make.inc
includes[socialmedia] = http://github.com/dwork/make-levelten/raw/master/socialmedia.make.inc

;--------------------
; Development
;--------------------

projects[coder][subdir] = contrib
projects[coder][version] = 1.1
