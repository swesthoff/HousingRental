<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
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
<style>
span {
	color: red
}
</style>
<body>
	<h2>Edit Housing Unit</h2>

	<span id="successMessage" class="success">${requestScope.creationSuccess}</span>
	<mvc:form id="unit" modelAttribute="unit" action="editResult.mvc"
		onsubmit="return validateForm()">
 
 
		Unit Type: <input type="text" name="unitType"
			value="${unitToEdit.unitType }">
		<br />
		 Cost: <input type="text" name="cost" value="${unitToEdit.cost }">
		<span id="costError" class="error">*</span>
		<br />
		Deposit Amount: <input type="text" name="depositAmount"
			value="${unitToEdit.depositAmount }">
		<span id="depositAmountError" class="error">*</span>
		<br />
		 Number of Bedrooms: <input type="text" name="nmbrBedrooms"
			value="${unitToEdit.nmbrBedrooms }">
		<span id="nmbrBedroomsError" class="error">*</span>
		<br />
		 Number of Bathrooms: <input type="text" name="nmbrBathrooms"
			value="${unitToEdit.nmbrBathrooms }">
		<span id="nmbrBathroomsError" class="error">*</span>
		<br />
		Square Footage: <input type="text" name="squareFootage"
			value="${unitToEdit.squareFootage }">
		<span id="squareFootageError" class="error">*</span>
		<br />
		Address: <input type="text" name="address"
			value="${unitToEdit.address }">
		<br />
		City: <input type="text" name="city" value="${unitToEdit.city }">
		<br />
		State: <input type="text" name="state" value="${unitToEdit.state }">
		<br /><br />
		<label>State2:</label>
		<select name="state">			
			<c:forEach states="${states}" var="currentitem">
				<option value="${currentitem.state}" ${unitToEdit.state == currentitem.state ? "selected":""}>${unitToEdit.state}</option>
			</c:forEach>
		</select> 
		
		 <br />
		
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