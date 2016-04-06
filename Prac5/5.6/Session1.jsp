<%@ page language="java" contentType="text/html"%>

<!DOCTYPE html>

<html>

<head>

<title>Insert title here</title>

</head>

<body>

<h1>Hello <%out.print(session.getAttribute("name")); %></h1>

<h2>Your Enrollment No is <%out.println(session.getAttribute("no"));%></h2>

</body>

</html>