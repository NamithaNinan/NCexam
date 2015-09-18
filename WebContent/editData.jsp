<html>
<head>
<title>Edit Question</title></head>
<body bgcolor="lightblue">
<h1 align="center" style="color:blue">Edit Question</h1>
<script language="JavaScript">
function pop()
{
  alert("Question updated.");
  window.close();
}
 
</script>
<form action="updateprocess.jsp">
<br>
<h3 align="center">

Qid: <input type="text" name="qid" value="<%= request.getParameter("qid")%>"  style=background-color:grey; readonly /> <br/><br/>
Question : <br> <input style="width:500px; height:100px;" type="text" name="ques" value="<%= request.getParameter("ques")%>" />  <br> <br>

Category : <input type="text" value="<%= request.getParameter("cat")%>" readonly> 
Change category?
    <select name = "cat" >
 <option value = "technical"> Technical </option>
 <option value = "logical"> Logical </option>
 <option value = "aptitude"> Aptitude </option>
 <option value = "verbal"> Verbal </option>
</select> <br> <br>

Option A : <input type="text" name="a" value="<%= request.getParameter("a") %>" /><br/><br/>
Option B : <input type="text" name="b" value="<%= request.getParameter("b") %>"/><br/><br/>
Option C : <input type="text" name="c" value="<%= request.getParameter("c") %>"/><br/><br/>
Option D : <input type="text" name="d" value="<%= request.getParameter("d") %>"/><br/><br/>
Correct Answer Option : <input type="text"  value="<%= request.getParameter("ca")%>" readonly /><br/><br/>
Change correct answer option?
 <select name = "ca" >
 <option value = "A"> Option A</option>
 <option value = "B"> Option B </option>
 <option value = "C"> Option C </option>
 <option value = "D"> Option D </option>
</select> <br> <br>


Status: <input type="text" name="status" value="<%= request.getParameter("status") %>"/><br/><br/>
<input type="submit" value="Update Question" onClick="pop()"/>
</h3>
</form>