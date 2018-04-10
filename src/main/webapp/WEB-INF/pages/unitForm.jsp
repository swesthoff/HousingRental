<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC Form Handling</title>
</head>
<body>
<h2>Unit Information Form</h2>
<mvc:form modelAttribute="unit" action="result.mvc">
	<table>
	
	  <tr>
            <td><mvc:label path="unitType">Unit Type</mvc:label></td>
            <td><mvc:select path="unitType" items="${unitTypes}" /></td>
        </tr>
	    <tr>
	        <td><mvc:label path="cost">Cost</mvc:label></td>
	        <td><mvc:input path="cost" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="depositAmount">Deposit Amount</mvc:label></td>
	        <td><mvc:input path="depositAmount" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="nmbrBedrooms">Number of Bedrooms</mvc:label></td>
	        <td><mvc:input path="nmbrBedrooms" /></td>
	    </tr>
   	    <tr>
	        <td><mvc:label path="nmbrBathrooms">Number of Bathrooms</mvc:label></td>
	        <td><mvc:input path="nmbrBathrooms" /></td>
	    </tr>
		<tr>
            <td><mvc:label path="squareFootage">Square Footage</mvc:label></td>
            <td><mvc:input path="squareFootage" /></td>
        </tr>
       	<tr>
            <td><mvc:label path="address">address</mvc:label></td>
            <td><mvc:input path="address" /></td>
        </tr>
       	<tr>
            <td><mvc:label path="city">City</mvc:label></td>
            <td><mvc:input path="city" /></td>
        </tr>
       	<tr>
            <td><mvc:label path="state">State</mvc:label></td>
              <td><mvc:select path="state" items="${states}" /></td>
        </tr>
       	<tr>
            <td><mvc:label path="zip">Zip Code</mvc:label></td>
            <td><mvc:input path="zip" /></td>
        </tr>
       
        <tr>
	        <td colspan="2">
                <input type="submit" value="Submit" />
	        </td>
	    </tr>
	</table>  
</mvc:form>
<br />
<a href = "viewAllUnits.mvc">View all Units</a> <br />
<a href = "menu.mvc">Back to main menu</a>
</body>
</html>