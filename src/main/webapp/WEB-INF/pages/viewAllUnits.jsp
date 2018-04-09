<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All Units</title>
<style>
table, td, th {
	border: 1px solid black;
	border-collapse: separate;
	border-spacing: 2px;
	padding: 2px;
}
</style>
</head>
<body>
	<mvc:form modelAttribute="unit" action="unitUpdate.mvc">
	<table>
		<tr>
			<th>Unit Id</th>
			<th>Unit Type</th>
			<th>Cost</th>
			<th>Deposit Amount</th>
			<th>Number of Bedrooms</th>
			<th>Number of Bathrooms</th>
			<th>Square Footage</th>
			<th>Address</th>
			<th>City</th>
			<th>State</th>
			<th>Zip</th>


		</tr>
		<c:forEach items="${all}" var="item">

			<tr>
				<td><input type="radio" name="unitId" value="${item.unitId}"></td>
				<td>${item.unitType}</td>

				<td>${item.cost}</td>

				<td>${item.depositAmount}</td>

				<td>${item.nmbrBedrooms}</td>

				<td>${item.nmbrBathrooms}</td>

				<td>${item.squareFootage}</td>

				<td>${item.address}</td>

				<td>${item.city}</td>

				<td>${item.state}</td>

				<td>${item.zip}</td>
			</tr>


		</c:forEach>
	</table>

	<input type="submit" value="Edit Selected Housing Unit"
		name="doThisToUnit">
	<br />
	<input type="submit" value="Delete Selected Housing Unit"
		name="doThisToUnit">
	<br />
	
	</mvc:form>
	<a href="form.mvc">Add a new unit</a>
	<br />
	<a href="menu.mvc">Back to main menu</a>
	<br />
</body>
</html>