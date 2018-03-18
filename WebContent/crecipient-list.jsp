<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Charity Recipient List</title>
</head>
<body>
<h1>Charity Recipients</h1>
<form method = "post" action = "editCRecipientListServlet">
<table>
<c:forEach items="${requestScope.charityList}" var="currentRecipient">
<tr>
	<td><input type="radio" name="id" value="${currentRecipient.id}"></td>
	<td>${currentRecipient.name}--</td>
	<td>${currentRecipient.streetAddress}--</td>
	<td>${currentRecipient.city}--</td>
	<td>${currentRecipient.state}--</td>
	<td>${currentRecipient.postalCode}--</td>
	<td>${currentRecipient.taxId}</td>
	</tr>
</c:forEach>
</table>
<input type = "submit" value = "Edit Selected Recipient" name = "doThisToCRecipient">
</form>
<a href= "index.html">Back to option list</a><br />
</body>
</html>