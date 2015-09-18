<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>


<script language="JavaScript">


 
function popupwin(user,pass)
{
 var myWindow = window.open("admindata.jsp?user="+user+"&pass="+pass, "", "width=400, height=300");
}
</script>
<body>

<%@ page import ="java.sql.*" %>
<%@page language="java"%>
<%Class.forName("oracle.jdbc.driver.OracleDriver"); %>
<%


Connection con=null;
       
Class.forName("oracle.jdbc.driver.OracleDriver");

 
  con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","placement","namitha");
  
   PreparedStatement st = con.prepareStatement("SELECT * FROM USER1");
   
    ResultSet rs;
    rs = st.executeQuery();
    
    
  // while(rs.next())
  // {
	//   out.println("hi hello");
 //  }
//out.println(rs.getString(2));

%>
 <TABLE cellpadding="15" border="1" style="background-color: blue" align="center">
            <TR>
                <TH><font face="verdana" size="2" color="white"> ADMIN</font></TH>
                <TH><font face="verdana" size="2" color="white"> PASSWORD</font></TH>
               
                
                <TH><font face="verdana" size="2" color="white"> Edit</font></TH>
                
            </TR>
            
            
     <TR>
              <%   while(rs.next())
                {%>
                <%
              
                String user= rs.getString(1);
                String pass= rs.getString(2);
              
                      
                %>
                
               <tr align = "center" style="background-color:white">
  <td > <%= user %> </td> 
  <td> <%= pass %> </td>
  
  
  <td>
   <input type="submit" value="Edit" style="width:50px" onclick="popupwin('<%=user%>','<%=pass%>')"; />
                 <% }%>
                 </tr>
           </TABLE>
   
        
</body>
</html>