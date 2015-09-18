package connection;

public class LoginQuery {
	
	
	public LoginQuery() {
		System.out.println("entered query.java");
	}

	private String q1="select password from drives where drive_name=";
	
	public String getQ1() {
		return q1;
	}

	public void setQ1(String q1) {
		this.q1 = q1;
	}

}
