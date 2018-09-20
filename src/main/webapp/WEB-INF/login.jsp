<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	</div>
</body>
</html>