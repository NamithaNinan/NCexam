package placement; 
import java.sql.*;  
public class AdminDao {  
  
public static boolean insert(AdminBean bean){  
boolean status=false;  
try{  
Connection con=ConnectionProvider.getCon();  
              
PreparedStatement ps=con.prepareStatement("INSERT INTO USER1(USER1,PASS) VALUES (?,?)");  

ps.setString(1,bean.getUser());  
ps.setString(2,bean.getPass());  
System.out.println("admin inserted ha ha done 11");
              
ResultSet rs=ps.executeQuery();  
System.out.println("admin inserted ha ha done");
status=rs.next();  
System.out.println(" admin insert done"+status);
}catch(Exception e){}  
  
return status;  
  
}  
}  

