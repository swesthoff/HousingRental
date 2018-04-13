<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert Renter Page</title>
<script type="text/javascript">
	function validateForm() {
		var name = document.forms["renter"]["lastName"].value;
		if (name == "") {
			document.getElementById("lastNameError").innerHTML = "(Last name is required.)";
			return false;
		}

		//confirm that our numeric values are numbers.
		var age = document.forms["renter"]["age"].value;
		var income = document.forms["renter"]["income"].value;

		if (isNaN(age)) {
			document.getElementById("ageError").innerHTML = "Age must be a number.";
			return false;
		}
		if (isNaN(income)) {
			document.getElementById("incomeError").innerHTML = "Income must be a number.";
			return false;
		}

	}
</script>
</head>
<style>
span {
	color: red
}
</style>
<img
	src="data:image/jpeg;base64,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">
<br />
<body>
	<h2>Renter Information Form</h2>
	<span id="successMessage" class="success">${requestScope.creationSuccess}</span>
	<mvc:form id="renter" modelAttribute="renter" action="renterResult.mvc"
		method="POST" onsubmit="return validateForm()">
		<table>

			<tr>
				<td><mvc:label path="firstName">First Name</mvc:label></td>

				<td><mvc:input path="firstName" /></td>
			</tr>
			<tr>
				<td><mvc:label path="lastName">Last Name</mvc:label></td>
				<td><mvc:input path="lastName" /></td>
				<span id="lastNameError" class="error"></span>
			</tr>
			<tr>
				<td><mvc:label path="age">Age</mvc:label></td>
				<td><mvc:input path="age" /></td>
				<span id="ageError" class="error"></span>
			</tr>
			<tr>
				<td><mvc:label path="employer">Employer</mvc:label></td>
				<td><mvc:input path="employer" /></td>
			</tr>
			<tr>
				<td><mvc:label path="income">Income</mvc:label></td>
				<td><mvc:input path="income" /></td>
				<span id="incomeError" class="error"></span>

			</tr>
			<tr>
				<td><mvc:label path="phoneNmbr">Phone Number</mvc:label></td>
				<td><mvc:input path="phoneNmbr" /></td>
			</tr>
			<tr>
				<td><mvc:label path="unitId">Unit ID</mvc:label></td>
				<td><mvc:select name="unitId" path="unitId" items="${allUnits}"
						itemLabel="unitId" itemValue="unitId" /></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</mvc:form>
	<a href="viewAllRenters.mvc">View all Renters</a>
	<br />
	<a href="menu.mvc">Back to main menu</a>
	<br />
</body>
</html>