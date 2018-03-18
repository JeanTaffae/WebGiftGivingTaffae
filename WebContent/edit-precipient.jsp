<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Person Recipient</title>
</head>
<body>
	<form action= "editPRecipientServlet" method="post"> 
		Name: <input type="text" name="name" value="${pRecipientToEdit.name}"><br /> 
		Address: <input type="text" name="address" value="${pRecipientToEdit.streetAddress}"><br />
		City: <input type="text" name="city" value="${pRecipientToEdit.city}"><br />
		State: <input type="text" name="state" value="${pRecipientToEdit.state}">Please enter 2 position alphanumeric abbreviation<br />
		ZipCode: <input type="text" name="postalCode" value="${pRecipientToEdit.postalCode}"><br />
		BirthDate: <input type="text" name="birthDate" value="${pRecipientToEdit.birthDate}">Please enter in YYYY/MM/DD format<br /> 
 		Relationship: <input type="text" name="relationship" value="${pRecipientToEdit.relationship}"><br />
 		<input type="hidden" name="id" value="${pRecipientToEdit.id}"> 
 		<input type="submit" value="Save Edited Recipient">
	</form>

</body>
</html>