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

<h4>Testing parseDate Tag</h4>

<h3>Date Parsing:</h3>

<c:set var="now" value="20-03-2016" />


<fmt:parseDate value="${now}" var="parsedEmpDate" 
pattern="dd-MM-yyyy" />

<p>Parsed Date: <c:out value="${parsedEmpDate}" /></p>


</body>

</html>

