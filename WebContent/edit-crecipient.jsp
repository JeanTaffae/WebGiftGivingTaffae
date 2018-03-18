<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Charity Recipient</title>
</head>
<body>
<form action= "editCRecipientServlet" method="post">
		Name: <input type="text" name="name" value="${cRecipientToEdit.name}"><br /> 
		Address: <input type="text" name="address" value="${cRecipientToEdit.streetAddress}"><br /> 
		City: <input type="text" name="city" value="${cRecipientToEdit.city}"><br /> 
		State: <input type="text" name="state" value="${cRecipientToEdit.state}">Please enter 2 position alphanumeric abbreviation<br /> 
		ZipCode: <input type="text" name="postalCode" value="${cRecipientToEdit.postalCode}"><br /> 
		Tax Id: <input type="text" name="taxId" value="${cRecipientToEdit.taxId}"><br />  
 		<input type="hidden" name="id" value="${cRecipientToEdit.id}"> 
 		<input type="submit" value="Save Edited Recipient">
	</form>
</body>
</html>