<html>
<head>
<title> Results </title>
<style>
input{
height:70px;
width:300px; 
font-size:20px;
margin:20px;
font-family:Verdana;
}
</style>
</head>

<%
String name=request.getParameter("name");

%>
<body bgcolor="white">
	<h1 style="color:blue" align="center"> RESULTS </h1>
	<form action="Results_all" method="get">	
	<h3 align="center">
	
	
	<br><br><br>
	<%
	System.out.println("results : Drive name = "+name);
	%>
	
	<input name="submit1" type="submit" value="ViewAllResults" />
	<input name="submit1" type="submit" value="SetCutOffMarks"  />
	<input type="hidden" name="name" value=<%=name%> />
	</h3>
	</form>
	
</body>
</html>