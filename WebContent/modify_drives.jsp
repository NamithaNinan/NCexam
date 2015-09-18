<%@page import="java.sql.*" %>

<%
String name, date, password;
int status, technical, aptitude, logical, verbal, total;

Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;
%>
<head></head><style>
.input{
font-family:verdana;
}
</style></head>
<script language="JavaScript">
function popupwin(name,password,status)
{
	var myWindow = window.open("editDrive1.jsp?name="+name+"&password="+password+"&status="+status, "", "width=600, height=400");
}
function popupwind(name)
{
	window.open("deletedrive.jsp?name="+name, "", "width=600, height=400");
	alert("Are you sure you want to delete the drive?");
}

</script>

<body bgcolor="lightgrey">
<table align="center" border="2" style="font-size:18px";>

<tr bgcolor="blue" style=color:"white">
<td><b><font face="verdana" size="2"> Drive Name </font></b></td>
<td><b><font face="verdana" size="2"> Drive Date </font></b></td>
<td><b><font face="verdana" size="2"> Password </font></b></td>
<td><b><font face="verdana" size="2"> Status (0 : Inactive, 1 : Active) </font></b></td>
<td><b><font face="verdana" size="2"> Technical </font></b></td>
<td><b><font face="verdana" size="2"> Aptitude </font></b></td>
<td><b><font face="verdana" size="2"> Logical </font></b></td>
<td><b><font face="verdana" size="2"> Verbal </font></b></td>
<td><b><font face="verdana" size="2"> Total </font></b></td>
</tr>
</font>
<%
try{ 
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","placement","namitha");
	ps=con.prepareStatement("select * from drives");

	rs=ps.executeQuery();  
	while(rs.next()){
		name = rs.getString(1);
		date = rs.getString(2);
		password = rs.getString(9);
		status = rs.getInt(3);
		technical = rs.getInt(4);
		aptitude = rs.getInt(5);
		logical = rs.getInt(7);
		verbal = rs.getInt(6);
		total = rs.getInt(8);
%>		

<tr align = "center" style="background-color:white">
		<td> <font face="verdana" size="2"><%= name %> </font></td> 
		<td> <font face="verdana" size="2"><%= date %> </font></td>
		<td> <font face="verdana" size="2"><%= password %> </font></td>
		<td> <font face="verdana" size="2"><%= status %>  </font></td>
		<td> <font face="verdana" size="2"><%= technical %>  </font></td>
		<td> <font face="verdana" size="2"><%= aptitude %>  </font></td>
		<td> <font face="verdana" size="2"><%= logical %>  </font></td>
		<td> <font face="verdana" size="2"><%= verbal %>  </font></td>
	    <td> <font face="verdana" size="2"><%= total %>  </font></td>
		<td>
			<input type="submit" value="Edit" onclick="popupwin('<%=name%>','<%=password%>','<%= status %>')"; />
		</td>
		<td><input type="submit" value="Delete" onclick="popupwind('<%=name%>')";/></td></font>
		</tr>			
<%
	}
	
}catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
