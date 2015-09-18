<%@page import="java.sql.*" %>

<body bgcolor="lightgrey">
<table align="center" cellpadding="10" cellspacing="5" border="2" style="font-size:18px";>

<tr bgcolor="blue" style=color:"white">
<td><b><font face="verdana" size="2">  Drive Name </b></td>
<td><b><font face="verdana" size="2">  Drive Date </b></td>
<td><b><font face="verdana" size="2">  Status (0 : Inactive, 1 : Active) </b></td>
<td><b><font face="verdana" size="2">  Technical </b></td>
<td><b><font face="verdana" size="2">  Aptitude </b></td>
<td><b><font face="verdana" size="2">  Logical </b></td>
<td><b><font face="verdana" size="2">  Verbal </b></td>
<td><b><font face="verdana" size="2">  Total </b></td>
</tr>

<%
String name, date;
int status, technical, aptitude, logical, verbal, total;
Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;

try{ 
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","placement","namitha");
	ps=con.prepareStatement("select * from drives");
	rs = ps.executeQuery();
	
	while(rs.next()){
	name = rs.getString(1);
	date = rs.getString(2);
	status = rs.getInt(3);
	technical = rs.getInt(4);
	aptitude = rs.getInt(5);
	logical = rs.getInt(6);
	verbal = rs.getInt(7);
	total = rs.getInt(8);
%>

<tr align = "center" style="background-color:white">
	<td ><font face="verdana" size="2">  <%= name %> </font></td> 
	<td><font face="verdana" size="2">  <%= date %> </font></td>
	<td><font face="verdana" size="2">  <%= status %>  </font></td>
	<td><font face="verdana" size="2">  <%= technical %>  </font></td>
	<td><font face="verdana" size="2">  <%= aptitude %>  </font></td>
	<td><font face="verdana" size="2">  <%= logical %>  </font></td>
	<td><font face="verdana" size="2">  <%= verbal %>  </font></td>
	    <td><font face="verdana" size="2">  <%= total %>  </font></td> 
	    <td><font face="verdana" size="2"> 
    <form action="results.jsp">
	<input type="submit" name="submit" value="Get Results"  />
	<input type="hidden" name="name" value=<%=name %> />
	</form>   
	</font></td>
	</tr>	
<%
}
	
}catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
