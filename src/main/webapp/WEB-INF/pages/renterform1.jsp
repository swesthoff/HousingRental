<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert Renter Page</title>
<script type="text/javascript">
 
function validateForm() { 
    var name = document.forms["renter"]["lastName"].value;
    if (name == "") {
    	document.getElementById("lastNameError").innerHTML = "*(Last name is required.)";
        return false;
    }
    
    //confirm that our numeric values are numbers.
    var age = document.forms["renter"]["age"].value;
    var unitId = document.forms["renter"]["unitId"].value; 
    var income = document.forms["renter"]["income"].value;
      
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
<style>

span {color: red}
</style>
<body>
	<h2>Renter Information Form</h2>
		<span id="successMessage" class="success">${requestScope.creationSuccess}</span>
	<mvc:form id = "renter" modelAttribute="renter" action="renterResult.mvc" onsubmit="return validateForm()">
		<table>

			<tr>
	        <td><mvc:label path="firstName">First Name</mvc:label></td>
	         
	        <td><mvc:input path="firstName" /></td>
	    </tr>
			<tr>
				<td><mvc:label path="lastName">Last Name</mvc:label></td>
				<td><mvc:input path="lastName" /></td><span id="lastNameError" class="error">*</span>
			</tr>
			<tr>
				<td><mvc:label path="age">Age</mvc:label></td>
				<td><mvc:input path="age" /></td><span id="ageError" class="error"></span> 
			</tr>
			<tr>
				<td><mvc:label path="employer">Employer</mvc:label></td>
				<td><mvc:input path="employer" /></td>
			</tr>
			<tr>
				<td><mvc:label path="income">Income</mvc:label></td>
				<td><mvc:input path="income" /></td><span id="incomeError" class="error"></span> 
			</tr>
			<tr>
				<td><mvc:label path="phoneNmbr">Phone Number</mvc:label></td>
				<td><mvc:input path="phoneNmbr" /></td>
			</tr>
			<tr>
				<td><mvc:label path="unitId">Unit ID</mvc:label></td>
				<td><mvc:input path="unitId" /></td><span id="unitIdError" class="error"></span> 
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</mvc:form>
	<a href="viewAllRenters.mvc">View all Renters</a><br />
	<a href="menu.mvc">Back to main menu</a><br />
</body>
</html>