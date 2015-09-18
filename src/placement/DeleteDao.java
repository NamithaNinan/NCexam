
package placement; 
import java.sql.*;  
public class DeleteDao {  
  
public static boolean delete(DeleteBean bean){  
boolean status=false;  
try{  
Connection con=ConnectionProvider.getCon();  
              
PreparedStatement ps=con.prepareStatement("UPDATE QUESTION SET STATUS=0 WHERE QID=?"); 
    

ps.setInt(1,bean.getQid());  


              
ResultSet rs=ps.executeQuery();  
System.out.println("delete  done");
status=rs.next();  
System.out.println("delete done"+status);
}catch(Exception e){}  
  
return status;  
  
}  
}  



