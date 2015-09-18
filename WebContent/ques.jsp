<html>

<head>
<script>
function pop()
{
	if(status)
		alert("Question added.");
	else
		alert("Fill all the details.");
}
</script>
</head>

<body>
<h1 align="center" style="color:blue">Add Question</h1>
 
<form method="get" action="addprocess.jsp">

<b>Question : </b><textarea rows=8 cols=50 name="ques"> </textarea> <br/> <br/>
 
<b>Category : </b>
<input type="radio" name="cat" value="technical"> Technical
<input type="radio" name="cat" value="logical"> Logical
<input type="radio" name="cat" value="aptitude"> Aptitude
<input type="radio" name="cat" value="verbal"> Verbal <br> <br>

<b>Option A : </b><input type="text" name="a" /><br/><br/>
<b>Option B : </b><input type="text" name="b"/><br/><br/>
<b>Option C : </b><input type="text" name="c"/><br/><br/>
<b>Option D : </b><input type="text" name="d"/><br/><br/>
<b>Correct Answer : </b>
<input type="radio" name="ca" value="A">Option A
       <input type="radio" name="ca" value="B">Option B
       <input type="radio" name="ca" value="C">Option C
       <input type="radio" name="ca" value="D">Option D<br/><br/>

<b> Status:</b>
<input type="radio" name="status" value="0" > 0 (Inactive)
<input type="radio" name="status" value="1" > 1 (Active) <br><br>

<input type="submit" value="Add Question" onclick="pop();" />
</form>