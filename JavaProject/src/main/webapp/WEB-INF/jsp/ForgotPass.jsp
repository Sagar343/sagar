<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    
    <title>Hell Shield-Forgot Password</title>

    <!-- page stylesheets -->
    <!-- end page stylesheets -->

    <!-- build:css({.tmp,app}) styles/app.min.css -->
    <link rel="stylesheet" href="vendor/bootstrap/dist/css/bootstrap.css"/>
    <link rel="stylesheet" href="vendor/pace/themes/blue/pace-theme-minimal.css"/>
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.css"/>
    <link rel="stylesheet" href="vendor/animate.css/animate.css"/>
    <link rel="stylesheet" href="styles/app.css" id="load_styles_before"/>
    <link rel="stylesheet" href="styles/app.skins.css"/>
    <!-- endbuild -->
    
     <!-- build:js({.tmp,app}) scripts/app.min.js -->
    <script src="vendor/jquery/dist/jquery.js"></script>
    <script src="vendor/pace/pace.js"></script>
    <script src="vendor/tether/dist/js/tether.js"></script>
    <script src="vendor/bootstrap/dist/js/bootstrap.js"></script>
    <script src="vendor/fastclick/lib/fastclick.js"></script>
    <script src="scripts/constants.js"></script>
    <script src="scripts/main.js"></script>
    <!-- endbuild -->

    <!-- page scripts -->
    <script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>
    <!-- end page scripts -->
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

   
    <script type="text/javascript">
      $('#validate').validate();
    </script>
     <script type="text/javascript">
      
      
      $(function(){
    	  $('#formid').validate();
    	 	

    	 $('#sbtn').click(function () {
    		 $(":button").attr("disabled", true);
    		 var textID=$("#emailid").val();
    		 
    		 $.ajax({
    			 type : "GET",
    				url : "generateNewPass.html?email="+textID,

    				success : function(data) {
    					if(data>0){
    						alert("We have sent you the new password to your entered mail id");
        					window.location.href="load_login.html";
    					}else{
   						 alert("e-mail id you have entered is not valid! please enter valid e-mail id.");
   					 }
    					
    				},

    				error : function(xhr, ajaxOptions, thrownError) {
    					alert("Please refresh the page ?");
    				}
    		 });
    		 
    		 
		}) 
    	  
      });
      
      
    </script>
    <!-- end initialize page scripts -->
    
    
    <!-- initialize page scripts -->
  </head>
  <body>

    <div class="app no-padding no-footer layout-static">
      <div class="session-panel">
        <div class="session">
          <div class="session-content">
            <div class="card card-block form-layout">
              <form id="formid">
                <div class="text-xs-center m-b-3">
                   <img src="images/shield.png" height="80" alt="" class="m-b-1"/>
                  <h5>
                    Reset password
                  </h5>
                  <p class="text-muted">
                    Enter your email and we'll send you the new Password
                  </p>
                </div>
                <fieldset class="form-group">
                  <label for="password">
                    Your email address
                  </label>
                  <input type="email" class="form-control form-control-lg" id="emailid" name="email" placeholder="email address" autofocus required/>
                </fieldset>
                <input type="button" class="btn btn-primary btn-block btn-lg" id="sbtn"  value="Reset Password"/>
              </form>
            </div>
          </div>
          <footer class="text-xs-center p-y-1">
            <p>
              <a href="load_login.html">
                Log in
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
  </body>
</html>