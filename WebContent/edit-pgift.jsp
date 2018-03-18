<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Personal Gift</title>
</head>
<body>
<form action= "editPGiftServlet" method = "post">
	Date Given: <input type="text" name = "date" value="${pGiftToEdit.dateGiven}">Please enter in YYYY/MM/DD format<br />
	Description: <input type="text" name="description" value="${pGiftToEdit.description}"><br />
	Value: <input type="text" name="value" value="${pGiftToEdit.value}"><br />
	Occasion: <input type="text" name= "occasion" value="${pGiftToEdit.occasion}"><br />
	<input type="hidden" name="id" value="${pGiftToEdit.id}">
	<input type="submit" value="Save Edited Gift">
</form>
</body>
</html>