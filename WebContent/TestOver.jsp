<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><font face="verdana">test over</font></title>

<link rel="stylesheet" type="text/css" href="main.css" />
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
        	 document.questionForm.submit();  
        	 }  
        
        
        	 function nav(x){  
        	 document.navigateForm.minute.value = min;   
        	 document.navigateForm.second.value = sec; 
        	 document.navigateForm.choice.value = x;
        	 document.navigateForm.first.value="START";
        	 document.navigateForm.submit();  
        	 }  
			
        function examTimer() {
            if (parseInt(sec) >0) {
			     if(parseInt(sec)>=10){
			    document.getElementById("showtime").innerHTML = "Time Remaining :"+min+":" + sec;
                sec = parseInt(sec) - 1;                
                tim = setTimeout("examTimer()", 1000);
			     }
			     else if(parseInt(sec)<10)
			    	 {
			    	 document.getElementById("showtime").innerHTML = "Time Remaining :"+min+":" +"0" +sec;
		                sec = parseInt(sec) - 1;                
		                tim = setTimeout("examTimer()", 1000);
			    	 
			    	 }
			    	 
            }
            else {
			
			    if (parseInt(min)==0 && parseInt(sec)==0){
			    	document.getElementById("showtime").innerHTML = "Time Remaining :"+min+" :" + sec;
				     alert("Time Up");
				     document.questionForm.minute.value=00;
				     document.questionForm.second.value=00;
				     document.questionForm.submit();
					 
			     }
				 
                if (parseInt(sec) == 0) {				
				    document.getElementById("showtime").innerHTML = "Time Remaining :"+min+":" + sec;					
                    min = parseInt(min) - 1;
					sec=59;
                    tim = setTimeout("examTimer()", 1000);
                }
               
            }
        }
    </script>
    </head>
<body onload="examTimer()" >

<h2 align="left" style="color: blue" ><font face="verdana" size="6">NetCracker Online Test !</font></h2>
<div id="showtime" style="position:absolute;left:800px;top:20px"></div>



	
	
	<div id="showtime" style="position:absolute;left:800px;top:20px"></div>
	
               <form action="StartTest" name="navigateForm"  method="get">
 <input type="hidden" name="minute"/> 
                <input type="hidden" name="second"/>
                <input type="hidden" name="choice"/>
                <input type="hidden" name="first" />
	<!--  <ul class="lsidebar" align="center"> -->
	<pre>

		<input type='button' class='button-css' value=' Q1 ' onclick="nav('one')"/><input type="text" value=${ANS1} readonly/>		<input type='button' class='button-css' value=' Q14 'onclick="nav('fourteen')"/><input type="text" value=${ANS14} readonly/><br/>
		<input type='button' class='button-css' value=' Q2 'onclick="nav('two')"/><input type="text" value=${ANS2} readonly/>		<input type='button' class='button-css' value=' Q15 'onclick="nav('fifteen')"/><input type="text" value=${ANS15} readonly/><br/>
		<input type='button' class='button-css' value=' Q3 'onclick="nav('three')"/><input type="text" value=${ANS3} readonly/>		<input type='button' class='button-css' value=' Q16 'onclick="nav('sixteen')"/><input type="text" value=${ANS16} readonly/><br/>
		<input type='button' class='button-css' value=' Q4 'onclick="nav('four')"/><input type="text" value=${ANS4} readonly/>		<input type='button' class='button-css' value=' Q17 'onclick="nav('seventeen')"/><input type="text" value=${ANS17} readonly/><br/>
		<input type='button' class='button-css' value=' Q5 'onclick="nav('five')"/><input type="text" value=${ANS5} readonly/>		<input type='button' class='button-css' value=' Q18 'onclick="nav('eighteen')"/><input type="text" value=${ANS18} readonly/><br/>
		<input type='button' class='button-css' value=' Q6 'onclick="nav('six')"/><input type="text" value=${ANS6} readonly/>		<input type='button' class='button-css' value=' Q19 'onclick="nav('nineteen')"/><input type="text" value=${ANS19} readonly/><br/>
		<input type='button' class='button-css' value=' Q7 'onclick="nav('seven')"/><input type="text" value=${ANS7} readonly/>		<input type='button' class='button-css' value=' Q20 'onclick="nav('twenty')"/><input type="text" value=${ANS20} readonly/><br/>
		<input type='button' class='button-css' value=' Q8 'onclick="nav('eight')"/><input type="text" value=${ANS8} readonly/>		<input type='button' class='button-css' value=' Q21 'onclick="nav('twentyone')"/><input type="text" value=${ANS21} readonly/><br/>
		<input type='button' class='button-css' value=' Q9 'onclick="nav('nine')"/><input type="text" value=${ANS9} readonly/>		<input type='button' class='button-css' value=' Q22 'onclick="nav('twentytwo')"/><input type="text" value=${ANS22} readonly/><br/>
		<input type='button' class='button-css' value=' Q10 'onclick="nav('ten')"/><input type="text" value=${ANS10} readonly/>	<input type='button' class='button-css' value=' Q23 'onclick="nav('twentythree')"/><input type="text" value=${ANS23} readonly/><br/>
		<input type='button' class='button-css' value=' Q11 'onclick="nav('eleven')"/><input type="text" value=${ANS11} readonly/>	<input type='button' class='button-css' value=' Q24 'onclick="nav('twentyfour')"/><input type="text" value=${ANS24} readonly/><br/>
		<input type='button' class='button-css' value=' Q12 'onclick="nav('twelve')"/><input type="text" value=${ANS12} readonly/>	<input type='button' class='button-css' value=' Q25 'onclick="nav('twentyfive')"/><input type="text" value=${ANS25} readonly/><br/>
		<input type='button' class='button-css' value=' Q13 'onclick="nav('thirteen')"/><input type="text" value=${ANS13} readonly/>
		           </pre>
	</form>
	<br />
	
	<form action=StartTest method="post" onsubmit="return sure()">
		<pre><input type="hidden" name="option" value="EndTest"> <input type="submit" name="End Test" value="EndTest"></pre>
		<h5><font face="verdana">Once you click you can't resume</font></h5>
	</form>

</body>
</html>