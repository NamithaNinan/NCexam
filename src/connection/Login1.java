package connection;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Query;

import java.io.PrintWriter;
//import automation.PrintWriter;
//import automation.String;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Servlet implementation class Login1
 */
public class Login1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int i=0;
		
		String un="student";
	
		String u=request.getParameter("name");
		String p=request.getParameter("pwd");
		String d=request.getParameter("drive");
		//System.out.println("first d is "+d);
		
		GetDrive g=new GetDrive();
		i=g.drivename(d,p);
		
		//String msg=" ";
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out= response.getWriter();
		if(i==1)
		{
			
			if(u.equals(un))
			{
				request.setAttribute("drive_name", d);
				System.out.println("login java "+d);
				request.getRequestDispatcher("RegisterS.jsp").forward(request,response);
			}
			else
			{
			
				out.println("<html><body onload=\"confirm('sorry re-enter username and password !')\"></body></html>");
				response.sendRedirect("loginS.jsp");
			
			}
		}
		else
		{
			out.println("<html><body onload=\"confirm('sorry Wrong Password !')\"></body></html>");
			 Start1 s=new Start1();
			 s.service(request, response);
			 
		}
		
	}
      
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}