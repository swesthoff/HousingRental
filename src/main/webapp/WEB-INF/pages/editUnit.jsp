<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Housing Unit Page</title>
</head>
<script type="text/javascript">
	function validateForm() {

		//confirm that our numeric values are numbers.
		var cost = document.forms["unit"]["cost"].value;
		var depositAmount = document.forms["unit"]["depositAmount"].value;
		var nmbrBedrooms = document.forms["unit"]["nmbrBedrooms"].value;
		var nmbrBathrooms = document.forms["unit"]["nmbrBathrooms"].value;
		var squareFootage = document.forms["unit"]["squareFootage"].value;

		if (isNaN(depositAmount)) {
			document.getElementById("depositAmountError").innerHTML = "(Deposit Amount must be a number.)";
			return false;
		}
		if (isNaN(cost)) {
			document.getElementById("costError").innerHTML = "(Cost must be a number.)";
			return false;
		}

		if (isNaN(nmbrBedrooms)) {
			document.getElementById("nmbrBedroomsError").innerHTML = "(Number of bedrooms must be a number.)";
			return false;
		}
			if (isNaN(nmbrBathrooms)) {
				document.getElementById("nmbrBathroomsError").innerHTML = "(Number of bathrooms must be a number.)";
				return false;
			}

			if (isNaN(squareFootage)) {
				document.getElementById("squareFootageError").innerHTML = "(Square footage of bedrooms must be a number.)";
				return false;
			}
		}

</script>
<style>
table, td, th {
	border: 1px solid black;
	border-collapse: separate; 
	padding: 2px;
} 
span {
color: red
}
h2 {
	color: blue;
}

</style>
<img src="data:image/jpeg;base64,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" align="middle"><br />
<body>
	<h2>Edit Housing Unit</h2>

	<span id="successMessage" class="success">${requestScope.creationSuccess}</span>
	<mvc:form id="unit" modelAttribute="unit" action="editResult.mvc"
		onsubmit="return validateForm()">
 
 
		Unit Type: <input type="text" name="unitType"
			value="${unitToEdit.unitType }">
		<br />
		 Cost: <input type="text" name="cost" value="${unitToEdit.cost }">
		<span id="costError" class="error"></span>
		<br />
		Deposit Amount: <input type="text" name="depositAmount"
			value="${unitToEdit.depositAmount }">
		<span id="depositAmountError" class="error"></span>
		<br />
		 Number of Bedrooms: <input type="text" name="nmbrBedrooms"
			value="${unitToEdit.nmbrBedrooms }">
		<span id="nmbrBedroomsError" class="error"></span>
		<br />
		 Number of Bathrooms: <input type="text" name="nmbrBathrooms"
			value="${unitToEdit.nmbrBathrooms }">
		<span id="nmbrBathroomsError" class="error"></span>
		<br />
		Square Footage: <input type="text" name="squareFootage"
			value="${unitToEdit.squareFootage }">
		<span id="squareFootageError" class="error"></span>
		<br />
		Address: <input type="text" name="address"
			value="${unitToEdit.address }">
		<br />
		City: <input type="text" name="city" value="${unitToEdit.city }">
		<br />
		State: <input type="text" name="state" value="${unitToEdit.state }">
	
		<br />
		Zip Code: <input type="text" name="zip" value="${unitToEdit.zip }">
		<br />
<br />
		<input type="hidden" name="unitId" value="${unitToEdit.unitId }">
		<br />
		<input type="submit" value="Save Edited Housing Unit">
	</mvc:form>
	<br />
	<a href="viewAllUnits.mvc">View all Housing Units</a>
	<br />
	<a href="menu.mvc">Back to main menu</a>
</body>
</html>