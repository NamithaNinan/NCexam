<html>
<head>
<title>Delete Question</title>

<script language="JavaScript">
function pop()
{
	alert("Drive deleted");
	window.close();
}
</script>

</head>
<body bgcolor="lightblue">
<h1 align="center" style="color:blue" />

<form action="deletedrive1.java" method="get">
<br>
<h3 align="center">
<% String name = request.getParameter("name"); %>
<% System.out.println("deletedrive.jsp : name = "+name); %>

Drive Name: <input type="text" name="name" value="<%= name %>" readonly style="background:lightgrey;" /> <br/><br/>
<input type="hidden" name="name1" value="<%= name %>" />

<input type="submit" value="Delete Drive" onClick="pop()"/>
</h3>
</form>
