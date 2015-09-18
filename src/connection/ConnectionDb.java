package connection;

import java.sql.Connection;
import java.sql.DriverManager;

//import java.util.List;

public class ConnectionDb {

	public static Connection connectDb() {
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager
					.getConnection("jdbc:oracle:thin:@localhost:1521:XE",
							"Placement", "namitha");

		} catch (Exception e) {
			System.err.println("error in connectiondb");
		}
		return conn;

	}

}