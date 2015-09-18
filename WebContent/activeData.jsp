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
  alert("question added ");
}

</script>

<body>
<form action="activeprocess.jsp">
Qid: <input type="text" name="qid" value="<%= request.getParameter("qid") %>" readonly /> <br/><br/>
Question : <br> <input style="width:500px; height:100px;" type="text" name="ques" value="<%= request.getParameter("ques")%>" readonly />  <br> <br>
<input type="submit" value="ADD Question" onClick="pop()"/>
</form>
</body>
</html>