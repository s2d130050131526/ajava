<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Enrollment No.:130050131526</h3>
        <%
            Cookie[] c=request.getCookies();
            if(c==null){
                c=new Cookie[0];
            }
            String name=request.getParameter("name");
            String value=request.getParameter("value");
            Cookie temp=null;
            if(name!=null && value!=null && name.length()>0 && value.length()>0){
                temp=new Cookie(name,value);
                temp.setMaxAge(365*24*60*60);
                response.addCookie(temp);
            }
            for(int i=0;i<c.length-1;i++){
                out.print("Cookie Number:"+i+"Cookie Name: "+c[i].getName()+"Cookie Value: "+c[i].getValue()+"<br/>");
            
            if(temp!=null && temp.getName().equals(c[i].getName())){
                temp=null;
                
            }
            if(c.length>=10){
                
                int start=c.length-10;
                c[start].setMaxAge(0);
                response.addCookie(c[start]);
            }
            }
        %>
         <form action="Cookie.jsp" method="GET">
            <center>
                Get Cookie Name<input type="text" name="name" placeholder="Enter Cookie Name"/><br/>
                Get Cookie Value<input type="text" name="value" placeholder="Enter Cookie Value"/><br/><br/>
                <input type="submit" value="Submit">
            </center>
        </form>
    </body>
</html>

