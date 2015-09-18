package placement; 
import java.sql.*;  
public class DeleteAdminDao {  
  
public static boolean delete(DeleteAdminBean bean){  
boolean status=false;  
try{  
Connection con=ConnectionProvider.getCon();  
              
PreparedStatement ps=con.prepareStatement(  
    "DELETE FROM USER1 WHERE USER1=?");  

ps.setString(1,bean.getUser());  
 

              
ResultSet rs=ps.executeQuery();  
System.out.println("delete done");
status=rs.next();  
System.out.println("delete done"+status);
}catch(Exception e){}  
  
return status;  
  
}  
}  
