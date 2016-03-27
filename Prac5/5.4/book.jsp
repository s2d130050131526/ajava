<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*" %> 
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="java.sql.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>book database</title>
</head>
<body>
<%	Connection conn;
	
	PreparedStatement pstmt;
	ResultSet resultset;
	
	 final String JDBC_DRIVER = "org.postgresql.Driver";
	 final String DB_URL = "jdbc:postgresql://127.0.0.1:5432/s2d130050131526";
	 final String USER = "postgres";
	 final String PASS = "1234";
	 Class.forName(JDBC_DRIVER);
	 conn = DriverManager.getConnection(DB_URL, USER, PASS);
	 Statement stmt= conn.createStatement();
	 out.println("Connected database successfully...");
     %>
     <br>
     <%
		String id1=request.getParameter("bookid");
		String name=request.getParameter("book_name");
		String auth=request.getParameter("author");
		int id=Integer.parseInt(id1);	
		String sql="INSERT INTO book(id, book_name, author) VALUES(?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, auth);
		pstmt.addBatch();
		if(pstmt.executeBatch().length != 0){
        	out.println("Record has been inserted");
        }else {
        	out.println("sorry! Failure");
        }
		%>
		<br>
		<%
		out.print("Enroll no: 130050131526");
		resultset = stmt.executeQuery("select * from book");
		%>
		<br>
	        <TABLE BORDER="1">
	            <TR>
	                <TH>ID</TH>
	                <TH>Name</TH>
	                <TH>Author</TH>
	                
	            </TR>
	            <% while(resultset.next()){ %>
	            <TR>
	                <TD> <%= resultset.getInt(1) %></td>
	                <TD> <%= resultset.getString(2) %></TD>
	                <TD> <%= resultset.getString(3) %></TD>
	            </TR>
	            <% } %>
	        </TABLE>

</body>
</html>