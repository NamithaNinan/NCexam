<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body> 
<%@page import="placement.ViewDao1"%>  
<jsp:useBean id="obj" class="placement.ViewBean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
   
<%  
boolean status=ViewDao1.view(obj);  
if(status){  
 out.print("hello yar");
//session.setAttribute("session","TRUE");  
//String site = new String("admin_options.jsp");
//response.setStatus(response.SC_MOVED_TEMPORARILY);
//response.setHeader("Location", site);
}  
else  
{  
out.print("Sorry bro");  
%>  
 
<%  
}  
%>  

</body>
</html>