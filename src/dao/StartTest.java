package dao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

/**
 * Servlet implementation class StartTest
 */
public class StartTest extends HttpServlet implements Servlet {
	// HttpSession session;

	FunctionalDao fd;
	Question[] resultdup;
	Question[] result;
	String Quest, op1, op2, op3, op4;
	int sno = 1;;
	Navigation n;
	Integer[] uans=new Integer[25];
	String[] ans = new String[25];
	String[] ans2 = new String[25];
	String[] ansfl = new String[25];
	String[] ans1 = new String[25];
	String[] qid1=new String[25];
	String drive_name = "ri";
	String choice="nonavigation";
	String option="option";
	


	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public StartTest() {
		super();

		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		
		fd = new FunctionalDao();
		resultdup = fd.getQuestion(drive_name);
		n = new Navigation();
		
		for (int i = 0; i < 25; i++) {
			ansfl[i]="Unanswered";
			ans[i] = "Unanswered";
			ans2[i] = "Unanswered";
			ans1[i] = "empty";
			qid1[i]="-1000";
			//uans[i]=0;
		}

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession(true);

		System.out.println(session.getAttribute("usn"));
		resultdup=(Question[]) session.getAttribute("NewExam");

		if (request.getParameter("minute") == null) {
			session.setAttribute("min", 60);
			session.setAttribute("sec", 0);

		} else {
			request.getSession().setAttribute("min",
					request.getParameter("minute"));
			request.getSession().setAttribute("sec",
					request.getParameter("second"));
		}
		 choice = request.getParameter("choice");
		String q=request.getParameter("id");
		String option = request.getParameter("option");
		String Next = request.getParameter("Next");
		String first = request.getParameter("first");
		drive_name = request.getParameter("drive_name");

		System.out.println("drive_name " + drive_name);
		System.out.println("choice is" + choice);
		System.out.println("option is" + option);
		System.out.println("next is" + Next);
		System.out.println("first is" + first);

		try {
			if (first.equals("StartTest")) {
				System.out.println("in here");
				for(int i=0;i<25;i++)
				{
					ans2[i] = "Unanswered";
				}
				sno = 1;
				System.out.println("in here is " + drive_name);
				resultdup = fd.getQuestion(drive_name);
				result=(Question[]) resultdup;
				;
				// session.setAttribute("drive_name",request.getParameter("drive_name"));
				session.setAttribute("NewExam", resultdup);
				request.setAttribute("x", resultdup);
				response.sendRedirect("onetwo.jsp");

			} 
			
			else if(first.equals("START"))
			       {
				
				try {

					if (!choice.equals("nonavigation")) {

						sno = n.navigate(choice);
					}

				} catch (Exception e) {
					
					System.out.println("hello2");

				}

				try {
					if ((Next.equals("next"))) {
						
						
						if (!option.equals("option")) {
							ans[sno - 1] = option;
							ans2[sno-1]="Your current answer is "+option;
							qid1[sno-1]=q;
							ansfl[sno-1]="Answered";

							
						} 
						sno++;
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					System.out.println("hello3");
				}

				if (sno < 26) {
					
					request.setAttribute("Qid",resultdup[sno-1].getQid());
					request.setAttribute("Answer", ans2[sno - 1]);
					request.setAttribute("Category",
							resultdup[sno - 1].getCategory());
					request.setAttribute("Question",
							resultdup[sno - 1].getQuestion());
					request.setAttribute("Option1", resultdup[sno - 1].getOp1());
					request.setAttribute("Option2", resultdup[sno - 1].getOp2());
					request.setAttribute("Option3", resultdup[sno - 1].getOp3());
					request.setAttribute("Option4", resultdup[sno - 1].getOp4());
					
					request.setAttribute("Answer", ans2[sno-1]);
					request.setAttribute("SerialNo", sno);
					request.getRequestDispatcher("Test.jsp").forward(request,
							response);
				} else {
					int j=0;
					for(int i=0;i<25;i++)
					{
						if(ans2[i].equals("unaswered"))
						{
							uans[j++]=i+1;
						}
					}
					request.setAttribute("ANS1", ansfl[0]);
					request.setAttribute("ANS2", ansfl[1]);
					request.setAttribute("ANS3", ansfl[2]);
					request.setAttribute("ANS4", ansfl[3]);
					request.setAttribute("ANS5", ansfl[4]);
					request.setAttribute("ANS6", ansfl[5]);
					request.setAttribute("ANS7", ansfl[6]);
					request.setAttribute("ANS8", ansfl[7]);
					request.setAttribute("ANS9", ansfl[8]);
					request.setAttribute("ANS10", ansfl[9]);
					request.setAttribute("ANS11", ansfl[10]);
					request.setAttribute("ANS12", ansfl[11]);
					request.setAttribute("ANS13", ansfl[12]);
					request.setAttribute("ANS14", ansfl[13]);
					request.setAttribute("ANS15", ansfl[14]);
					request.setAttribute("ANS16", ansfl[15]);
					request.setAttribute("ANS17", ansfl[16]);
					request.setAttribute("ANS18", ansfl[17]);
					request.setAttribute("ANS19", ansfl[18]);
					request.setAttribute("ANS20", ansfl[19]);
					request.setAttribute("ANS21", ansfl[20]);
					request.setAttribute("ANS22", ansfl[21]);
					request.setAttribute("ANS23", ansfl[22]);
					request.setAttribute("ANS24", ansfl[23]);
					request.setAttribute("ANS25", ansfl[24]);
					
					request.getRequestDispatcher("TestOver.jsp").forward(
							request, response);
				}

			}

		} catch (Exception e1) {
			// TODO Auto-generated catch block
			System.out.println("hello1");
		}

	}

	// request.getRequestDispatcher("EndTest.jsp").forward(request, response);

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String s = "";
		AnswerCheck as = new AnswerCheck();
		HttpSession session = request.getSession(true);
		for (int j = 1; j <= 25; j++) {
			s = s + qid1[j-1] + "-" + ans[j - 1] + ";";
		}
		// System.out.println(session.getAttribute("answer"));

		// TODO Auto-generated method stub
		PreparedStatement pos = null;
		Connection cn = null;
		String u, n;
		u = (String) session.getAttribute("usn");
		n = (String) session.getAttribute("name");
		Marks a = as.GetMarks(ans, resultdup);
		for (int i = 0; i < 25; i++) {
			System.out.println(ans[i] + "     " + resultdup[i].getCop());
		}
		System.out.println(a);
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println(a);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("1");
		}
		try {
			cn = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", "placement",
					"namitha");
			System.out.println("connection done");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("2");
		}

		try {
			pos = cn.prepareStatement("insert into results(USN,NAME,TOTAL_MARKS,TECHNICAL,VERBAL,APTITUDE,LOGICAL,ANSWER) VALUES (?,?,?,?,?,?,?,?)");
			System.out.println("insertion done");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("3");
		}

		try {
			pos.setString(1, u);
			System.out.println("usn");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("4");
		}
		try {
			pos.setString(2, n);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("5");
		}
		try {
			pos.setInt(3, a.total_marks);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("6");
		}
		try {
			pos.setInt(4, a.technical);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("6");
		}
		try {
			pos.setInt(5, a.verbal);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("6");
		}
		try {
			pos.setInt(6, a.aptitude);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("6");
		}
		try {
			pos.setInt(7, a.logical);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("6");
		}
		try {
			pos.setString(8, s);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("6");
		}
		int i;
		// ResultSet rs;
		// rs.executeQuery();
		// while(rs.next())
		try {
			i = pos.executeUpdate();
		} catch (Exception e) {
			System.out.println("hi");
		}
		System.out.println(s);
		fd = new FunctionalDao();
		;
		//resultdup = fd.getQuestion("drive_name");
		;
		session.invalidate();

		request.getRequestDispatcher("End.jsp").forward(request, response);
	}
}
