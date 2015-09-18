package connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Vusn {
	
	public int verifyUsn(String usn,String drive)
	{
		
		Connection conn = null;
		try {
			conn = connection.ConnectionDb.connectDb();
			Statement st = conn.createStatement();

				ResultSet rs = st.executeQuery("select usn from student where drive_name="+"'"+drive+"'");
				System.out.println("verify usn");
				
				while(rs.next())
				{
					if(rs.getString(1).equals(usn))
							return 0;
				}
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 1;
		
	}

}
