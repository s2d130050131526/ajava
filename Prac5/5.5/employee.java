import java.sql.*;
import java.util.*;
class employee{
	public static void main(String[] args){
		Connection con=null;
		Statement stmt=null;
		try{
			Class.forName("org.postgresql.Driver");
			con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/s2d130050131526","postgres","1234");
			stmt=con.createStatement();
			String query="create table employee(id Integer,emp_name varchar(30));"; 
			stmt.executeUpdate(query);
			System.out.println("Table Created....!!!");
		/*	System.out.println("enter no of insertion you want to perform:");
			Scanner sc=new Scanner(System.in);
			int i=sc.nextInt();
			while(i!=0){
				System.out.print("Enter id:");
				int id=sc.nextInt();
				System.out.print("Enter name:");
				String name=sc.next();
				System.out.print("Enter Branch:");
				String branch=sc.next();
				query="insert into student values("+id+",'"+name+"','"+branch+"');";
				stmt.executeUpdate(query);
				System.out.println("values inserted..");
				i--;
			}*/
		}catch(Exception e){}
	}
}

