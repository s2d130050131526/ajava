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

<h4>Testing message Tag</h4>
<fmt:setLocale value="en"/>

<fmt:setBundle basename="bits edu campus" var="lang"/>


<fmt:message key="count.one" bundle="${lang}"/><br/>

<fmt:message key="count.two" bundle="${lang}"/><br/>

<fmt:message key="count.three" bundle="${lang}"/><br/>


</body>

</html>

