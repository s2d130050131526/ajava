import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.ServletConfig;
public class NaturalJoin extends HttpServlet {
	public void init(ServletConfig c){
	}
	public void doGet(HttpServletRequest rq,HttpServletResponse re) throws ServletException{
		re.setContentType("text/html");
		Connection c=null;
		PreparedStatement s=null;
		ResultSet rs=null;
		try{
			PrintWriter out=re.getWriter();
			Class.forName("org.postgresql.Driver");
			c=DriverManager.getConnection("jdbc:postgresql://localhost:5432/s2d130050131526","postgres","123123");
			String query="select * from student natural join student1;";
			s=c.prepareStatement(query);
			out.println("<h1>Natural Left Join</h1><h2><br/>Data:</h2>");
			out.println("<h2>Enrollment: 130050131526</h2>");
			rs=s.executeQuery();
			while(rs.next()){
				out.println("<br/><br/><h3>id:"+rs.getString("id")+"</h3>");
				out.println("<h3>name:"+rs.getString("name")+"</h3>");
				out.println("<h3>branch:"+rs.getString("branch")+"</h3>");
				out.println("<h3>sem:"+rs.getString("sem")+"</h3>");
			}
		}
		catch(IOException i){
			System.out.println("IOException");
		}
		catch(Exception e){
			System.out.println(e);
		}
		
	}
	public void destroy(){
	}
}