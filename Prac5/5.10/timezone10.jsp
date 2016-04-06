<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
  
<head>
    
<title>JSTL  Tag</title>
  
</head>

  
<body>
       
<h4>Enrollment No:130050131526</h4>

<h4>Testing timezone Tag</h4>
 
Date in the GMT-8 time zone: <c:set var="today" value="<%=new java.util.Date()%>" />  
    
<c:set var="timeZone" value="GMT-8"/>  
<fmt:timeZone value="${timeZone}">  
    
<strong>  
          
<fmt:formatDate value="${today}" timeZone="${timeZone}" type="both" />  
      
</strong>  
    
</fmt:timeZone>    

    
</body>

</html>
