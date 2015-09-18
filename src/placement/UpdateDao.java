
package placement; 
import java.sql.*;  
public class UpdateDao {  
  
public static boolean update(UpdateBean bean){  
boolean status=false;  
try{  
Connection con=ConnectionProvider.getCon();  
              
PreparedStatement ps=con.prepareStatement("UPDATE QUESTION SET QID=?,QUESTION=?,OP1=?,OP2=?,OP3=?,OP4=?,CORRECT=?,CATEGORY=?,STATUS=? WHERE QID=?"); 
    

ps.setInt(1,bean.getQid());  
ps.setString(2,bean.getQues());  
ps.setString(3,bean.getA()); 
ps.setString(4,bean.getB()); 
ps.setString(5,bean.getC()); 
ps.setString(6,bean.getD()); 
ps.setString(7,bean.getca()); 
ps.setString(8,bean.getCat());
ps.setInt(9,bean.getStatus());
ps.setInt(10,bean.getQid());

              
ResultSet rs=ps.executeQuery();  
System.out.println("update done done");
status=rs.next();  
System.out.println("update done"+status);
}catch(Exception e){}  
  
return status;  
  
}  
}  


