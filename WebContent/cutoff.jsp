<%@ page import="java.sql.*" %>

<html>
<head>
<title>View / Modify Questions</title>
<style>
input{
height:50px; 
width:200px; 
font-family:'Verdana';
}
</style>
</head>


<body bgcolor="white">
<h1 align="center" style="color:blue">Retrieve Results</h1>

   

<form action="Retrieve_Results">
<h2 align = "center"> <br><br>
	
	<b>Enter the cut off marks:</b> <br>
	<input type="text" name="cutoff" /> <br><br><br>
	<input type="submit" value="Retrieve Results" />
	<input type="hidden"  name="name1" value=${name} />
	
</h2>
</form>
</body>
</html>