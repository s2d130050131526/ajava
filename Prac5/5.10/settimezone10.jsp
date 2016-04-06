<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>

<head>

<title>JSTL fmt:setTimeZone Tag</title>

</head>

<body>
    
<h4>Enrollment No:130050131526</h4>

<h4>Testing parseDate Tag</h4>

<c:set var="now" value="<%=new java.util.Date()%>" />

<fmt:setTimeZone value="GMT-8" />

<p>Date in Changed Zone: <fmt:formatDate value="${now}" 
type="both" timeStyle="long" dateStyle="long" /></p>

</body>

</html>
