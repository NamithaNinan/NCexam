package placement;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class updateDrive1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String status = request.getParameter("status");
		System.out.println("Name = "+name);
		System.out.println("Password = "+password);
		System.out.println("Status = "+status);
		try{ 
			Connection con=ConnectionProvider.getCon(); 
			System.out.println("Connection done!");
			PreparedStatement ps=con.prepareStatement("UPDATE DRIVES SET PASSWORD=?, STATUS=? WHERE DRIVE_NAME=?");
			ps.setString(1,password);
			ps.setString(2,status);
			ps.setString(3,name);
			
			ResultSet rs=ps.executeQuery();
			System.out.println("Execution done!");
			boolean stat=rs.next();
			if (stat) {
				System.out.println("Updated successfully.");
			} 
			else {
				System.out.print("Error occurred. Password not updated.");
			}
			
			}	
			catch (Exception e) {
			e.printStackTrace();
			}
	}
}
