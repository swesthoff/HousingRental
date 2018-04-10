<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
 <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC From Handling</title>
</head>
<body> <h2>Renter Result</h2>
    <table>
        <tr>
            <td>First Name</td>
            <td>${u.firstName}</td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td>${u.lastName}</td>
        </tr>
        <tr>
            <td>Age</td>
            <td>${u.age}</td>
        </tr>
        <tr>
            <td>Employer</td>
            <td>${u.employer}</td>
        </tr>
          <tr>
            <td>Income</td>
            <td>${u.income}</td>
        </tr>
          <tr>
            <td>Phone Number<td>
            <td>${u.phoneNmbr}</td>
        </tr>
         
        
        </table>
        
<a href = "viewAllRenters.mvc">View all Renters</a><br />
<a href = "menu.mvc">Back to main menu</a><br />
</body>
</html>