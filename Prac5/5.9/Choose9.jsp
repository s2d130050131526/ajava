<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    
<head>
        
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
<title>JSP Page</title>
    
</head>
    
<body>
        
<h4>Enrollment No:130050131526</h4>
        
<h4>Testing Choose Core Tag</h4>
        
<c:set var="NoOfDays" scope="session"/>
        
<c:choose>
            
<c:when test="${NoOfDays == 366}">
                 
Year is leap year.
            
</c:when>
            
<c:when test="${NoOfDays==365}">
                 
Year is not a leap year.
            
</c:when>
       
</c:choose>
    
</body>

</html>
