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
        
<h4>Testing Set Core Tag</h4>
        
<c:set var="salary" scope="session" value="${2000*2}"/>
        
<c:out value="${salary}"/>
    
</body>

</html>
