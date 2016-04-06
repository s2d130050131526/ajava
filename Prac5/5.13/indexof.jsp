<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>

<head>

<title>Using JSTL Functions</title>

</head>

<body>
 
<h3>Enrollment no:130050131526</h3>


<c:set var="string1" value="This is first String."/>

<c:set var="string2" value="This <abc>is second String.</abc>"/>


<p>Index (1) : ${fn:indexOf(string1, "first")}</p>
<p>Index (2) : ${fn:indexOf(string2, "second")}</p>


</body>

</html>