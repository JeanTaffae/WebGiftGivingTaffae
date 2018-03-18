<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Person Recipient List</title>
</head>
<body>
	<h1>Person Recipients</h1>
	<form method="post" action="editPRecipientListServlet">
		<table>
			<c:forEach items="${requestScope.personList}" var="currentRecipient">
				<tr>
					<td><input type="radio" name="id"
						value="${currentRecipient.id}">
					<td>${currentRecipient.name}--</td>
					<td>${currentRecipient.streetAddress}--</td>
					<td>${currentRecipient.city}--</td>
					<td>${currentRecipient.state}--</td>
					<td>${currentRecipient.postalCode}--</td>
					<td>${currentRecipient.birthDate}--</td>
					<td>${currentRecipient.relationship}</td>
				</tr>
			</c:forEach>
		</table>
		<input type="submit" value="Edit Selected Recipient" name="doThisToPRecipient"> 
	</form>
	<a href= "index.html">Back to option list</a><br />
</body>
</html>