
package placement; 
import java.sql.*;  
public class AddDao {  
  
public static boolean insert(QuestionBean bean){  
boolean status=false;  
try{  
Connection con=ConnectionProvider.getCon();  
              
PreparedStatement ps=con.prepareStatement( "INSERT INTO QUESTION(QID, QUESTION, OP1,OP2, OP3, OP4, CORRECT, CATEGORY, STATUS) VALUES (?,?,?,?,?,?,?,?,?)"); 
    

ps.setInt(1,bean.getQid());  
ps.setString(2,bean.getQues());  
ps.setString(3,bean.getA()); 
ps.setString(4,bean.getB()); 
ps.setString(5,bean.getC()); 
ps.setString(6,bean.getD()); 
ps.setString(7,bean.getca()); 
ps.setString(8,bean.getCat());
ps.setInt(9,bean.getStatus());
              
ResultSet rs=ps.executeQuery();  
System.out.println("insert done");
status=rs.next();  
System.out.println("insert done"+status);
}catch(Exception e){}  
  
return status;  
  
}  
}  

