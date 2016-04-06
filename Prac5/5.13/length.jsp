<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>

<head>

<title>Using JSTL Functions</title>

</head>

<body>
 
<h3>Enrollment no:130050131526</h3>


<c:set var="string1" value="This is first String."/>

<c:set var="string2" value="This is second String." />


<p>Length of String (1) : ${fn:length(string1)}</p>
<p>Length of String (2) : ${fn:length(string2)}</p>


</body>

</html>