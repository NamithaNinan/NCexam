package connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import dao.Query;

public class GetDrive {
	
	public int drivename(String d,String pass)
	{
		Boolean b;
		System.out.println("in drivename");
		String q1;
    int flag=0;
	Connection conn1=null;
	LoginQuery q=new LoginQuery();
	System.out.println("in drivename 2");
	conn1 = connection.ConnectionDb.connectDb();
	System.out.println("in drivename 3");
	try {
		
		Statement st = conn1.createStatement();
		System.out.println("resultset errorkll");
		ResultSet rs = st.executeQuery( q.getQ1()+"'"+d+"'");
		System.out.println("resultset error");
		//for(int k=0;;k++){
		
		    b=rs.next();
			System.out.println(b);
			q1 = rs.getString(1);
			if(q1.equals(pass))
			{
				flag=1;
				System.out.println("flag is "+flag);
				//return 1;
			}
			else
			{
				flag=0;
				System.out.println("flag is "+flag);
				//return 0;
			}
	
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		System.out.println("eror in getdrive function");;
	}
	return flag;
	}
}