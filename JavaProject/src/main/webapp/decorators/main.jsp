<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content=""/>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1"/>
    <meta name="msapplication-tap-highlight" content="no">
    
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="application-name" content="Milestone">

    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Milestone">

    <meta name="theme-color" content="#4C7FF0">
    
    <title>Milestone - Bootstrap 4 Dashboard Template</title>

	<!-- page stylesheets -->
    <link rel="stylesheet" href="vendor/datatables/media/css/dataTables.bootstrap4.css">
    <!-- end page stylesheets --> 
    
    <!-- page stylesheets -->
    <link rel="stylesheet" href="vendor/bower-jvectormap/jquery-jvectormap-1.2.2.css"/>
    <!-- end page stylesheets -->

    <!-- build:css({.tmp,app}) styles/app.min.css -->
    <link rel="stylesheet" href="vendor/bootstrap/dist/css/bootstrap.css"/>
    <link rel="stylesheet" href="vendor/PACE/themes/blue/pace-theme-minimal.css"/>
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.css"/>
    <link rel="stylesheet" href="vendor/animate.css/animate.css"/>
    <link rel="stylesheet" href="styles/app.css" id="load_styles_before"/>
    <link rel="stylesheet" href="styles/app.skins.css"/>
    <!-- endbuild -->
    <decorator:head></decorator:head>
  </head>
  <body>

    <div class="app">
      <!--sidebar panel-->
      <div class="off-canvas-overlay" data-toggle="sidebar"></div>
      <div class="sidebar-panel">
        <div class="brand">
          <!-- toggle offscreen menu -->
          <a href="javascript:;" data-toggle="sidebar" class="toggle-offscreen hidden-lg-up">
            <i class="material-icons">menu</i>
          </a>
          <!-- /toggle offscreen menu -->
          <!-- logo -->
          <a class="brand-logo">
            <img class="expanding-hidden" src="images/logo.png" alt=""/>
          </a>
          <!-- /logo -->
        </div>
        <div class="nav-profile dropdown">
          <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
            <div class="user-image">
              <img src="images/avatar.jpg" class="avatar img-circle" alt="user" title="user"/>
            </div>
            <div class="user-info expanding-hidden">
              Betty Simmons
              <small class="bold">Administrator</small>
            </div>
          </a>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="javascript:;">Settings</a>
            <a class="dropdown-item" href="javascript:;">Upgrade</a>
            <a class="dropdown-item" href="javascript:;">
              <span>Notifications</span>
              <span class="tag bg-primary">34</span>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="javascript:;">Help</a>
            <a class="dropdown-item" href="">Logout</a>
          </div>
        </div>
        <!-- main navigation -->
        <nav>
          <p class="nav-title">NAVIGATION</p>
          <ul class="nav">
            <!-- dashboard -->
            <li>
              <a href="index.html">
                <i class="material-icons text-primary">home</i>
                <span>Home</span>
              </a>
            </li>
            <!-- /dashboard -->
            <!-- apps -->
            <li>
              <a href="javascript:;">
                <span class="menu-caret">
                  <i class="material-icons">arrow_drop_down</i>
                </span>
                <i class="material-icons text-success">font_download</i>
                
                <span>My Forms</span>
              </a>
              <ul class="sub-menu">
                <li>
                  <a href="readxlsx.html">
                    <span>XL Sheet to form</span>
                  </a>
                </li>
                <li>
                  <a href="load_master1.html">
                    <span>Master Page</span>
                  </a>
                </li>
                <li>
                  <a href="app-messages.html">
                    <span>Messages</span>
                  </a>
                </li>
                <li>
                  <a href="app-social.html">
                    <span>Social</span>
                  </a>
                </li>
                <li>
                  <a href="emplyeeSearch.html">
                    <span>People</span>
                  </a>
                </li>
              </ul>
            </li>
            <!-- /apps -->
            <!-- ui -->
            <li>
              <a href="javascript:;">
                <span class="menu-caret">
                  <i class="material-icons">arrow_drop_down</i>
                </span>
                <i class="material-icons text-danger">explore</i>
                <span>Components</span>
              </a>
              <ul class="sub-menu">
                <!-- cards -->
                <li>
                  <a href="javascript:;">
                    <span class="menu-caret">
                      <i class="material-icons">arrow_drop_down</i></span>
                    <span>Cards</span>
                  </a>
                  <ul class="sub-menu">
                    <li>
                      <a href="card-basic.html"><span>Basic</span>
                      </a>
                    </li>
                    <li>
                      <a href="card-portlets.html"><span>Portlets</span>
                      </a>
                    </li>
                    <li>
                      <a href="card-draggable.html"><span>Draggable</span>
                      </a>
                    </li>
                  </ul>
                </li>
                <!-- /cards -->
                <!-- forms -->
                <li>
                  <a href="javascript:;">
                    <span class="menu-caret">
                      <i class="material-icons">arrow_drop_down</i></span>
                    <span>Forms</span>
                  </a>
                  <ul class="sub-menu">
                    <li>
                      <a href="form-basic.html">
                        <span>Basic</span>
                      </a>
                    </li>
                    <li>
                      <a href="form-plugins.html">
                        <span>Plugins</span>
                      </a>
                    </li>
                    <li>
                      <a href="form-editors.html">
                        <span>Editors</span>
                      </a>
                    </li>
                    <li>
                      <a href="form-validation.html">
                        <span>Validation</span>
                      </a>
                    </li>
                    <li>
                      <a href="form-masks.html">
                        <span>Masks</span>
                      </a>
                    </li>
                    <li>
                      <a href="form-upload.html">
                        <span>Upload</span>
                      </a>
                    </li>
                    <li>
                      <a href="form-wizard.html">
                        <span>Wizard</span>
                      </a>
                    </li>
                  </ul>
                </li>
                <!-- /forms -->
                <!-- tables -->
                <li>
                  <a href="javascript:;">
                    <span class="menu-caret">
                      <i class="material-icons">arrow_drop_down</i></span>
                    <span>Tables</span>
                  </a>
                  <ul class="sub-menu">
                    <li>
                      <a href="table-basic.html">
                        <span>Basic</span>
                      </a>
                    </li>
                    <li>
                      <a href="table-responsive.html">
                        <span>Responsive</span>
                      </a>
                    </li>
                    <li>
                      <a href="table-datatables.html">
                        <span>Datatables</span>
                      </a>
                    </li>
                    <li>
                      <a href="table-xeditable.html">
                        <span>xeditable</span>
                      </a>
                    </li>
                  </ul>
                </li>
                <!-- /tables -->
                <li>
                  <a href="ui-buttons.html">
                    <span>Buttons</span>
                  </a>
                </li>
                <li>
                  <a href="ui-social-buttons.html">
                    <span>Social buttons</span>
                  </a>
                </li>
                <li>
                  <a href="ui-general.html">
                    <span>General</span>
                  </a>
                </li>
                <li>
                  <a href="ui-navs.html">
                    <span>Navs</span>
                  </a>
                </li>
                <li>
                  <a href="ui-progressbars.html">
                    <span>Progress bars</span>
                  </a>
                </li>
                <li>
                  <a href="ui-pagination.html">
                    <span>Pagination</span>
                  </a>
                </li>
                <li>
                  <a href="ui-sliders.html">
                    <span>Sliders</span>
                  </a>
                </li>
                <li>
                  <a href="ui-notifications.html">
                    <span>Notifications</span>
                  </a>
                </li>
                <li>
                  <a href="ui-spinners.html">
                    <span>Spinners</span>
                  </a>
                </li>
                <li>
                  <a href="ui-alerts.html">
                    <span>Alerts</span>
                  </a>
                </li>
                <li>
                  <a href="ui-palette.html">
                    <span>Palette</span>
                  </a>
                </li>
                <li>
                  <a href="ui-material.html">
                    <span>Material icons</span>
                  </a>
                </li>
                <li>
                  <a href="ui-fontawesome.html">
                    <span>Fontawesome</span>
                  </a>
                </li>
              </ul>
            </li>
            <!-- /ui -->
            <!-- charts -->
            <li>
              <a href="javascript:;">
                <span class="menu-caret">
                  <i class="material-icons">arrow_drop_down</i>
                </span>
                <i class="material-icons text-warning">assessment</i>
                <span>Charts</span>
              </a>
              <ul class="sub-menu">
                <li>
                  <a href="chart-flot.html">
                    <span>Flot</span>
                  </a>
                </li>
                <li>
                  <a href="chart-easypie.html">
                    <span>Easypie</span>
                  </a>
                </li>
                <li>
                  <a href="chart-chartjs.html">
                    <span>ChartJS</span>
                  </a>
                </li>
                <li>
                  <a href="chart-rickshaw.html">
                    <span>Rickshaw</span>
                  </a>
                </li>
                <li>
                  <a href="chart-c3.html">
                    <span>C3js</span>
                  </a>
                </li>
              </ul>
            </li>
            <!-- /charts -->
          </ul>
          <p class="nav-title">BONUS</p>
          <ul class="nav">
            <!-- maps -->
            <li>
              <a href="javascript:;">
                <span class="menu-caret">
                  <i class="material-icons">arrow_drop_down</i>
                </span>
                <i class="material-icons">beenhere</i>
                <span>Maps</span>
              </a>
              <ul class="sub-menu">
                <li>
                  <a href="map-google.html">
                    <span>Google</span>
                  </a>
                </li>
                <li>
                  <a href="map-googlefull.html">
                    <span>Google fullscreen</span>
                  </a>
                </li>
                <li>
                  <a href="map-vector.html">
                    <span>Vector</span>
                  </a>
                </li>
              </ul>
            </li>
            <!-- /maps -->
            <!-- extras -->
            <li>
              <a href="javascript:;">
                <span class="menu-caret">
                  <i class="material-icons">arrow_drop_down</i>
                </span>
               <!--  <span class="badge bg-danger pull-right">HOT</span> -->
                <i class="material-icons">stars</i>
                <span>Extras</span>
              </a>
              <ul class="sub-menu">
                <!-- emails -->
                <li>
                  <a href="javascript:;">
                    <span class="menu-caret">
                      <i class="material-icons">arrow_drop_down</i></span>
                    <span>Transactional Emails</span>
                  </a>
                  <ul class="sub-menu">
                    <li>
                      <a href="http://milestone.nyasha.me/latest/emails/action.html" target="_blank">
                        <span>Action</span>
                      </a>
                    </li>
                    <li>
                      <a href="http://milestone.nyasha.me/latest/emails/alert.html" target="_blank">
                        <span>Alert</span>
                      </a>
                    </li>
                    <li>
                      <a href="http://milestone.nyasha.me/latest/emails/billing.html" target="_blank">
                        <span>Billing</span>
                      </a>
                    </li>
                    <li>
                      <a href="http://milestone.nyasha.me/latest/emails/progress.html" target="_blank">
                        <span>Progress</span>
                      </a>
                    </li>
                    <li>
                      <a href="http://milestone.nyasha.me/latest/emails/survey.html" target="_blank">
                        <span>Survey</span>
                      </a>
                    </li>
                    <li>
                      <a href="http://milestone.nyasha.me/latest/emails/welcome.html" target="_blank">
                        <span>Welcome</span>
                      </a>
                    </li>
                  </ul>
                </li>
                <!-- /emails -->
                <li>
                  <a href="extra-invoice.html">
                    <span>Invoice</span>
                  </a>
                </li>
                <li>
                  <a href="extra-timeline.html">
                    <span>Timeline</span>
                  </a>
                </li>
                <li>
                  <a href="extra-lists.html">
                    <span>Lists</span>
                  </a>
                </li>
                <li>
                  <a href="extra-signin.html">
                    <span>Signin</span>
                  </a>
                </li>
                <li>
                  <a href="extra-signup.html">
                    <span>Signup</span>
                  </a>
                </li>
                <li>
                  <a href="extra-forgot.html">
                    <span>Forgot</span>
                  </a>
                </li>
                <li>
                  <a href="extra-lockscreen.html">
                    <span>Lockscreen</span>
                  </a>
                </li>
                <li>
                  <a href="extra-404.html">
                    <span>404</span>
                  </a>
                </li>
                <li>
                  <a href="extra-500.html">
                    <span>500</span>
                  </a>
                </li>
                <li>
                  <a href="extra-pricing.html">
                    <span>Pricing tables</span>
                  </a>
                </li>
                <li>
                  <a href="blank.html">
                    <span>Starter page</span>
                  </a>
                </li>
              </ul>
            </li>
            <!-- /extras -->
            <!-- menu levels -->
            <li>
              <a href="javascript:;">
                <span class="menu-caret">
                  <i class="material-icons">arrow_drop_down</i>
                </span>
                <i class="material-icons">line_weight</i>
                <span>Menu levels</span>
              </a>
              <ul class="sub-menu">
                <li>
                  <a href="javascript:;">
                    <span class="menu-caret">
                      <i class="material-icons">arrow_drop_down</i>
                    </span>
                    <span>Menu Item 1.1</span>
                  </a>
                  <ul class="sub-menu">
                    <li>
                      <a href="javascript:;">
                        <span class="menu-caret">
                          <i class="material-icons">arrow_drop_down</i>
                        </span>
                        <span>Menu Item 2.1</span>
                      </a>
                      <ul class="sub-menu">
                        <li>
                          <a href="javascript:;">
                            <span>Menu Item 3.1</span>
                          </a>
                        </li>
                        <li>
                          <a href="javascript:;">
                            <span>Menu Item 3.1</span>
                          </a>
                        </li>
                      </ul>
                    </li>
                    <li>
                      <a href="javascript:;">
                        <span>Menu Item 2.2</span>
                      </a>
                    </li>
                  </ul>
                </li>
                <li>
                  <a href="javascript:;">
                    <span>Menu Item 1.2</span>
                  </a>
                </li>
              </ul>
            </li>
            <!-- menu levels -->
            <li><hr/></li>
            <!-- static -->
            <li>
              <a href="http://milestone.nyasha.me/latest/angular" target="_blank">
                <i class="material-icons">navigation</i>
                <span>Angular version</span>
              </a>
            </li>
            <!-- /static -->
            <!-- documentation -->
            <li>
              <a href="http://milestone.nyasha.me/latest/documentation" target="_blank">
                <i class="material-icons">local_library</i>
                <span>Documentation</span>
              </a>
            </li>
            <!-- /documentation -->
          </ul>
        </nav>
        <!-- /main navigation -->
      </div>
      <!-- /sidebar panel -->
      <!-- content panel -->
      <div class="main-panel">
        <!-- top header -->
        <nav class="header navbar">
          <div class="header-inner">
            <div class="navbar-item navbar-spacer-right brand hidden-lg-up">
              <!-- toggle offscreen menu -->
              <a href="javascript:;" data-toggle="sidebar" class="toggle-offscreen">
                <i class="material-icons">menu</i>
              </a>
              <!-- /toggle offscreen menu -->
              <!-- logo -->
              <a class="brand-logo hidden-xs-down">
                <img src="images/logo_white.png" alt="logo"/>
              </a>
              <!-- /logo -->
            </div>
            <a class="navbar-item navbar-spacer-right navbar-heading hidden-md-down" href="#">
              <span>Dashboard</span>
            </a>
            <div class="navbar-search navbar-item">
              <form class="search-form">
                <i class="material-icons">search</i>
                <input class="form-control" type="text" placeholder="Search" />
              </form>
            </div>
            <div class="navbar-item nav navbar-nav">
              <div class="nav-item nav-link dropdown">
                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                  <span>English</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                  <a class="dropdown-item" href="javascript:;">English</a>
                  <a class="dropdown-item" href="javascript:;">Russian</a>
                </div>
              </div>
              <div class="nav-item nav-link dropdown">
                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="material-icons">notifications</i>
                  <span class="tag tag-danger">4</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right notifications">
                  <div class="dropdown-item">
                    <div class="notifications-wrapper">
                      <ul class="notifications-list">
                        <li>
                          <a href="javascript:;">
                            <div class="notification-icon">
                              <div class="circle-icon bg-success text-white">
                                <i class="material-icons">arrow_upward</i>
                              </div>
                            </div>
                            <div class="notification-message">
                              <b>Sean</b>
                              launched a new application
                              <span class="time">2 seconds ago</span>
                            </div>
                          </a>
                        </li>
                        <li>
                          <a href="javascript:;">
                            <div class="notification-icon">
                              <div class="circle-icon bg-danger text-white">
                                <i class="material-icons">check</i>
                              </div>
                            </div>
                            <div class="notification-message">
                              <b>Removed calendar</b>
                              from app list
                              <span class="time">4 hours ago</span>
                            </div>
                          </a>
                        </li>
                        <li>
                          <a href="javascript:;">
                            <span class="notification-icon">
                              <span class="circle-icon bg-info text-white">J</span>
                            </span>
                            <div class="notification-message">
                              <b>Jack Hunt</b>
                              has
                              <b>joined</b>
                              mailing list
                              <span class="time">9 days ago</span>
                            </div>
                          </a>
                        </li>
                        <li>
                          <a href="javascript:;">
                            <span class="notification-icon">
                              <span class="circle-icon bg-primary text-white">C</span>
                            </span>
                            <div class="notification-message">
                              <b>Conan Johns</b>
                              created a new list
                              <span class="time">9 days ago</span>
                            </div>
                          </a>
                        </li>
                      </ul>
                    </div>
                    <div class="notification-footer">Notifications</div>
                  </div>
                </div>
              </div>
              <a href="javascript:;" class="nav-item nav-link nav-link-icon" data-toggle="modal" data-target=".chat-panel" data-backdrop="false">
                <i class="material-icons">chat_bubble</i>
              </a>
            </div>
          </div>
        </nav>
        <!-- /top header -->

        <!-- main area -->
        <div class="main-content">
          <div class="content-view">
            
        	<decorator:body></decorator:body>


				
				
				</div>
              
          </div>



          <!-- bottom footer -->
          <div class="content-footer">
            <nav class="footer-right">
              <ul class="nav">
                <li>
                  <a href="javascript:;">Feedback</a>
                </li>
              </ul>
            </nav>
            <nav class="footer-left">
              <ul class="nav">
                <li>
                  <a href="javascript:;">
                    <span>Copyright</span>
                    &copy; 2016 Your App
                  </a>
                </li>
                <li class="hidden-md-down">
                  <a href="javascript:;">Privacy</a>
                </li>
                <li class="hidden-md-down">
                  <a href="javascript:;">Terms</a>
                </li>
                <li class="hidden-md-down">
                  <a href="javascript:;">help</a>
                </li>
              </ul>
            </nav>
          </div>
          <!-- /bottom footer -->
        </div>
        <!-- /main area -->
      </div>
      <!-- /content panel -->

      <!--Chat panel-->
      <div class="modal fade sidebar-modal chat-panel" tabindex="-1" role="dialog" aria-labelledby="chat-panel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="chat-header">
              <a class="pull-right" href="javascript:;" data-dismiss="modal">
                <i class="material-icons">close</i>
              </a>
              <div class="chat-header-title">People</div>
            </div>
            <div class="modal-body flex scroll-y">
              <div class="chat-group">
                <div class="chat-group-header">Favourites</div>
                
                <a href="javascript:;" data-toggle="modal" data-target=".chat-message">
                  <span class="status-offline"></span>
                  <span>Pamela Wood</span>
                </a>
              </div>
              <div class="chat-group">
                <div class="chat-group-header">Online</div>
                <a href="javascript:;" data-toggle="modal" data-target=".chat-message">
                  <span class="status-online"></span>
                  <span>Betty Simmons</span>
                </a>
              </div>
              <div class="chat-group">
                <div class="chat-group-header">Other</div>
                
                <!-- <a href="javascript:;" data-toggle="modal" data-target=".chat-message">
                  <span class="status-offline"></span>
                  <span>William Fields</span>
                </a> -->
                <a href="javascript:;" data-toggle="modal" data-target=".chat-message">
                  <span class="status-offline"></span>
                  <span>Jack Hunt</span>
                </a>
                
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="modal fade chat-message" tabindex="-1" role="dialog" aria-labelledby="chat-message" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="chat-header">
              <div class="pull-right dropdown">
                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="material-icons">more_vert</i>
                </a>
                <div class="dropdown-menu" role="menu">
                  <a class="dropdown-item" href="javascript:;">Profile</a>
                 
                </div>
              </div>
              <div class="chat-conversation-title">
                <img src="images/face1.jpg" class="avatar avatar-xs img-circle m-r-1 pull-left" alt="">
                <div class="overflow-hidden">
                  <span><strong>Charles Wilson</strong></span>
                  <small>Last seen today at 03:11</small>
                </div>
              </div>
            </div>
            <div class="modal-body flex scroll-y">
              <p class="text-xs-center text-muted small text-uppercase bold m-b-1">Yesterday</p>
              
              <div class="chat-conversation-user me">
                <div class="chat-conversation-message">
                  <p>Pretty good, Samuel.</p>
                </div>
              </div>
              <p class="text-xs-center text-muted small text-uppercase bold m-b-1">Today</p>
              <div class="chat-conversation-user them">
                <div class="chat-conversation-message">
                  <p>Curabitur blandit tempus porttitor.</p>
                </div>
              </div>
              <div class="chat-conversation-user me">
                
              </div>
              
            </div>
            <div class="chat-conversation-footer">
                <button class="chat-left">
                  <i class="material-icons">face</i>
                </button>
                <div class="chat-input" contenteditable=""></div>
                <button class="chat-right">
                  <i class="material-icons">photo</i>
                </button>
              </div>
          </div>
        </div>
      </div>
      <!--/Chat panel-->


    <script type="text/javascript">
      window.paceOptions = {

        document: true,
        eventLag: true,
        restartOnPushState: true,
        restartOnRequestAfter: true,
        ajax: {
          trackMethods: [ 'POST','GET']
        }
      };
    </script>

    <!-- build:js({.tmp,app}) scripts/app.min.js -->
    <script src="vendor/jquery/dist/jquery.js"></script>
   <!--  <script src="vendor/PACE/pace.js"></script> -->
    <script src="vendor/tether/dist/js/tether.js"></script>
    <script src="vendor/bootstrap/dist/js/bootstrap.js"></script>
    <script src="vendor/fastclick/lib/fastclick.js"></script>
    <script src="scripts/constants.js"></script>
    <script src="scripts/main.js"></script>
    <!-- endbuild -->

    <!-- page scripts -->
    <script src="vendor/flot/jquery.flot.js"></script>
    <script src="vendor/flot/jquery.flot.resize.js"></script>
    <script src="vendor/flot/jquery.flot.stack.js"></script>
    <script src="vendor/flot-spline/js/jquery.flot.spline.js"></script>
    <script src="vendor/bower-jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="data/maps/jquery-jvectormap-us-aea.js"></script>
    <script src="vendor/jquery.easy-pie-chart/dist/jquery.easypiechart.js"></script>
    <script src="vendor/noty/js/noty/packaged/jquery.noty.packaged.min.js"></script>
    <script src="scripts/helpers/noty-defaults.js"></script>
    <!-- end page scripts -->

    <!-- initialize page scripts -->
    <script src="scripts/dashboard/dashboard.js"></script>
    <!-- end initialize page scripts -->
    <!-- page scripts -->
    <script src="vendor/datatables/media/js/jquery.dataTables.js"></script>
    <script src="vendor/datatables/media/js/dataTables.bootstrap4.js"></script>
    <!-- end page scripts -->

    <!-- initialize page scripts -->
    <script type="text/javascript">
      $('.datatable').DataTable({
      });
    </script>
  </body>
</html>
