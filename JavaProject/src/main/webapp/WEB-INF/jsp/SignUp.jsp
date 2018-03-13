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
    
    <title>Hell Shield-Registration</title>

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
    <!-- endbuild -->

    <!-- page scripts -->
    <script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>
    <!-- end page scripts -->

    <!-- initialize page scripts -->
    
    <script type="text/javascript">
      
      
      $(function(){
    	  $('#formid').validate();
    	  $("#email").focusout(function() {
  			var val = $("#email").val();
  			if ((val == null) || (val == "")) {
  				return;
  			} else {
  				$
  				.ajax({
  					type : "GET",
  					url : "findEmail.html?&email_id="+ val,
  					success : function(dto) {
  						 var p = JSON.parse(dto);
  							  if((p.Details=="")|| (p.Details==null)){
  					    	  
  								  
  						    	  return false;
  					      }
  					      else{			
  					    	  alert("Email Already registered .....\nplease Login with your crendentials ");
  									 $("#email").val("");
  									 $("#name").val("");
  										window.location.href="load_login.html";
  					      } 
  					},
  					error : function(xhr, thrownError) {
  						 alert("SEARCH ID NOT FOUND ...!!!!! ");
  						 $("#email").focus();
  					}
  				});
  			}
  		});

    	 $('#sbtn').click(function () {
    		
    		 
    		 dataString = $("#formid").serialize();
    		 $.ajax({
    			 type : "POST",
    				url : "register.html",
    				data : dataString,

<<<<<<< HEAD
    				success : function(data) {
    					var json=JSON.parse(data);
    					if(json.status<0){
    					alert("Data has been saved successfully ");
    					location.reload(true);
    					}
    					else{
    						alert("Connection problem..");
        					location.reload(true);
    					}
=======
    				success : function() {
    					alert("Data has been saved successfully");
    					location.reload(true);
>>>>>>> branch 'master' of https://github.com/Sagar343/sagar
    				},

    				error : function(xhr, ajaxOptions, thrownError) {
    					alert("Please refresh the page ?");
    				}
    		 });
    		 
    		 
		}) 
    	  
      });
      
      
    </script>
  </head>
  <body>

    <div class="app no-padding no-footer layout-static">
      <div class="session-panel">
        <div class="session">
          <div class="session-content">
            <div class="card card-block form-layout">
              <form:form  id="formid"  modelAttribute="sp">
                <div class="text-xs-center m-b-3">
                  <img src="images/shield.png" height="80" alt="" class="m-b-1"/>
                  <h5>
                    Hell Shield welcomes You!
                  </h5>
                  <p class="text-muted">
                    Register to continue.
                  </p>
                </div>
                <fieldset class="form-group">
                  <label for="password">
                    Name
                  </label>
                  <input type="text" class="form-control form-control-lg" id="name" name="name" placeholder="Enter Name" required/>
                </fieldset>
                <fieldset class="form-group">
                  <label for="email">
                    Email address
                  </label>
                  <input type="email" class="form-control form-control-lg" id="email" name="email_id" placeholder="email address" required/>
                </fieldset>
                
                <fieldset class="form-group">
                  <label for="cpassword">
                    Experience
                  </label>
                  <input type="number" class="form-control form-control-lg" id="years" name="experince" placeholder="Year Of Experience" />
                </fieldset>
                
                <fieldset class="form-group">
                  <label for="cpassword">
                    Domain
                  </label>
                  <input type="text" class="form-control form-control-lg" id="domain" name="domain" placeholder="Domain Of Experience" />
                </fieldset>
                
                
                <input type="button" class="btn btn-primary btn-block btn-lg" id="sbtn"  value="Create your account"/>
                  
                
                
                
              </form:form>
            </div>
          </div>
          <footer class="text-xs-center p-y-1">
            <p>
              <a href="load_forgetpass.html">
                Forgot password?
              </a>
              &nbsp;&nbsp;·&nbsp;&nbsp;
              <a href="load_login.html">
                Log in instead
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
   
    <!-- end initialize page scripts -->
    
  </body>
</html>