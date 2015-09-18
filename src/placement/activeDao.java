
package placement; 
import java.sql.*;  
public class activeDao {  
  
public static boolean add(DeleteBean bean){  
boolean status=false;  
try{  
Connection con=ConnectionProvider.getCon();  
              
PreparedStatement ps=con.prepareStatement("UPDATE QUESTION SET STATUS=1 WHERE QID=?"); 
    

ps.setInt(1,bean.getQid());  


              
ResultSet rs=ps.executeQuery();  
System.out.println("add  done");
status=rs.next();  
System.out.println("add done"+status);
}catch(Exception e){}  
  
return status;  
  
}  
}  



