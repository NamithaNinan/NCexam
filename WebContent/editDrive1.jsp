<html>
<head>
<title>Edit Question</title>

<script language="JavaScript">
function pop()
{
	alert("Drive updated.");
	window.close();
}
</script>

</head>
<body>
<h1 align="center" style="color:blue" />

<form action="updateDrive1">
<br>
<h3 align="center">

Drive Name: <input type="text" name="name" value="<%= request.getParameter("name") %>" readonly style="background:lightgrey;" /> <br/><br/>
Password : <input style="width:200px; height:50px;" type="text" name="password" value="<%= request.getParameter("password")%>" />  <br> <br>
Status of the Drive:
<input type="radio" name="status" value="0" > 0 (Inactive)
<input type="radio" name="status" value="1" > 1 (Active)

<input type="submit" value="Update" onClick="pop()"/>
</h3>
</form>