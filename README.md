Bootstrap 3 template for CiviCRM
================================

This is a (hopefully) a stand alone Bootstrap 3 template for CiviCRM.

See my [blog post](https://blackbricksoftware.com/bit-on-bytes/88-making-civicrm-bootstrap-3-compatible) for more information on the history of this little project and my motivations behind it. 

Instructions
------------
 - Upload assets to client theme. Include the included civicrm.css or civicrm.less into your client side template/theme.
 - Include a copy of Bootstrap 3 into client theme if required.
 - Upload the CRM directory in civicrm/templates/bs3 full of Smarty files to <path to civicrm>/civicrm/templates/bs3/
 - Administer -> System Settings -> Resource URLs -> "Disable CiviCRM css" to yes
 - Include civicrm.css (the one that comes with CiviCRM by default, not the one in this project) into your admin area if required. I didn't do any styling of the admin side template.

Please fork and pull request any changes, I definitely have not had time to go through all the themes.
