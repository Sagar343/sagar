<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                  <thead>
                    <tr>
                    <th>
                        Sl No
                      </th>
                      <th>
                        Name
                      </th>
                      <th>
                        E-Mail ID
                      </th>
                      <th>
                        Employee ID
                      </th>
                      <th>
                        Position
                      </th>
                      <th>
                        Start Date
                      </th>
                    </tr>
                  </thead>
                  
                  <tbody>
                  <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  </tr>
                  
                  </tbody>
                </table>
              </div>
            </div>
          </div>
          </div>
         
   
        
    
  </body>
</html>