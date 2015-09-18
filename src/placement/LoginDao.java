package placement; 
import java.sql.*;  
public class LoginDao {  
  
public static boolean validate(LoginBean bean){  
boolean status=false;  
try{  
Connection con=ConnectionProvider.getCon();  
              
PreparedStatement ps=con.prepareStatement(  
    "SELECT * FROM USER1 WHERE USER1=? AND PASS=?");  

ps.setString(1,bean.getUser());  
ps.setString(2,bean.getPass());  

              
ResultSet rs=ps.executeQuery();  
System.out.println("insert done");
status=rs.next();  
System.out.println("insert done"+status);
}catch(Exception e){}  
  
return status;  
  
}  
}  
