<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="main.css" />
<link rel="stylesheet" type="text/css" href="radio.css" />
<style>
input{
font-family:verdana;
}
</style>
<script language ="javascript" >
        var tim;  
        var x;     
        var min = '${sessionScope.min}';
        var sec = '${sessionScope.sec}';
       
        function sure()
        {
        var n=confirm("are you sure you want to end the test ?");
        if(n==0)
        	{
        	return false;
        	}
        } 
        function customSubmit(someValue){  
        	 document.questionForm.minute.value = min;   
        	 document.questionForm.second.value = sec; 
        	 document.questionForm.Next.value = "next"; 
        	 document.questionForm.first.value = "START";
        	 document.questionForm.submit(); 
        	 document.getElementById("x").disabled = true;
        	 }  
        
        
        	 function nav(x){  
        	 document.navigateForm.minute.value = min;   
        	 document.navigateForm.second.value = sec; 
        	 document.navigateForm.choice.value = x;
        	 document.navigateForm.first.value = "START";
        	 document.navigateForm.submit();  
        	 }  
			
        function examTimer() {
           if (parseInt(sec) >0) {
			     if(parseInt(sec)>=10){
			    document.getElementById("showtime").innerHTML = "    Time Remaining :"+min+":" + sec;
                sec = parseInt(sec) - 1;                
                tim = setTimeout("examTimer()", 2000);
			     }
			     else if(parseInt(sec)<10)
			    	 {
			    	 document.getElementById("showtime").innerHTML = "    Time Remaining :"+min+":" +"0" +sec;
		                sec = parseInt(sec) - 1;                
		                tim = setTimeout("examTimer()", 2000);
			    	 
			    	 }
			    	 
            }
            else {
			
			    if (parseInt(min)==0 && parseInt(sec)==0){
			    	document.getElementById("showtime").innerHTML = "	Time Remaining :"+min+" :" + sec;
				   // document.navigateForm.choice.value = "twentysix";
				     document.over.option.value="EndTest";
				     document.over.EndTest.value="EndTest";
				     document.over.submit();
					 
			     }
				 
                if (parseInt(sec) == 0) {				
				    document.getElementById("showtime").innerHTML = "	Time Remaining :"+min+":" + "0" +sec;					
                    min = parseInt(min) - 1;
					sec=59;
                    tim = setTimeout("examTimer()", 2000);
                }
               
            }
        }
    </script>
</head>

<body  background="" class=background onload="examTimer()" class="background">
<img src="images/bgd.jpg" alt="not available"/>
<div id="showtime" style="position:absolute;left:800px;top:20px"></div>



	
	<br />
	<div id="showtime" style="position:absolute;left:800px;top:20px"></div>
	<form action="StartTest" method="get" name="questionForm">
	<br>
		<p align="center"><font face="verdana" size="4">
		<h3> Question Type : ${Category} </h3> </font>
		  
		<font face="verdana" size="2"><h4>Question ${SerialNo}<br /> <br /> ${Question}<br /> <br />
		
		
		  <br/>
		    <input type="text" style="background:lightgrey" name="Answer" value="${Answer}" readonly ><br/><br/>
		    A.<input type="radio" name="option" value="A"> ${Option1}<br />
			B.<input type="radio" name="option" value="B" > ${Option2}<br> 
			C.<input type="radio" name="option" value="C" > ${Option3}<br> 
			D.<input type="radio" name="option" value="D" > ${Option4}<br /> <br> 
			
			<input type="hidden" name="id" value=${Qid}>
	
			   <input type="submit"  id="x" name="next" value="submit" onclick="customSubmit()">
				<input type="hidden" name="minute"/> 
                <input type="hidden" name="second"/>
                <input type="hidden" name="Next"/>
                <input type="hidden" name="first"/>
               
            </h4>	   </p> 
			
			 	</form>
	
<h4 style="color:blue">Submit to record the answer</h4>
<form action="StartTest" name="navigateForm"  method="get">
	<ul class="lsidebar">

    	<li><input type='button' value=' Q1 ' onclick="nav('one')"/></li>
		<li><input type='button'  value='Q2 'onclick="nav('two')"/></li>
		<li><input type='button' value='Q3 'onclick="nav('three')"/></li>
		<li><input type='button' class='button-css' value='Q4 'onclick="nav('four')"/></li>
		<li><input type='button' class='button-css' value=' Q5 'onclick="nav('five')"/></li>
		<li><input type='button' value=' Q6 'onclick="nav('six')"/></li>
		<li><input type='button' value=' Q7 'onclick="nav('seven')"/></li>
		<li><input type='button' value='Q8 'onclick="nav('eight')"/></li>
		<li><input type='button' value=' Q9 'onclick="nav('nine')"/></li>
		<li><input type='button' value='Q10 'onclick="nav('ten')"/></li>
		<li><input type='button' value='Q11 'onclick="nav('eleven')"/></li>
		<li><input type='button' value='Q12 'onclick="nav('twelve')"/></li>
		<li><input type='button' value='Q13 'onclick="nav('thirteen')"/></li>
		<li><input type='button' value='Q14'onclick="nav('fourteen')"/></li>
		<li><input type='button' value='Q15'onclick="nav('fifteen')"/></li>
		<li><input type='button' value='Q16'onclick="nav('sixteen')"/></li>
		<li><input type='button' value='Q17'onclick="nav('seventeen')"/></li>
		<li><input type='button' value='Q18'onclick="nav('eighteen')"/></li>
		<li><input type='button' value='Q19'onclick="nav('nineteen')"/></li>
		<li><input type='button' value='Q20'onclick="nav('twenty')"/></li>
		<li><input type='button' value='Q21'onclick="nav('twentyone')"/></li>
		<li><input type='button' value='Q22'onclick="nav('twentytwo')"/></li>
		<li><input type='button' value='Q23 'onclick="nav('twentythree')"/></li>
		<li><input type='button' value='Q24 'onclick="nav('twentyfour')"/></li>
		<li><input type='button' value='Q25 'onclick="nav('twentyfive')"/></li>
	
	            <input type="hidden" name="minute"/> 
                <input type="hidden" name="second"/>
                <input type="hidden" name="choice"/>
                <input type="hidden" name="first"/>
	</form>
	<br />
		<form action=StartTest  name="over" method="post"  onsubmit="return sure()">
		<pre><input type="hidden" name="option" value="EndTest"> <input type="submit" name="EndTest" value="EndTest""></pre>
		<h5><font face="verdana" size="2">Once you click you can't resume</font></h5>
	</form>
	
	<footer>
<pre>                                 <h3 align="center"><font face="verdana" size="1">   © COPYRIGHT 2007-2015 NETCRACKER TECHNOLOGY CORP. ALL RIGHTS RESERVED </pre> </font></h3>
</footer>
	
	
</body>
</html>