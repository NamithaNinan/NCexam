<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
input{
font-family:"verdana";
}
</style>
</head>
<link rel="stylesheet" type="text/css" href="main.css" />
<body>

<h1 align="center"><font face="verdana" size="8">  GET SET GO</font></h1>
<form action="StartTest" method='get'>
<p align="center"><font face="verdana">
Kindly do not move back from current window for doing so will invalidate the session !
</font>

<input type="hidden" name="drive_name" value=${drive_name} /><br><br>
<h6 align="center"><input type="submit" name="first" value="START"/></h6>
</form>

</body>
</html>