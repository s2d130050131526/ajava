<%@ page language="java" contentType="text/html"%>

<!DOCTYPE html>

<html>

<head>

<title>Insert title here</title>

</head>

<body>

<%String name=request.getParameter("name");
String no=request.getParameter("no");
session.setAttribute("name", name);
session.setAttribute("no", no);
response.sendRedirect("Session1.jsp");%>

</body>

</html>