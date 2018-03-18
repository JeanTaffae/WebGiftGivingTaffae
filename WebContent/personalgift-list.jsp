<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Personal Gift List</title>
</head>
<body>
<h1>Personal Gift List</h1>
<form method = "post" action = "editPGiftListServlet">
<table>
<c:forEach items="${requestScope.giftList}" var="currentGift">
<tr>
	<td><input type="radio" name="id" value="${currentGift.id}"></td>
	<td>${currentGift.dateGiven}--</td>
	<td>${currentGift.description}--</td>
	<td>$${currentGift.value}--</td>
	<td>${currentGift.occasion}</td>
	<td><input type = "hidden" name="rId" value="${currentGift.recipient}"></td>
	</tr>
</c:forEach>	
</table>
<input type = "submit" value = "Edit Selected Gift" name="doThisToGift">
<input type = "submit" value = "Delete Selected Gift and Recipient" name="doThisToGift">
<input type = "submit" value = "Add New Gift" name="doThisToGift">
</form>
<a href= "index.html">Back to option list</a><br />
</body>
</html>