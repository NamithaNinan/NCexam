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


public class Results_all extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String usn, name, answer;
	int total, technical, verbal, aptitude, logical;
	String drive=request.getParameter("name");
	String submit1=request.getParameter("submit1");
	//String submit2=request.getParameter("name");
	if(submit1.equals("ViewAllResults"))
	{
	
	System.out.println("Results All: Drive name = "+drive);
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	PrintWriter writer = response.getWriter();
	
	try{
	con = ConnectionProvider.getCon(); 
	ps = con.prepareStatement("SELECT R.USN, R.NAME, R.TOTAL_MARKS, R.TECHNICAL, R.VERBAL, R.APTITUDE, R.LOGICAL, R.ANSWER FROM RESULTS R JOIN STUDENT S ON R.USN=S.USN AND DRIVE_NAME='"+drive+"'");

	rs=ps.executeQuery();  

	rs=ps.executeQuery();  
	response.setContentType("text/html;UTF-8");
	writer.write("<html>");
	writer.write("<body bgcolor=\"lightgrey\">");
	writer.write("<h3 align=\"center\">");
	        writer.write("<table cellspacing=10 cellpadding=10 border=2 style=\"font-size:18px\"; >");
	        writer.write("<caption> <h4 style=\"font-size:25px\";><b> RESULTS <b> </h4>");
	        writer.write("<tr bgcolor=\"blue\" style=color:\"white\">");
	        writer.write("<td><b> USN </b></td>");
	        writer.write("<td><b> Name </b></td>");
	        writer.write("<td><b> Total Marks </b></td>");
	        writer.write("<td><b> Technical </b></td>");
	        writer.write("<td><b> Verbal </b></td>");
	        writer.write("<td><b> Aptitude </b></td>");
	        writer.write("<td><b> Logical </b></td>");
	       	        writer.write("</tr>");

	while(rs.next()){
	usn = rs.getString(1);
	name = rs.getString(2);
	total = rs.getInt(3);
	technical = rs.getInt(4);
	verbal = rs.getInt(5);
	aptitude = rs.getInt(6);
	logical = rs.getInt(7);
	answer = rs.getString(8);
	
	writer.write("<tr align = \"center\" style=\"background-color:lightblue\">");
	        writer.write("<td>" + usn + "</td>");
	        writer.write("<td>" + name + "</td>");
	        writer.write("<td>" + total + "</td>");
	        writer.write("<td>" + technical + "</td>");
	        writer.write("<td>" + verbal + "</td>");
	        writer.write("<td>" + aptitude + "</td>");
	        writer.write("<td>" + logical + "</td>");
	        writer.write("</tr>");	
	}
	writer.write("</table>");
	writer.write("<h3>");
	        writer.write("</html>");
	        writer.close();
	}catch(Exception e){}
	}
	
	if(submit1.equals("SetCutOffMarks"))
		
     {
		request.setAttribute("name", drive);
		request.getRequestDispatcher("cutoff.jsp").forward(request,response);
	}
	}
}