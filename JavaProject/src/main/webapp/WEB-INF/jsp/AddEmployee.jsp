<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<script src="vendor/jquery/dist/jquery.js"></script>
<script>
$(document).ready(function(){
	$(".column-equal").on("click",function(){
	
		
		var data=$(this).text();
		var selected=$("#selection").text();
		alert(selected);
		alert(data);
		
		
		$.ajax({
			mothod:"POST",
		   url:  "getData.html?selected="+selected,
			success:function(response)
			{
				alert(response);
			},
			error : function(xhr, ajaxOptions, thrownError) {
				alert("uuuu ");
			}
	});
	
	});
});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

    <div class="app no-padding full-width no-footer">
     
      <!-- content panel -->
        <!-- main area -->
        <div class="main-content">
          <div class="content-view">
            <div class="layout-xs contacts-container">
              <div class="flexbox-xs layout-column-xs contacts-list b-r">
                <div class="contact-header bg-default">
                  <div class="contact-toolbar">
                    <form class="form-inline">
                      <input class="form-control" type="text" placeholder="Search"/>
                    </form>
                  </div>
                </div>
                
                <div class="flex-xs scroll-y"  >
                
                  
                 
                  <c:forEach items="${allData}" var="vml" varStatus="loop">
                  <a href="javascript:;" class="column-equal" data-toggle="contact"  >
                  <c:set var = "name" value ="${vml.name }"></c:set>
                 <c:set var = "string2" value = "${fn:substring(name, 0,1)}" />
                    <div class="col v-align-middle contact-avatar">
                      <div class="circle-icon bg-primary">${string2}</div>
                    </div>
                    <div class="col v-align-middle contact-details p-l-1" >
                    	<span style="visibility:hidden" id="selection">${vml.id }</span>
                      	<span class="bold">${vml.name }</span>
                     
                     	<span class="small">${vml.domain }</span>
                    </div>
                 
                  </a>
                  </c:forEach>
                </div>
              </div>
              <div class="flexbox-xs layout-column-xs contact-view" id="id1">
                <div class="contact-header hidden-lg-up">
                  <div class="contact-toolbar">
                    <a href="javascript:;" data-toggle="contact">
                      <i class="material-icons visible-xs m-r-1">arrow_back</i>
                    </a>
                  </div>
                </div>
                <c:forEach items="${indivualData}" var="vml" varStatus="loop">
                <div class="flex-xs scroll-y p-a-3">
                  <div class="column-equal m-b-2">
                    <div class="col" style="width:128px;">
                      <img src="images/face1.jpg" class="avatar avatar-lg img-circle" alt="">
                    </div>
                    <div class="col v-align-middle p-l-2">
                      <h1>
                        <b>${vml.name}</b>
                       
                      </h1>
                      <h3>Developer</h3>
                    </div>
                  </div>
                  <div class="column-equal m-b-2">
                    <div class="col p-l-2 text-xs-right" style="width:128px;">
                      <span class="text-muted">Email</span>
                    </div>
                    <div class="col p-l-2">
                      <a ng-href="email@example.com" href="email@example.com">
                       ${vml.email_id}
                      </a>
                    </div>
                  </div>
                  <div class="column-equal m-b-2">
                    <div class="col p-l-2 text-xs-right" style="width:128px;">
                      <span class="text-muted">
                        Domain
                      </span>
                    </div>
                    <div class="col p-l-2">
                      <span>
                        ${vml.domain}
                      </span>
                    </div>
                  </div>
                  <div class="column-equal m-b-2">
                    <div class="col p-l-2 text-xs-right" style="width:128px;">
                      <span class="text-muted">
                        Experience
                      </span>
                    </div>
                    <div class="col p-l-2">
                      <span>
                        ${vml.experince}
                      </span>
                    </div>
                  </div>
                  <!-- <div class="column-equal m-b-2">
                    <div class="col p-l-2 text-xs-right" style="width:128px;">
                      <span class="text-muted">
                        Country
                      </span>
                    </div>
                    <div class="col p-l-2">
                      <span>
                        Austria
                      </span>
                    </div>
                  </div> -->
                  <!-- <div class="column-equal m-b-2">
                    <div class="col p-l-2 text-xs-right" style="width:128px;">
                      <span class="text-muted">
                        Note
                      </span>
                    </div>
                    <div class="col p-l-2">
                      <span>
                        about personal
                      </span>
                    </div>
                  </div> -->
                </div>
                </c:forEach>
              </div>
            </div>
          </div>
          
        </div>
        <!-- /main area -->
      <!-- /content panel -->
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

    

    <!-- page scripts -->
    <!-- end page scripts -->

    <!-- initialize page scripts -->
    <!-- end initialize page scripts -->
    
</body>
</html>