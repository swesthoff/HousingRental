<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Housing Unit</title>
</head>
<body>
	<h2>Edit Housing Unit</h2>
	<mvc:form modelAttribute="unit" action="editResult.mvc">
 
 
		Unit Type: <input 
			type="text" name="unitType"
			value="${unitToEdit.unitType }"> <br />
		 Cost: <input 
			type="text" name="cost"
			value="${unitToEdit.cost }"><br />
		Deposit Amount: <input 
			type="text" name="depositAmount"
			value="${unitToEdit.depositAmount }"><br />
		 Number of Bedrooms: <input 
			type="text" name="nmbrBedrooms"
			value="${unitToEdit.nmbrBedrooms }"><br />
		 Number of Bathrooms: <input 
			type="text" name="nmbrBathrooms"
			value="${unitToEdit.nmbrBathrooms }">
			<br />
		Square Footage: <input 
			type="text" name="squareFootage"
			value="${unitToEdit.squareFootage }">
		<br />
		Address: <input 
			type="text" name="address"
			value="${unitToEdit.address }">
			<br />
			City: <input 
			type="text" name="city"
			value="${unitToEdit.city }">
			<br />
			State: <input 
			type="text" name="state"
			value="${unitToEdit.state }">
			<br />
				Zip Code: <input 
			type="text" name="zip"
			value="${unitToEdit.zip }">
				<br />
			
		<input type="hidden"
			name="unitId" value="${unitToEdit.unitId }">
		 <input type="submit" value="Save Edited Housing Unit">
	</mvc:form>
	<br />
	<a href="viewAllUnits.mvc">View all Housing Units</a>
	<a href="menu.mvc">Back to main menu</a>
</body>
</html>