<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>
	<h1>Registration:</h1>
	<div class = "body">
		<form:form action="/user/register" method="POST" modelAttribute="user">
		<p><form:errors path="firstName"></form:errors></p>
		<p>
			<form:label path="firstName">First Name: </form:label>
			<form:input path="firstName"></form:input>
		</p>
		
		<p><form:errors path="lastName"></form:errors></p>
		<p>
			<form:label path="lastName">Last Name: </form:label>
			<form:input path="lastName"></form:input>
		</p>
		
		<p><form:errors path="email"></form:errors></p>
		<p>
			<form:label path="email">Email: </form:label>
			<form:input path="email"></form:input>
		</p>
		
		<p><form:errors path="age"></form:errors></p>
		<p>
			<form:label path="age">Age: </form:label>
			<form:input path="age"></form:input>
		</p>
		
		<p><form:errors path="password"></form:errors></p>
		<p>
			<form:label path="password">Password: </form:label>
			<form:input path="password"></form:input>
		</p>
		
		<p><form:errors path="confirm"></form:errors></p>
		<p>
			<form:label path="confirm">Reconfirm Password: </form:label>
			<form:input path="confirm"></form:input>
		</p>
		
		<input type = "submit" value = "Register"/>
	</form:form>
	<a href = "/users/login">To Login</a>
	</div>
</body>
</html>