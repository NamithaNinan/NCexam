<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Registration</title>
<style>
input{
font-family:verdana;
}
</style>
</head>
<link rel="stylesheet" type="text/css" href="main.css" />
<script type="text/javascript">
 function validate()
 {
	 var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	 var email = document.getElementById("email").value;
	 var n=/^\d{10}$/;
	 var num=document.getElementById("pnum").value;
	 var year= document.getElementById("year").value;
	 var year1=/^\d{4}$/;
	 
	 if(!expr.test(email))
		 {
		 alert("Invalid email address.");
		 return false;
		 }
  //if(!(register.fname.value||register.mname.value||register.lname.value||register.usn.value||register.cname.value||register.num.value||register.email.value||register.date.value||register.ten.value||register.twelfth.value||register.mark.value))
   if (document.getElementById('fname').value == ""||document.getElementById('cname').value == ""||document.getElementById('usn').value == ""||document.getElementById('pnum').value == ""||document.getElementById('email').value == ""||document.getElementById('year').value == ""||document.getElementById('ten').value == ""||document.getElementById('twelve').value == ""||document.getElementById('mark').value == "")
  {
   alert("empty field!");
   return false;
   
  }
  if(document.getElementById('usn').value != document.getElementById('usn2').value) 
	  {
	  alert("usn mismatch !");
	  return false;
	  }
	if(!n.test(num)) 
		{
		alert("invalid phone number !");
		return false;
		}
	if(!year1.test(year))
		{
		alert("invalid date of birth !");
		return false;
		}
  else 
	   
	   document.register1.submit();
 }
 
  
  
 
</script>

<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
</body>

<form name="register1" action="reg" method="post" onsubmit=" return validate()">
<table border=0 cellpadding=5 cellspacing=5>
<tr><td><font face="verdana" size="2">First Name </td><td nowrap><input type="text" name="fname" id="fname"/></td><td> Middle Name </td><td><input type="text" name="mname" id="mname"/></td></font></tr>
<tr><td><font face="verdana" size="2">Last Name </td><td><input type="text" name="lname" id="lname"/></font></td>
<tr><td><font face="verdana" size="2">USN  </font><span style="color:red">*</span> </td><td><input type="text" name="usn" id="usn" oncopy="return false" onpaste="return false"/></td><td><font face="verdana" size="2">USN  </font><span style="color:red">*(re-enter)</span> </td><td><input type="text" name="usn2" id="usn2" oncopy="return false" onpaste="return false"/></td></tr>
<tr><td><font face="verdana" size="2">College Name  </font><span style="color:red">*</span> </td><td><input type="text" name="cname" id="cname"/></td></tr>
<tr><td><font face="verdana" size="2">Phone Number  </font><span style="color:red">*</span> </td><td><input type="text" name="pnum" id="pnum"/></td></tr>
<tr><td><font face="verdana" size="2">Email id  </font><span style="color:red">*</span> </td><td><input type="text" name="email" id="email" /></td></tr>
<!-- <tr><td>Date of Birth : </td><td><input type="text" name="dob"/></td></tr> -->
<tr><td><font face="verdana" size="2">Date of Birth  </font><span style="color:red">*</span> </td><td><select name="date"><option value="01">01</option><option value="02">02</option><option value="03">03</option><option value="04">04</option><option value="05">05</option><option value="06">06</option><option value="07">07</option><option value="08">08</option><option value="09">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value ="29">29</option><option value="30">30</option><option value="31">31</option></select> / <select name="month"><option value="01">01</option><option value="02">02</option><option value="03">03</option><option value="04">04</option><option value="05">05</option><option value="06">06</option><option value="07">07</option><option value="08">08</option><option value="09">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option></select> / <input type="text" name="year" size=4 id="year" nowrap/></td></tr>
<tr><td><font face="verdana" size="2">Gender  </font></td><td><input type="radio" name="gender" value="male"/><font face="verdana" size="2">Male</font></input><input type="radio" name="gender" value="female"><font face="verdana" size="2">Female</input></td><td></td></font></tr>
<tr><td><font face="verdana" size="2">10th  </font><span style="color:red">*</span> </td><td><input type="text" name="ten" id="ten"/></td></tr>
<tr><td><font face="verdana" size="2">12th  </font><span style="color:red">*</span> </td><td><input type="text" name="twelfth" id="twelve"/></td></tr>
<tr><td><font face="verdana" size="2">BE aggregate  </font><span style="color:red">*</span> </td><td><input type="text" name="mark" id="mark"/></td></tr><br/><br/>
<tr><td><input type="hidden" name="drive_name" value=${drive_name} /></td></tr><tr></tr>
<tr><td><input type ="submit" value="Register" /><!-- onclick="return validate();"/></td></tr> -->
<div style="position: absolute; top: 100px; left: 55%; height: 300px; width: 50%"><img src="images/registration chsguru.gif"/><div>
</table></form>
</body>
</html>