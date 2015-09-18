<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
  
<form action="try1.jsp">
<h1 align="center" style="color:blue ">
     <!--     select a category:<br>
       <select name="cat">
       <option value="tech"> technical </option>
       <option value="logi"> logical </option>
       <option value="apti"> aptitude </option>
       <option value="verb"> verbal </option>
       
       </select> --> 
       <br/>
       <br/>
       <h2>Select category of question to view:
       <input type="radio" name="cat" value="technical">Technical
       <input type="radio" name="cat" value="logical">Logical
       <input type="radio" name="cat" value="aptitude">Aptitude
       <input type="radio" name="cat" value="verbal">Verbal
       </h2>
       
       <input type="submit" value="SUBMIT" style="height:40px; width:100px; font-family:'Arial' "/><br/><br/>
       
       </h1>
       </form>
       <form action="viewall.jsp">
<h2 align="center"><input type="submit" value="VIEW ALL QUESTIONS"  style="height:50px; width:200px; font-family:'Arial'"/><br/><br/>
</h2>
</form>
</body>
</html>