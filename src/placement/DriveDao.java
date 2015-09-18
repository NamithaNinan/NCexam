package placement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DriveDao {
	public static boolean create(DriveBean bean){  
		boolean stat=false;  
		String name = bean.getname();
		String date = bean.getdate();
		String password = bean.getpassword();
		int status = bean.getstatus();
		int technical = bean.gettechnical();
		int aptitude = bean.getaptitude();
		int logical = bean.getlogical();
		int verbal = bean.getverbal();
		int total = technical + aptitude + logical + verbal;
		
		try{
			Connection con=ConnectionProvider.getCon();  
			System.out.println("Connection done!");
			PreparedStatement ps=con.prepareStatement("INSERT INTO DRIVES (DRIVE_NAME,DRIVE_DATE,PASSWORD,STATUS,TECHNICAL,APTITUDE,LOGICAL,VERBAL,TOTAL) VALUES (?,?,?,?,?,?,?,?,?)");  

			ps.setString(1,name);  
			ps.setString(2,date);
			ps.setString(3, password);
			ps.setInt(4,status);
			ps.setInt(5,technical);
			ps.setInt(6,aptitude);
			ps.setInt(7,logical);
			ps.setInt(8,verbal);
			ps.setInt(9,total);

			ResultSet rs=ps.executeQuery(); 
			System.out.println("Execution done!");
			stat=rs.next();
			
		}catch(Exception e){}  

		return stat;
	}
}
