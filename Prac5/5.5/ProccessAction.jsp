<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>

</head>

<body>

<% String name, id,choice;
 name = request.getParameter("emp_name");
 id=request.getParameter("id");
 session.setAttribute("id", id);
 session.setAttribute("name", name);
 choice=request.getParameter("selection");
 if(choice.equals("insert"))
	 response.sendRedirect("JspInsertAction.jsp");

if(choice.equals("modify"))
	 
response.sendRedirect("Update.jsp");
	
	 
	 
if(choice.equals("delete"))
	 
response.sendRedirect("Clear.jsp");
	 
	
	 
 
 %>	

</body>

</html>