package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class Qid {
	
	
	
	//private	String q1="Select qid from question";

	public  int[] GetQid(String drive_name)
	{
		String x=drive_name;
		DriveDetail d=new DriveDetail();
		int[] b=new int[25];
		System.out.println("in QID "+drive_name);
		try {	
			int t,a,v,l;
			int quest_no=0;
			Connection conn1=null;
			Query q=new Query();
			int q1,k;
			//Connection conn20=null;
			//conn20 = dao.ConnectionDb.connectDb();
			//Statement st20 = conn20.createStatement();
			//System.out.println("first checkpoint");
			//boolean l;
			//ResultSet rs20 = st20.executeQuery("select drive_name from student where college=pesit");
			//rs20.next();
		//	String drive_name=rs20.getString(arg0)
			Connection conn10=null;
			conn10 = dao.ConnectionDb.connectDb();
			Statement st10 = conn10.createStatement();
			System.out.println("first checkpoint");
			System.out.println(drive_name+"in qid after 1st");
			//boolean l;
			ResultSet rs10 = st10.executeQuery(q.getQ6()+"'"+ drive_name+"'");
			System.out.println("query exec");
			rs10.next();
			t=rs10.getInt(4);
			System.out.println(t);
			a=rs10.getInt(5);
			v=rs10.getInt(6);
			l=rs10.getInt(7);
			t++;
			a++;
			v++;
			l++;
		/*	d.setTechnical(rs10.getInt(5));
			d.setLogical(rs10.getInt(6));
			d.setVerbal(rs10.getInt(7));
			//rs10.next();*/
			System.out.println("second checkpoint");
			System.out.println(a);
			System.out.println(t);
			System.out.println(v);
			System.out.println(l);
			
			
			
			// b[];
		
			
			conn1 = dao.ConnectionDb.connectDb();
			Statement st = conn1.createStatement();
			//for (int k = 0; k < q.length; k++) {
			ResultSet rs = st.executeQuery( q.getQ2()+l);
			
			System.out.println("3 checkpoint");
		for(k=0;k<l-1;k++){
			 rs.next();
			 q1 = rs.getInt(1);
			 System.out.println(q1);
			b[quest_no++]=q1;
			System.out.println(b[k]);
			}
		Connection conn2=null;
		conn2 = dao.ConnectionDb.connectDb();
		Statement st2 = conn2.createStatement();
		
		ResultSet rs3 = st2.executeQuery( q.getQ3()+a);
		
		
		for(k=0;k<(a-1);k++){
			rs3.next();
			 q1 = rs3.getInt(1);
			 System.out.println();
			b[quest_no++]=q1;
			System.out.println(b[k]);
			}
		Connection conn3=null;
		conn3 = dao.ConnectionDb.connectDb();
		Statement st3 = conn3.createStatement();
		
		ResultSet rs4 = st3.executeQuery( q.getQ4()+t);
		
		System.out.println("4 checkpoint");
		for(k=0;k<t-1;k++){
			rs4.next();
			 q1 = rs4.getInt(1);
			b[quest_no++]=q1;
			System.out.println(b[k]);
			}
		Connection conn4=null;
		conn4 = dao.ConnectionDb.connectDb();
		Statement st4 = conn4.createStatement();
		
		ResultSet rs5 = st4.executeQuery( q.getQ5()+v);
		
		System.out.println("5 checkpoint");
		for(k=0;k<v-1;k++){
			rs5.next();
			 q1 = rs5.getInt(1);
			b[quest_no++]=q1;
			System.out.println(b[k]);
			}
		} catch (Exception e) {
			System.out.println("hihk");
			// TODO: handle exception
		}
		
		return (b);
	}
}

