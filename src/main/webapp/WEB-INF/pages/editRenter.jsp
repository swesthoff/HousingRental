<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Renter Page</title>
<script type="text/javascript">
	function validateForm() {
		// Confirm that they've entered a name before posting the form.
		var name = document.forms["renter"]["lastName"].value;
		if (name == "") {
			document.getElementById("lastNameError").innerHTML = "*(Last name is required.)";
			return false;
		}

		//confirm that our numeric values are numbers.
		var age = document.forms["renter"]["age"].value;

	    var income = document.forms["renter"]["income"].value;
		var unitId = document.forms["renter"]["unitId"].value;

		if (isNaN(age)) {
			document.getElementById("ageError").innerHTML = "*(Age must be a number.)";
			return false;
		}
		if (isNaN(income)) {
			document.getElementById("incomeError").innerHTML = "*(Income must be a number.)";
			return false;
		}

		if (isNaN(unitId)) {
			document.getElementById("unitIdError").innerHTML = "*(Unit Id must be a number.)";
			return false;
		}
	}
</script>
</head>
<body>
	<h2>Edit Renter</h2>
	<span id="successMessage" class="success">${requestScope.creationSuccess}</span>
	<mvc:form id="renter" modelAttribute="renter"
		action="renterEditResult.mvc" onsubmit="return validateForm()">
 
		First Name: <input type="text" name="firstName"
			value="${renterToEdit.firstName }">
		<br />
		 Last Name: <input type="text" name="lastName"
			value="${renterToEdit.lastName }">
		<span id="lastNameError" class="error">*</span>
		<br />
		Age: <input type="text" name="age" value="${renterToEdit.age }">
		<span id="ageError" class="error"></span>
		<br />
		 Employer: <input type="text" name="employer"
			value="${renterToEdit.employer }">
		<br />
		 Income: <input type="text" name="income"
			value="${renterToEdit.income }">
		<span id="incomeError" class="error"></span>
		<br />
		Phone Number: <input type="text" name="phoneNmbr"
			value="${renterToEdit.phoneNmbr }">
		<br />
		Unit ID: <input type="text" name="unitId"
			value="${renterToEdit.unitId }">
		<span id="unitIdError" class="error"></span>
		<br />

		<input type="hidden" name="renterId" value="${renterToEdit.renterId }">
		<input type="submit" value="Save Edited renter">
	</mvc:form>
	<a href="viewAllRenters.mvc">View all Renters</a>
	<br />
	<a href="menu.mvc">Back to main menu</a>
	<br />
</body>
</html>