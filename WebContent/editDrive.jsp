<html>
<head>
<title>Edit Question</title>

<script language="JavaScript">
function pop()
{
	alert("Drive updated!");
	window.close();
}
</script>

</head>
<body bgcolor="white">
<h1 align="center" style="color:blue" />

<form action="updateDrive">
<br>
<h3 align="center">

Drive Name: <input type="text" name="name" value= "<%= request.getParameter("name") %>" readonly style="background:lightgrey;" /> <br/><br/>
Password : <input style="width:200px; height:50px;" type="text" name="password" value="<%= request.getParameter("password")%>" />  <br> <br>
<!-- Status:  <input style="width:200px; height:50px;" type="text"  value="<%= request.getParameter("status")%>"  readonly style="background:lightgrey;"/>  <br> <br> -->
<b> Change Status:</b>
<input type="radio" name="status" value="0" > 0 (Inactive)
<input type="radio" name="status" value="1" > 1 (Active) <br><br>
<input type="submit" value="Update" onClick="pop()"/>
</h3>
</form>
