package dao;

public class Query {
	
	
private	String q1="Select * from question where qid=";
private String q2 = "select qid from( SELECT * FROM question ORDER BY dbms_random.value )where category='logical' and rownum <";
private String q3 = "select qid from( SELECT * FROM question ORDER BY dbms_random.value )where category='aptitude' and rownum <";
private String q4 = "select qid from( SELECT * FROM question ORDER BY dbms_random.value )where category='technical' and rownum <";
private String q5 = "select qid from( SELECT * FROM question ORDER BY dbms_random.value )where category='verbal'  and rownum <";
private String q6 =  "select  * from drives where drive_name=";

public String getQ3() {
	return q3;
}

public void setQ3(String q3) {
	this.q3 = q3;
}

public String getQ6() {
	return q6;
}

public void setQ6(String q6) {
	this.q6 = q6;
}

public void setQ2(String q2) {
	this.q2 = q2;
}

public String getQ4() {
	return q4;
}

public void setQ4(String q4) {
	this.q4 = q4;
}

public String getQ5() {
	return q5;
}

public void setQ5(String q5) {
	this.q5 = q5;
}



public String getQ1() {
	return q1;
}

public void setQ1(String q1) {
	this.q1 = q1;
}



public String getQ2() {
	// TODO Auto-generated method stub
	return q2;
}


}
