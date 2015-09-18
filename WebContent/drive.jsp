<html>
<head>
<title>Create a new Drive</title>

<script language="Javascript">
function pop()
{
	if(status)
		alert("Drive created!");
	
	else
		alert("Fill all the details.");
	
}
</script>

</head>
<body>
<h1 style="color:blue" align="center">Drive Details</h1>

<form action="driveprocess.jsp">
<h2 align="center">
<table>
<tr>
<td><b> Drive Name: </b></td> 
<td> <input type="text" name="name" /> </td>
</tr>
<tr>
<td><b> Date (dd-mm-yyyy): </b> </td> 
<td> <input type="text" name="date" /> </td>
</tr>

<tr>
<td><b> Password: </b></td> 
<td> <input type="text" name="password" /> </td>
</tr>

<tr>
<td><b> Status of the Drive:</b></td>
<td> <input type="radio" name="status" value="0" > 0 (Inactive)
<input type="radio" name="status" value="1" > 1 (Active) <br></td>

<tr>
<td><b> Enter the number of questions in each category: </b></td>
</tr>

<tr>
<td><b> Technical: </b></td> 
<td> <input type="text" name="technical" /> </td>
</tr>

<tr>
<td><b> Logical: </b></td>
<td> <input type="text" name="logical" /> </td>
</tr>

<tr>
<td><b> Verbal: </b></td>
<td> <input type="text" name="verbal" /> </td>
</tr>

<tr>
<td><b> Aptitude: </b></td>
<td> <input type="text" name="aptitude" /> </td> 
</tr>

<tr>
<td> <br> <input type="submit" value="Create a Drive" onclick="pop();" /> </td>
</tr>

</table>
</h2>
</form>
</body>
</html>