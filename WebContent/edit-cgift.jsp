<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Charitable Gift</title>
</head>
<body>
<form action= "editCGiftServlet" method = "post">
	Date Given: <input type="text" name = "date" value="${cGiftToEdit.dateGiven}"><br />
	Description: <input type="text" name="description" value="${cGiftToEdit.description}"><br />
	Value: <input type="text" name="value" value="${cGiftToEdit.value}"><br />
	<input type="checkbox" name= "taxDeductible" value="${cGiftToEdit.isTaxDeductible}"><br />
	<input type="checkbox" name= "haveReceipt" value="${cGiftToEdit.haveReceipt}"><br />
	<input type="hidden" name="id" value="${pGiftToEdit.id}">
	<input type="submit" value="Save Edited Gift">
	</form>
</body>
</html>