<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Registration</title>
</head>
<script type="text/javascript">
 function validate()
 {
	 var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	 var email = document.getElementById("email").value;
	 if(!expr.test(email))
		 {
		 alert("Invalid email address.");
		 return false;
		 }
  //if(!(register.fname.value||register.mname.value||register.lname.value||register.usn.value||register.cname.value||register.num.value||register.email.value||register.date.value||register.ten.value||register.twelfth.value||register.mark.value))
   if (document.getElementById('fname').value == ""||document.getElementById('mname').value == ""||document.getElementById('lname').value == ""||document.getElementById('cname').value == ""||document.getElementById('usn').value == ""||document.getElementById('pnum').value == ""||document.getElementById('email').value == ""||document.getElementById('year').value == ""||document.getElementById('ten').value == ""||document.getElementById('twelve').value == ""||document.getElementById('mark').value == "")
  {
   alert("empty field!");
   return false;
   
  }
   /*if(document.getElementById('email').value != (/^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/))
       {
    alert("incorrect email id entered !");
    return false;
       }*/

   else 
	   
	   document.questionForm.submit();
 }
 
  
  
 
</script>

<body background="C:\Users\Namitha\Desktop\NetCracker\bgd.jpg" onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
</body>
<h1 align="center" style="color:blue">REGISTRATION</h1>
<form name="register1" action="reg" method="post" onsubmit=" return validate()">
<table border=0 cellpadding=5 cellspacing=5>
<tr><td>First Name : </td><td><input type="text" name="fname" id="fname"/></td></tr>
<tr><td>Middle Name : </td><td><input type="text" name="mname" id="mname"/></td></tr>
<tr><td>Last Name : </td><td><input type="text" name="lname" id="lname"/></td></tr>
<tr><td>USN : </td><td><input type="text" name="usn" id="usn"/></td></tr>
<tr><td>College Name : </td><td><input type="text" name="cname" id="cname"/></td></tr>
<tr><td>Phone Number : </td><td><input type="text" name="pnum" id="pnum"/></td></tr>
<tr><td>Email id : </td><td><input type="text" name="email" id="email" /></td></tr>
<!-- <tr><td>Date of Birth : </td><td><input type="text" name="dob"/></td></tr> -->
<tr><td>Date of Birth : </td><td><select name="date"><option value="01">01</option><option value="02">02</option><option value="03">03</option><option value="04">04</option><option value="05">05</option><option value="06">06</option><option value="07">07</option><option value="08">08</option><option value="09">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value ="29">29</option><option value="30">30</option><option value="31">31</option></select> / <select name="month"><option value="01">01</option><option value="02">02</option><option value="03">03</option><option value="04">04</option><option value="05">05</option><option value="06">06</option><option value="07">07</option><option value="08">08</option><option value="09">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option></select> / <input type="text" name="year" size=4 id="year"/></td></tr>
<tr><td>Gender : </td><td><input type="radio" name="gender" value="male"/>Male</input></td><td><input type="radio" name="gender" value="female">Female</input></td></tr>
<tr><td>10th : </td><td><input type="text" name="ten" id="ten"/></td></tr>
<tr><td>12th : </td><td><input type="text" name="twelfth" id="twelve"/></td></tr>
<tr><td>BE aggregate : </td><td><input type="text" name="mark" id="mark"/></td></tr><br/><br/>
<tr><td><input type ="submit" value="Register" /><!-- onclick="return validate();"/></td></tr> -->
</table></form>
</body>
</html>