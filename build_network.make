core = 7.x
api = 2

projects[drupal][type] = core
projects[drupal][version] = "7.18"

;------------------------------------------------------------------------------------------
; Include "network" git
projects[network][type] = profile
projects[network][download][type] = git
projects[network][download][url] = git://github.com/dwork/network.git
