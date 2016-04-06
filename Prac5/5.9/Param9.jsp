<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    
<head>
        
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
<title>JSP Page</title>
    
</head>
    
<body>
        
<h4>Enrollment No:130050131526</h4>
        
<h4>Testing Param Core Tag</h4>
        
<c:url value="ForEach9.jsp" var="myURL">
	
<c:param name="userId" value="1234" />
	
<c:param name="passwd" value="tcs@123" />
        
</c:url>
        
<c:import url="${myURL}" />
    
</body>

</html>
