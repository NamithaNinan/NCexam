package connection;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Start1
 */
public class Start1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Start1() {
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
		
		Boolean b;
		int count=0;
		int x=0;
		
		Connection conn = null; 
		ResultSet rs=null;
		Statement st=null;
		conn = connection.ConnectionDb.connectDb();
		try {
			st = conn.createStatement();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		//System.out.println("in FUnctionalDoa "+drive_name);
		
		try {
		    rs = st.executeQuery("select drive_name from drives where status=1" );
		    
			
			do{
				b=rs.next();
				count++;
								
			 }while(b);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String[]  drive_name=new String[count-1];
		try{
			 rs = st.executeQuery("select drive_name from drives where status=1" );
			 
		do{
			b=rs.next();
			drive_name[x]=rs.getString(1);
			x++;
		}while(b);
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		
		int i;
		for(i=0;i<x;i++)
	
		System.out.println(drive_name[i]);
		int count1=0;
		if(count1<2)
		{
	request.setAttribute("drive_name", drive_name);	
	count1++;
		}
	request.getRequestDispatcher("loginS.jsp").forward(request, response);
		

	}

	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("reached");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
