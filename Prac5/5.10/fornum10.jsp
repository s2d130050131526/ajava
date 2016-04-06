<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<html>

<head>

<title>JSTL fmt:formatNumber Tag</title>

</head>

<body>
    
<h4>Enrollment No:130050131526</h4>
    
<h4>Testing formatnumber Tag</h4>

<h3>Number Format:</h3>
<c:set var="balance" value="12322231.2334" />

<p>Formatted Number (1): <fmt:formatNumber value="${balance}"
	type="currency" /></p>

<p>Formatted Number (2): <fmt:formatNumber type="number"
	maxIntegerDigits="3" value="${balance}" /></p>


<p>Formatted Number (7): <fmt:formatNumber type="percent"
	maxIntegerDigits="3" value="${balance}" /></p>

<p>Formatted Number (8): <fmt:formatNumber type="number"
	pattern="###.###E0" value="${balance}" /></p>

<p>Currency in USA : <fmt:setLocale value="en_US" /> 
<fmt:formatNumber
	value="${balance}" type="currency" /></p>

</body>

</html>
