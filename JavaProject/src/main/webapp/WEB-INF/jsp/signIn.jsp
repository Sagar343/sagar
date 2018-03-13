<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    
    <title>Hell Shield-SignIn</title>

    <!-- page stylesheets -->
    <!-- end page stylesheets -->

    <!-- build:css({.tmp,app}) styles/app.min.css -->
     <link rel="icon" href="images/shield.png" />
    <link rel="stylesheet" href="vendor/bootstrap/dist/css/bootstrap.css"/>
    <link rel="stylesheet" href="vendor/PACE/themes/blue/pace-theme-minimal.css"/>
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.css"/>
    <link rel="stylesheet" href="vendor/animate.css/animate.css"/>
    <link rel="stylesheet" href="styles/app.css" id="load_styles_before"/>
    <link rel="stylesheet" href="styles/app.skins.css"/>
    <!-- endbuild -->
    
    <script src="vendor/jquery/dist/jquery.js"></script>
    <script src="vendor/PACE/pace.js"></script>
    <script src="vendor/tether/dist/js/tether.js"></script>
    <script src="vendor/bootstrap/dist/js/bootstrap.js"></script>
    <script src="vendor/fastclick/lib/fastclick.js"></script>
    <script src="scripts/constants.js"></script>
    <script src="scripts/main.js"></script>
   <script type="text/javascript">
    $(function(){
    	 	

    	 $('#sbtn').click(function () {
    		
    		 var v1=$("#username").val();
    		 var v2=$("#password").val();
    	
    		 $.ajax({
    			 type : "POST",
    				url : "login.html?email="+v1+"&password=" +v2,
    			
					
    				 success : function(data) {
    					 if(data>0){
    						 window.location.href="home.html";
    					 }
    					 else{
    						 alert("Entered Details are not valid....");
    						 location.reload();
    						 
    					 }
    				}
    		 });
    		 
    		 
		}) 
    	  
      });
  </script>
  <style >
  body{
 	 margin:0;
	padding:0;
	background:url(images/spidy.jpg) no-repeat fixed;
	background-position: center;
	font-family: sans-serif;
	
    background-size: cover;
  }
  </style>
  </head>
  <body>

    <div class="app no-padding no-footer layout-static">
      <div class="session-panel">
        <div class="session">
          <div class="session-content">
            <div class="card card-block form-layout">
              <form:form id="formid" modelAttribute="details">
                <div class="text-xs-center m-b-3">
                  <img src="images/shield.png" height="80" alt="" class="m-b-1"/>
                  <h5>
                     Hell Shield welcomes You!
                  </h5>
                  <p class="text-muted">
                    Sign in with your id to continue.
                  </p>
                </div>
                <fieldset class="form-group">
                  <label for="username">
                    Enter your username
                  </label>
                  <input type="text" class="form-control form-control-lg" id="username" name="email" placeholder="username" required/>
                </fieldset>
                <fieldset class="form-group">
                  <label for="password">
                    Enter your password
                  </label>
                  <input type="password" class="form-control form-control-lg" id="password" name="pswd" placeholder="********" required/>
                </fieldset>
                <label class="custom-control custom-checkbox m-b-1">
                  <input type="checkbox" class="custom-control-input">
                  <span class="custom-control-indicator"></span>
                  <span class="custom-control-description">Stay logged in</span>
                </label>
                <!-- <button class="btn btn-primary btn-block btn-lg" type="submit">
                  Login
                </button> -->
                
                
                <input type="button" class="btn btn-primary btn-block btn-lg" id="sbtn"  value="LogIn"/>
              </form:form>
            </div>
          </div>
          <footer class="text-xs-center p-y-1">
            <p>
              <a href="load_forgetpass.html">
                Forgot password?
              </a>
              &nbsp;&nbsp;·&nbsp;&nbsp;
              <a href="SignUp.html">
                Create an account
              </a>
            </p>
          </footer>
        </div>

      </div>
    </div>

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
    
    <!-- endbuild -->

    <!-- page scripts -->
    <script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>
    <!-- end page scripts -->

    <!-- initialize page scripts -->
    <script type="text/javascript">
      $('#validate').validate();
    </script>
    <!-- end initialize page scripts -->
    
  </body>
</html>