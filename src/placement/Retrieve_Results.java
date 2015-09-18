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


public class Retrieve_Results extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String usn, name, answer;
	int total, technical, verbal, aptitude, logical;
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	PrintWriter writer = response.getWriter();
	String cutoff = request.getParameter("cutoff");
	String drive=request.getParameter("name1");
	System.out.println("Retrieve Results : Drive Name = "+drive);
	System.out.println("pppppppp:"+cutoff);
	
	try{
	con = ConnectionProvider.getCon(); 
	//ps = con.prepareStatement("SELECT R.USN, R.NAME, R.TOTAL_MARKS, R.TECHNICAL, R.VERBAL, R.APTITUDE, R.LOGICAL, R.ANSWER FROM STUDENT S, RESULTS R WHERE R.USN=S.USN AND TOTAL_MARKS>"+cutoff+" AND DRIVE_NAME="+drive);
	ps = con.prepareStatement("SELECT R.USN, R.NAME, R.TOTAL_MARKS, R.TECHNICAL, R.VERBAL, R.APTITUDE, R.LOGICAL FROM RESULTS R JOIN STUDENT S ON R.USN=S.USN AND TOTAL_MARKS>"+cutoff+" AND DRIVE_NAME='"+drive+"'");
	
	rs=ps.executeQuery();

	//rs=ps.executeQuery();  

	response.setContentType("text/html;UTF-8");
	writer.write("<html>");
	writer.write("<body bgcolor=\"lightgrey\">");
	writer.write("<h3 align=\"center\">");
	        writer.write("<table cellspacing=10 cellpadding=10 border=2 style=\"font-size:18px\"; >");
	        writer.write("<caption> <h4 style=\"font-size:25px\";><b> Students who have scored more than " + cutoff + ": <b> </h4>");
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
	//answer = rs.getString(8);
	
	writer.write("<tr align = \"center\" style=\"background-color:white\">");
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
	}catch(Exception e){
	e.printStackTrace();
	}
	}
}
