<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <title>Hell Shield-Grid View</title>
  </head>
  <body>
		<div class="main-content">
          <div class="content-view">
            <div class="card">
              <div class="card-header no-bg b-a-0">
                Datatables
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
                  <c:forEach items="${deta}" var="a" varStatus="s">
                  <tr>
                  <td>${s.count}</td>
                  <td>${a.name}</td>
                  <td>${a.email_id}</td>
                  <td>${a.emp_id}</td>
                  <td>${a.possision}</td>
                  <td>${a.strart_date}</td>
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
