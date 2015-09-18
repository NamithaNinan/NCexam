package placement; 
import java.sql.*;  
public class UpdateadminDao {  
  
public static boolean update(AdminBean bean){  
boolean status=false;  
try{  
Connection con=ConnectionProvider.getCon();  
              
PreparedStatement ps=con.prepareStatement("UPDATE USER1 SET USER1=?,PASS=? WHERE USER1=?");  

ps.setString(1,bean.getUser());  
ps.setString(2,bean.getPass());  
ps.setString(3,bean.getUser());

              
ResultSet rs=ps.executeQuery();  
System.out.println("admin updated ha ha done");
status=rs.next();  
System.out.println(" admin updated done"+status);
}catch(Exception e){}  
  
return status;  
  
}  
}  


