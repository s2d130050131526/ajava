<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    
<head>
        
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
<title>JSP Page</title>
    
</head>
    
<body>
        
<h4>Enrollment No:130050131526</h4>
        
<form method="GET">
            
<center>
    Name:<input type="text" name="name" placeholder="Enter Name"/><br/><br/>
                
<input type="submit" value="Submit">
            
</center>
        
</form>
        
<%
            out.print(request.getParameter("name"));
        %>
    
</body>

</html>
