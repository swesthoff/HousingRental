<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Housing Unit Entry</title>
</head>
<script type="text/javascript">
 
function validateForm() { 
   
    
    //confirm that our numeric values are numbers.
    var cost = document.forms["unit"]["cost"].value;
    var  depositAmount= document.forms["unit"]["depositAmount"].value; 
    var  nmbrBedrooms= document.forms["unit"]["nmbrBedrooms"].value; 
    var  nmbrBathrooms= document.forms["unit"]["nmbrBathrooms"].value; 
    var  squareFootage= document.forms["unit"]["squareFootage"].value; 
      
        if (isNaN(depositAmount)) {
        	document.getElementById("depositAmountError").innerHTML = "*(Deposit Amount must be a number.)";
            return false;
        }	
        if (isNaN(cost)) {
        	document.getElementById("costError").innerHTML = "*(Cost must be a number.)";
            return false;
        }
     
        if (isNaN(nmbrBedrooms)) {
        	document.getElementById("nmbrBedroomsError").innerHTML = "*(Number of bedrooms must be a number.)";
            return false;
 
            if (isNaN(nmbrBathrooms)) {
            	document.getElementById("nmbrBathroomsError").innerHTML = "*(Number of bathrooms must be a number.)";
                return false;
            }
            
            if (isNaN(squareFootage)) {
            	document.getElementById("squareFootageError").innerHTML = "*(Square footage of bedrooms must be a number.)";
                return false;
            }	
            }	
}
</script>
<body>
<h2>Unit Information Form</h2>
<span id="successMessage" class="success">${requestScope.creationSuccess}</span>
<mvc:form id = "unit" modelAttribute="unit" action="result.mvc" onsubmit="return validateForm()">
	<table>
	
	  <tr>
            <td><mvc:label path="unitType">Unit Type</mvc:label></td>
            <td><mvc:select path="unitType" items="${unitTypes}" /></td>
        </tr>
	    <tr>
	        <td><mvc:label path="cost">Cost</mvc:label></td>
	        <td><mvc:input path="cost" /></td><span id="costError" class="error">*</span>
	    </tr>
	    <tr>
	        <td><mvc:label path="depositAmount">Deposit Amount</mvc:label></td>
	        <td><mvc:input path="depositAmount" /></td><span id="depositAmountError" class="error">*</span>
	    </tr>
	    <tr>
	        <td><mvc:label path="nmbrBedrooms">Number of Bedrooms</mvc:label></td>
	        <td><mvc:input path="nmbrBedrooms" /></td><span id="nmbrBedroomsError" class="error">*</span>
	    </tr>
   	    <tr>
	        <td><mvc:label path="nmbrBathrooms">Number of Bathrooms</mvc:label></td>
	        <td><mvc:input path="nmbrBathrooms" /></td><span id="nmbrBathroomsError" class="error">*</span>
	    </tr>
		<tr>
            <td><mvc:label path="squareFootage">Square Footage</mvc:label></td>
            <td><mvc:input path="squareFootage" /></td><span id="squareFootageError" class="error">*</span>
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