package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

public class FunctionalDao{

	/**
	 * 
	 */
	
	public Question[] getQuestion(String drive_name) {
		Question[] q = new Question[25];
		Question[] q11 = new Question[25];
		 q11=null;
		 System.out.println(drive_name);
           
	  
	if(drive_name.equals("ri"))
	{
		return q11;
	}
	else
	{
		
		// int[] a1;
		int[] a1 = new int[25];
		try {
			Query que = new Query();
			Qid que2 = new Qid();
			Connection conn = null;
			conn = dao.ConnectionDb.connectDb();
			Statement st = conn.createStatement();
			//System.out.println("in FUnctionalDoa "+drive_name);
			
			a1 = que2.GetQid(drive_name);
			for(int p=0;p<25;p++)
				System.out.println(a1[p]);
			System.out.println();

			for (int k = 0; k < 25; k++) {
				ResultSet rs = st.executeQuery(que.getQ1() + a1[k]);
				rs.next();
				System.out.println("functDao ererrrindhf bf dmn");

				int q1;
				String q2, q3, q4, q5, q6,q7,q8;
				q1 = rs.getInt(1);
				q2 = rs.getString(2);
				q3 = rs.getString(3);
				q4 = rs.getString(4);
				q5 = rs.getString(5);
				q6 = rs.getString(6);
				q7 = rs.getString(7);
				q8 = rs.getString(8);
				System.out.println("getting functDao ererrrindhf bf dmn");

				q[k] = new Question();
				q[k].setQid(q1);
				q[k].setQuestion(q2);
				q[k].setOp1(q3);
				q[k].setOp2(q4);
				q[k].setOp3(q5);
				q[k].setOp4(q6);
				q[k].setCop(q7);
				q[k].setCategory(q8);
				System.out.println("setting functDao ererrrindhf bf dmn");
				

				System.out.println(k + 1);
				System.out.println(q[k].getQuestion());
				System.out.println(q[k].getOp1());
				System.out.println(q[k].getOp2());
				System.out.println(q[k].getOp3());
				System.out.println(q[k].getOp4());
				System.out.println();
			}
		} catch (Exception e) {
			System.out.println("error");
		}
		return (q);
	}}
}