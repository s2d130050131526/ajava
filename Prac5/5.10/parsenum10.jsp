<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html>

<head>
  
<title>JSTL fmt:parseNumber Tag</title>

</head>

<body>
    
<h4>Enrollment No:130050131526</h4>
     
<h4>Testing :parseNumber Tag</h4>

<h3>Number Parsing:</h3>

<c:set var="number" value="128453.5421" />


<fmt:parseNumber var="i" type="number" value="${number}" />

<p>Parsed Number (1) : <c:out value="${i}" /></p>

<fmt:parseNumber var="i" integerOnly="true" 
type="number" value="${number}" />

<p>Parsed Number (2) : <c:out value="${i}" /></p>


</body>

</html>
