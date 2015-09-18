<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script language="JavaScript">
function pop()
{
  alert("admin credentials updated ");
}
 
</script>
<body>
<form method="get" action="updateadminprocess.jsp">
<b>Admin name: </b><input type="text" name="user" value="<%= request.getParameter("user") %>" readonly /><br/><br/>
Password:<input type="text" name="pass" value="<%= request.getParameter("pass") %>"  /><br/><br/></b>
<input type="submit" value="Add Admin" onClick="pop()"/>

</body>
</html>