<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>

<head>

<title>Using JSTL Functions</title>

</head>

<body>
    
<h4>Enrollment no:130050131526</h4>


<c:set var="string1" value="This is first String."/>
<c:set var="string2" value="This <abc>is second String.</abc>"/>


<p>With escapeXml() Function:</p>

<p>string (1) : ${fn:escapeXml(string1)}</p>
<p>string (2) : ${fn:escapeXml(string2)}</p>

<p>Without escapeXml() Function:</p>
<p>string (1) : ${string1}</p>
<p>string (2) : ${string2}</p>


</body>

</html>