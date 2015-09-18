<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

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
       
        
        function customSubmit(someValue){  
        	 document.questionForm.minute.value = min;   
        	 document.questionForm.second.value = sec; 
        	 document.questionForm.submit();  
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
<body onload="examTimer()">

<h2 align="center" style="color: blue">NetCracker Online Test !</h2>
<div id="showtime" style="position:absolute;left:800px;top:20px"></div>



	
	<br />
	<div id="showtime" style="position:absolute;left:800px;top:20px"></div>
	
                
          <h3 align="center"> <font face="verdana" size="4">   <p> Click on ENDTEST to end the test</p>
                  <p>or click on the question number</p>
                  <p> to answer it </p>    </font>
                       

                    
           </h3>
              
              <br/>
              <br/>
              <br/>
              <br/>
              <br/>
              
			
			  
	
	



	







<h5 align="center" color="blue"><font face="verdana">Navigation Bar</font></h5>
 <form action="StartTest" name="navigateForm"  method="get">
  <input type="hidden" name="minute"/> 
                <input type="hidden" name="second"/>
                <input type="hidden" name="choice"/>
                <input type="hidden" name="first" />
	
	    <ul class="lsidebar" align="center">

		<li><input type='button' class='button-css' value=' Q1 ' onclick="nav('one')"/></li>
		<li><input type='button' class='button-css' value=' Q2 'onclick="nav('two')"/></li>
		<li><input type='button' class='button-css' value=' Q3 'onclick="nav('three')"/></li>
		<li><input type='button' class='button-css' value=' Q4 'onclick="nav('four')"/></li>
		<li><input type='button' class='button-css' value=' Q5 'onclick="nav('five')"/></li>
		<li><input type='button' class='button-css' value=' Q6 'onclick="nav('six')"/></li>
		<li><input type='button' class='button-css' value=' Q7 'onclick="nav('seven')"/></li>
		<li><input type='button' class='button-css' value=' Q8 'onclick="nav('eight')"/></li>
		<li><input type='button' class='button-css' value=' Q9 'onclick="nav('nine')"/></li>
		<li><input type='button' class='button-css' value=' Q10 'onclick="nav('ten')"/></li>
		<li><input type='button' class='button-css' value=' Q11 'onclick="nav('eleven')"/></li>
		<li><input type='button' class='button-css' value=' Q12 'onclick="nav('twelve')"/></li>
		<li><input type='button' class='button-css' value=' Q13 'onclick="nav('thirteen')"/></li>
		<li><input type='button' class='button-css' value=' Q14 'onclick="nav('fourteen')"/></li>
		<li><input type='button' class='button-css' value=' Q15 'onclick="nav('fifteen')"/></li>
		<li><input type='button' class='button-css' value=' Q16 'onclick="nav('sixteen')"/></li>
		<li><input type='button' class='button-css' value=' Q17 'onclick="nav('seventeen')"/></li>
		<li><input type='button' class='button-css' value=' Q18 'onclick="nav('eighteen')"/></li>
		<li><input type='button' class='button-css' value=' Q19 'onclick="nav('nineteen')"/></li>
		<li><input type='button' class='button-css' value=' Q20 'onclick="nav('twenty')"/></li>
		<li><input type='button' class='button-css' value=' Q21 'onclick="nav('twentyone')"/></li>
		<li><input type='button' class='button-css' value=' Q22 'onclick="nav('twentytwo')"/></li>
		<li><input type='button' class='button-css' value=' Q23 'onclick="nav('twentythree')"/></li>
		<li><input type='button' class='button-css' value=' Q24 'onclick="nav('twentyfour')"/></li>
		<li><input type='button' class='button-css' value=' Q25 'onclick="nav('twentyfive')"/></li>
	
	           
	</form>
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<form action=StartTest method="post">
		<pre><input type="hidden" name="option" value="EndTest"> <input type="submit" name="End Test" value="EndTest"></pre>
		<h5><font face="verdana">Once you click you can't resume</font></h5>
	</form>

</body>
</html>