<html>
<head><title>Administrator Page</title>
<style>
input{
height:70px;
width:300px; 
font-size:20px;
margin:20px;
font-family:Verdana;
}
</style>
</head>
<body>
	<h1 style="color:blue" align="center">Welcome Admin!</h1>
	<form>
	<h3 align="center">
		<br><br><br><input type="button" value="Add Question" onclick="location.href('ques.jsp');" /> 
		<input type="button" value="View / Modify Questions" onclick="location.href('view_modify.jsp');" /><br/><br/>
		<input type="button" value="View Results" onclick="location.href('view_drives.jsp');" />
		<input type="button" value="Admin Details" onclick="location.href('admindetails.jsp');"/><br/><br/>
		<input type="button" value="Create New Drive" onclick="location.href('drive.jsp');" />
		<input type="button" value="View / Modify Drives" onclick="location.href('modify_drives.jsp');" />
	</h3>
	</form>
</body>
</html>