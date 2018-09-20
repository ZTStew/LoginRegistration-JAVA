<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<h1>Login</h1>
	<div class = "body">
		<form:form action="/user/login" method="POST" modelAttribute="user">
		<p><form:errors path="email"></form:errors></p>
		<p>
			<form:label path="email">Email: </form:label>
			<form:input path="email"></form:input>
		</p>
		
		<p><form:errors path="password"></form:errors></p>
		<p>
			<form:label path="password">Password: </form:label>
			<form:input path="password"></form:input>
		</p>
		
		<input type = "submit" value = "Register"/>
	</form:form>
	<a href = "/users/registration">To Registration</a>
	</div>
</body>
</html>