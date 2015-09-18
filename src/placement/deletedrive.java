package placement;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class deletedrive extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("In deletedrive.java");
		String name = request.getParameter("name1");
		
		System.out.println("Name = "+name);
		
		try{ 
			Connection con=ConnectionProvider.getCon(); 
			System.out.println("Connection done!");
			PreparedStatement ps=con.prepareStatement("DELETE FROM DRIVES WHERE DRIVE_NAME=?");
			
			ps.setString(1,name);
			
			ResultSet rs=ps.executeQuery();
			System.out.println("Execution done!");
			boolean status1=rs.next();
			if (status1) {
				System.out.println("DELETED DRIVE successfully.");
			} 
			else {
				System.out.print("Error occurred. DELETE not updated.");
			}
			
			}	
			catch (Exception e) {
				e.printStackTrace();
				e.getMessage();
			}
	}
}