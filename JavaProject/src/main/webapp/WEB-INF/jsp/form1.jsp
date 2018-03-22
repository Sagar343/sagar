<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<div class="main-content">
          <div class="content-view">
            <div class="card">
            <div class="card-header no-bg b-a-0">
            <form method="POST" action="saveCentre.html">
            
            
            			
                    <div class="form-group row">
                      <label for="example-number-input" class="col-xs-2 col-form-label">Centre Code</label>
                      <div class="col-xs-4">
                        <input class="form-control" type="number" name="centre_code" value="" id="example-number-input">
                      </div>
                    </div>
                      <div class="form-group row">
                      <label for="example-text-input" class="col-xs-2 col-form-label">Centre Name</label>
                      <div class="col-xs-4">
                        <input class="form-control" type="text" name="centre_name" value="" id="example-text-input">
                      </div>
                    </div>
                      
                      <button type="submit" class="btn btn-primary">
                        Submit
                      </button>
                    </form>
                  </div>  
             
              <div class="card-block">
                <table class="table table-bordered datatable">
                  <thead class="thead-inverse">
                    <tr>
                    
                      <th>
                        Centre Code
                      </th>
                      <th>
                        Centre Name
                      </th>
                     
                    </tr>
                  </thead>
                  
                  <tbody>
                  <c:forEach items="${data}" var="vml">
                  <tr>
                   <td><c:out value="${vml.centre_code}"></c:out></td>
                  <td><c:out value="${vml.centre_name}"></c:out></td>
                  </tr>
                  </c:forEach>
                  
                 
                  </tbody>
                  
                </table>
              </div>
            </div>
          </div>
          </div>
         
   
        
    
  </body>
</html>