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
<body> <h2>Unit Result</h2>
    <table>
        <tr>
            <td>Unit Type</td>
            <td>${u.unitType}</td>
        </tr>
        <tr>
            <td>Cost</td>
            <td>${u.cost}</td>
        </tr>
        <tr>
            <td>Deposit Amount</td>
            <td>${u.depositAmount}</td>
        </tr>
        <tr>
            <td>Number of Bedrooms</td>
            <td>${u.nmbrBedrooms}</td>
        </tr>
          <tr>
            <td>Number of Bathrooms</td>
            <td>${u.nmbrBathrooms}</td>
        </tr>
          <tr>
            <td>Number of Square Foot<td>
            <td>${u.squareFootage}</td>
        </tr>
           <tr>
            <td>Address<td>
            <td>${u.address}</td>
        </tr>
           <tr>
            <td>City<td>
            <td>${u.city}</td>
        </tr>
           <tr>
            <td>State<td>
            <td>${u.state}</td>
        </tr>
           <tr>
            <td>Zip<td>
            <td>${u.zip}</td>
        </tr>
        
        </table>
<a href = "viewAll.mvc">View all Entries</a>
</body>
</html>