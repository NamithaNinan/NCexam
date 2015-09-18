
package placement; 
import java.sql.*;  
public class ViewDao {  
  
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
     
System.out.println(rs.getInt(1) + " " +
			  rs.getString(2));
}
while(rs.next());
//System.out.println("insert done");
//;  
//System.out.println("insert done view"+status);
}catch(Exception e){}  
  
return status;  
  
}  
}  

