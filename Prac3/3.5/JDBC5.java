import java.sql.*;
class JDBC5{
	public static void main(String[] args){
		Connection con=null;
		PreparedStatement stmt=null;
		try{
			System.out.println("Enrollment:130050131526");
			MyData m1=new MyData();
			con=m1.SetConnection("s2d130050131526");
			stmt=con.prepareStatement("Select display()");
			ResultSet rs=stmt.executeQuery();
			while(rs.next()){
				System.out.println(rs.getString("display"));
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
	}
}