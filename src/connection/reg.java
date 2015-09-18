package connection;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.*;
import oracle.jdbc.OraclePreparedStatement;
import oracle.jdbc.OracleResultSet;

import java.io.PrintWriter;
import java.sql.*;

/*import connection.Connection;
import automation.Exception;
import automation.PrintWriter;
import automation.String;
*/
/**
 * Servlet implementation class reg
 */
public class reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reg() {
        super();
        // TODO Auto-generated constructor stub
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
		// final String JDBC_DRIVER="com.mysql.jdbc.Driver";  
	    //  final String DB_URL="jdbc:oracle:thin:@localhost:1521:xe";
		
		int usnflag;
		Vusn v=new Vusn();
		PrintWriter out= response.getWriter();
		response.setContentType("text/html");

	    	String fname,mname,lname,usn,pno,dob,eid,gender,be,ten,twelve,dname,cname,date,month,year;
		    fname=request.getParameter("fname").toString();
		    mname=request.getParameter("mname").toString();
		    lname=request.getParameter("lname").toString();
		    usn=request.getParameter("usn").toString();
		    pno=request.getParameter("pnum").toString();
		    cname=request.getParameter("cname").toString();
		    //dob=request.getParameter("dob").toString();
		    date=request.getParameter("date").toString();
		    month=request.getParameter("month").toString();
		    year=request.getParameter("year").toString();
		    eid=request.getParameter("email").toString();
		    //address=request.getParameter("address").toString();
		    be=request.getParameter("mark").toString();
		    ten=request.getParameter("ten").toString();
		    twelve=request.getParameter("twelfth").toString();
		    gender=request.getParameter("gender").toString(); 
		    dname=request.getParameter("drive_name");
		    System.out.println(dname);
		    
		    usnflag=v.verifyUsn(usn,dname);
		    if(usnflag==0)
		    {
		    	out.println("<html><body>alert(sorry !)</body></html>");
		    	request.getRequestDispatcher("RegisterS.jsp").forward(request,response);
		    		         
	}
   else
	{

	    if(fname.equals(""))
	    {
	    	//out.println("<html><body>alert(sorry !)</body></html>");
	    	System.out.println("sorry");
	    	request.getRequestDispatcher("RegisterS.jsp").forward(request,response);
	    }
           PreparedStatement ps=null;
           Connection cn=null;
           HttpSession session=request.getSession(true);
           session.setAttribute("usn", usn);
           session.setAttribute("name", fname);
         //  session.setAttribute("drive_name", dname);
           
           
           try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
           try {
				cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","placement","namitha");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
          
     PreparedStatement pos = null;
	try {
		
		pos = cn.prepareStatement("INSERT INTO student(FIRST_NAME,MIDDLE_NAME,LAST_NAME,USN,PHONE_NUMBER,DOB,EMAIL_ID,GENDER,BE_MARKS,TENTH_MARKS,TWELFTH_MARKS,COLLEGE_NAME,DRIVE_NAME) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
     
     try {
   	  	pos.setString(1,fname);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
     try {
		pos.setString(2,mname);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
     try {
		pos.setString(3,lname);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
     try {
		pos.setString(4,usn);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} 
     try {
		pos.setString(5,pno);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}  
     try {
   	  dob=date+month+year;
		pos.setString(6,dob);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} 
     
     try {
		pos.setString(7,eid);
	} catch (SQLException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}
     try {
		pos.setString(8,gender);
	} catch (SQLException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}
     try {
		pos.setString(9,be);
	} catch (SQLException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}
     try {
		pos.setString(10,ten);
	} catch (SQLException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}
     try {
		pos.setString(11,twelve);
	} catch (SQLException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}
     try {
		pos.setString(12,cname);
	} catch (SQLException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}
	try {
		pos.setString(13,dname);
	} catch (SQLException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}
    // out.println("insert done");
     int i;
	try {
	 i = pos.executeUpdate();
	 if(i>0)  {
		
		/* HttpSession session=request.getSession();
		 session.setAttribute("name",usn);
		 session.setMaxInactiveInterval(1*60);
		 //String y=(String) session.getAttribute("name");
		 //System.out.println("session id is "+y);*/
		 System.out.println(dname+" in reg");
		 request.setAttribute("drive_name",dname);
		//request.setAttribute("drive_name",dname);
	     request.getRequestDispatcher("Rules.jsp").forward(request,response);
	 }
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	

	}
	
		
}}


