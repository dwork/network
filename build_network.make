;  DCW 03-09-2014  Update from 7.19 to 7.26 drupal core 

core = 7.x
api = 2

projects[drupal][type] = core
projects[drupal][version] = "7.26"

;------------------------------------------------------------------------------------------
; Include "network" git
projects[network][type] = profile
projects[network][download][type] = git
projects[network][download][url] = git://github.com/dwork/network.git
