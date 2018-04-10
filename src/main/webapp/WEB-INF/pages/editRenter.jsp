<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Renter Page</title>
</head>
<body>
	<h2>Edit Renter</h2>
	<mvc:form modelAttribute="renter" action="renterEditResult.mvc">
 
		First Name: <input 
			type="text" name="firstName"
			value="${renterToEdit.firstName }"> 
		 Last Name: <input 
			type="text" name="lastName"
			value="${renterToEdit.lastName }">
		Age: <input 
			type="text" name="age"
			value="${renterToEdit.age }">
		 Employer: <input 
			type="text" name="employer"
			value="${renterToEdit.employer }">
		 Income: <input 
			type="text" name="income"
			value="${renterToEdit.income }">
		Phone Number: <input 
			type="text" name="phoneNmbr"
			value="${renterToEdit.phoneNmbr }">
		Unit ID: <input 
			type="text" name="unitId"
			value="${renterToEdit.unitId }">
			
		<input type="hidden"
			name="renterId" value="${renterToEdit.renterId }">
		 <input type="submit" value="Save Edited renter">
	</mvc:form>
	<a href="viewAllRenters.mvc">View all Renters</a><br />
	<a href="menu.mvc">Back to main menu</a><br />
</body>
</html>