<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.io.*,java.sql.*,javax.servlet.*,javax.servlet.http.*"%>

<!DOCTYPE html>

<html>
    
<head>
        
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
<title>JSP Page</title>
    
</head>
    
<body>
        
<c:set var="id" value="${param.id}"/>
        
<c:set var="name" value="${param.bookname}"/>
        
<c:set var="author" value="${param.author}"/>
        
<sql:setDataSource var="con" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/s2d130050131526" user="root" password=""/>
<sql:update dataSource="${con}" var="count">
            
insert into bookinfo(id,bookname,author) values(?,?,?); 
        
<sql:param value="${id}"/>
        
<sql:param value="${name}"/>
        
<sql:param value="${author}"/>
        
</sql:update>
        
<sql:query dataSource="${con}" var="rs">select * from bookinfo;</sql:query>
        
<h1 align="center">Book Details</h1>
          
<table align="center" border="1">
            
<tr>
                
<th>Id</th>
                
<th>Book Name</th>
                
<th>Author</th>    
            
</tr>
          
<c:forEach var="row" items="${rs.rows}">
              
<tr>
                  
<td><c:out value="${row.id}"/></td>
                  
<td><c:out value="${row.bookname}"/></td>
                  
<td><c:out value="${row.author}"/></td>
              
</tr>
         
</c:forEach>   
              
</table>
    
</body>

</html>
