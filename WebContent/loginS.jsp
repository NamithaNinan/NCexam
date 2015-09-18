<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
response.setHeader("Cache-control","no-store"); //HTTP 1.1 
response.setHeader("Pragma","no-cache"); //HTTP1.0 
response.setDateHeader("Expire",0); //prevents caching at the proxy server 

String [] drive_name=(String [])request.getAttribute("drive_name");
%> 

<html>
<head><title> NetCracker Placement</title>
<style>
input{
font-family : verdana;
}
</style></head>
<link rel="stylesheet" type="text/css" href="main.css" />
<script type="text/javascript">

function validate()
{
	if(document.getElementById('name').value==""||document.getElementById('pwd').value==""||document.getElementById('drive')=="")
		{
		alert("field left empty !");
		return false;
		}
	else
		document.login.submit();
		
	}
</script>
<body> 
 
	<form name ="login" action="Login1" onsubmit="return validate()" align="center">
		<img src="images/Net-Cracker.jpg" alt="not available" /><br/>
		<table border=0 align="center">
		<!-- <tr><td><b align="center"><font face="verdana" size="2">Drive_name		</font></b></td><td><input type="text" name="drive" id="drive" style="font-style:arial"/></td></tr> -->
		<tr><td><b align="center"><font face="verdana" size="2">Drive Name 		</font></b></td><td><select name="drive" width ="20">
		<%
		for(int i=0;i<drive_name.length;i++)
		{ 
		
		out.println("<option value="+drive_name[i]+">"+drive_name[i]+"</option>");
		} %>
		</select>
		
		<tr><td><b align="center"><font face="verdana" size="2">Username 		</font></b></td><td><input type = "text" name="name" id="name"/></td></tr>	
		<tr><td><b align="center"><font face="verdana" size="2">Password 		</font></b></td><td><input type="password" name="pwd" id="pwd"/></td></tr>
		<tr></tr>
		<tr></tr>
		<tr><td><input type="submit" value="Submit" align="center"/></td></tr>
		</table>
		
		
		
	</form>
</body>
</html>