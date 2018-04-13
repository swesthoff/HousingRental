<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All Renters</title>
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
	<mvc:form modelAttribute="renter" action="renterUpdate.mvc">
		<table>
			<tr>
				<th>           </th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Age</th>
				<th>Employer</th>
				<th>Income</th>
				<th>Phone Number</th>
				<th>Unit ID</th>

			</tr>
			<c:forEach items="${all}" var="item">


				<tr>
					<td><input type="radio" name="renterId"
						value="${item.renterId}"></td>
					<td>${item.firstName}</td>

					<td>${item.lastName}</td>

					<td>${item.age}</td>

					<td>${item.employer}</td>

					<td>${item.income}</td>

					<td>${item.phoneNmbr}</td>
					
					<td>${item.unitId}</td>
				</tr>


			</c:forEach>
		</table>

		<input type="submit" value="Edit Selected Renter" name="doThisToRenter">
		<input type="submit" value="Delete Selected Renter" name="doThisToRenter">
	</mvc:form>
	<a href="renterform.mvc">Add a new renter</a>
	<br />
	<a href="menu.mvc">Back to main menu</a>
	<br />
</body>
</html>