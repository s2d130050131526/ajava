<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html>

<head>
  
<title>JSTL Tag</title>
</head>

<body>
    
<h4>Enrollment No:130050131526</h4>
     
<h4>Testing :format data Tag</h4>

<h3>Number Format:</h3>
<c:set var="now" value="<%=new java.util.Date()%>" />


<p>Formatted Date (1): <fmt:formatDate type="time" 
 value="${now}" /></p>

<p>Formatted Date (2): <fmt:formatDate type="date" 
 value="${now}" /></p>

<p>Formatted Date (3): <fmt:formatDate type="both" 
 value="${now}" /></p>


<p>Formatted Date (4): <fmt:formatDate pattern="yyyy-MM-dd" 
 value="${now}" /></p>


</body>

</html>
