<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All Entries</title>
</head>
<body>
	<c:forEach items="${all}" var="item">
		<table>
			<tr>
				<td>Unit Type</td>U
				<td>${item.unitType}</td>
			</tr>
			<tr>
				<td>Cost</td>
				<td>${item.cost}</td>
			</tr>
			<tr>
				<td>Depost Amount</td>
				<td>${item.depositAmount}</td>
			</tr>
			<tr>
				<td>Number of Bedrooms</td>
				<td>${item.nmbrBedrooms}</td>
			</tr>
			<tr>
				<td>Number of Bathrooms</td>
				<td>${item.nmbrBathrooms}</td>
			</tr>
			<tr>
				<td>Square Footage</td>
				<td>${item.squareFootage}</td>
			</tr>
			<tr>
				<td>Address</td>
				<td>${item.address}</td>
			</tr>
			</tr>
			<tr>
				<td>City</td>
				<td>${item.city}</td>
			</tr>
			</tr>
			<tr>
				<td>State</td>
				<td>${item.state}</td>
			</tr>
			</tr>
			<tr>
				<td>Zip</td>
				<td>${item.zip}</td>
			</tr>
		</table>
		<br />
		<hr style="text-align: left; margin-left: 0; width: 25%">
		<br />
	</c:forEach>
	<a href="form.mvc">Add a new unit</a>
</body>
</html>