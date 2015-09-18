package placement;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RetrieveQues extends HttpServlet {
 private static final long serialVersionUID = 1L;

 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  String cat = request.getParameter("cat");
  
  try{
   Connection con=ConnectionProvider.getCon();  
   
   PrintWriter writer = response.getWriter();
   PreparedStatement ps=con.prepareStatement("select * from questions where category = ?");  

   ps.setString(1,cat);

   ResultSet rs=ps.executeQuery();  
   response.setContentType("text/html;UTF-8");
   writer.write("<html>");
   writer.write("<h3 align=\"center\">");
         writer.write("<table border=1 cellspacing=10 cellpadding=10>");
         writer.write("<caption> <h4> Questions that are under the category : " + cat + "</h4>");
         writer.write("<tr>");
         writer.write("<td> Question ID </td>");
         writer.write("<td> Question </td>");
   while(rs.next())
   {
    int qid=rs.getInt("qid");
       String ques=rs.getString("questions");                 
          
          writer.write("<tr align = \"center\">");
          writer.write("<td>" + qid + "</td>");
          writer.write("<td>" + ques + "</td>");
          writer.write("<td>");
          writer.write("<input type=\"submit\" value=\"Edit\" onclick=\"location.href('editData.jsp');\">");
          writer.write("</form> </td>");
          writer.write("</tr>");               
   }
   writer.write("</table>");
   writer.write("<h3>");
         writer.write("</html>");
         writer.close(); 

  }catch(Exception e){}  
 }
}