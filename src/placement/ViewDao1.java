
package placement; 
import java.sql.*;  
public class ViewDao1 {  
  
public static boolean view(ViewBean bean){  
boolean status=false;  
try{  
Connection con=ConnectionProvider.getCon();  
              
PreparedStatement ps=con.prepareStatement(  
    "SELECT * FROM QUESTIONS WHERE CATEGORY=?");  

ps.setString(1,bean.getCat());  
  

              
ResultSet rs=ps.executeQuery();
status=rs.next();
do
{
	 int qid  = rs.getInt("qid");
     
     String questions = rs.getString("questions");
     

     //Display values
     System.out.print("QID: " + qid);
     
     System.out.print(", QUESTION: " + questions);
     
     
//System.out.println(rs.getInt(1) + " " +
			//  rs.getString(2));
}while(rs.next());
//System.out.println("insert done");
//;  
//System.out.println("insert done view"+status);
}catch(Exception e){}  
  
return status;
  
}  
}  


