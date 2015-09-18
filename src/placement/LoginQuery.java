package placement;

public class LoginQuery {
	
	
	public LoginQuery() {
		System.out.println("entered query.java");
	}

	private String q1="select drive_name from drives where status=1";
	
	public String getQ1() {
		return q1;
	}

	public void setQ1(String q1) {
		this.q1 = q1;
	}

}
