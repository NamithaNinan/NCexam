<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%  //String cat = request.getParameter("cat");
%>
<script language="JavaScript">



function popupwin(qid,ques,a,b,c,d,ca,cat,status)
{
 var myWindow = window.open("editData.jsp?qid="+qid+"&ques="+ques+"&a="+a+"&b="+b+"&c="+c+"&d="+d+"&ca="+ca+"&cat="+cat+"&status="+status, "", "width=800, height=600");
}
function popupdelete(qid,ques)
{
	var myWindow = window.open("deleteData1.jsp?qid="+qid+"&ques="+ques,"", "width=600, height=400");
	
}
function popupactive(qid,ques)
{
	var myWindow = window.open("activeData.jsp?qid="+qid+"&ques="+ques,"", "width=600, height=400");
	
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
  
   PreparedStatement st = con.prepareStatement("SELECT * FROM QUESTION");
   
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
                <TH><font face="verdana" size="2" color="white">QID</font></TH>
                <TH><font face="verdana" size="2" color="white">QUESTION</TH>
                <TH><font face="verdana" size="2" color="white">OPTION A</TH>
                <TH><font face="verdana" size="2" color="white">OPTION B</TH>
                <TH><font face="verdana" size="2" color="white">OPTION C</TH>
                <TH><font face="verdana" size="2" color="white">OPTION D</TH>
                <TH><font face="verdana" size="2" color="white">CORRECT ANSWER</TH>
                <TH><font face="verdana" size="2" color="white">CATEGORY</TH>
                <TH><font face="verdana" size="2" color="white">STATUS</TH>
                
                <TH><font face="verdana" size="2" color="white">EDIT</TH>
               <TH><font face="verdana" size="2" color="white">INACTIVE</TH> 
               <TH><font face="verdana" size="2" color="white">ACTIVE</TH>
               
            </TR>
            
            
     <TR>
              <%   while(rs.next())
                {%>
                <%
               int qid = rs.getInt(1);
                String ques= rs.getString(2);
                String a= rs.getString(3);
                String b = rs.getString(4);
                String c= rs.getString(5);
                String d= rs.getString(6);
                String ca= rs.getString(7);
                String cat=rs.getString(8);
                int status=rs.getInt(9);
                      
                %>
                
               <tr align = "center" style="background-color:white">
  <td ><font face="verdana" size="2"> <%= qid %> </td> 
  <td><font face="verdana" size="2"> <%= ques %> </td>
  
  <td><font face="verdana" size="2"> <%= a %>  </td>
  <td><font face="verdana" size="2"> <%= b %>  </td>
  <td><font face="verdana" size="2"> <%= c %>  </td>
  <td><font face="verdana" size="2"> <%= d %>  </td>
     <td><font face="verdana" size="2"> <%= ca %>  </td> 
     <td><font face="verdana" size="2"> <%= cat %>  </td>
     <td><font face="verdana" size="2"><%=status %></td>
  <td>
   <font face="verdana" size="2"><input type="submit" value="Edit" style="width:50px" onclick="popupwin('<%=qid%>','<%=ques%>','<%=a%>','<%=b%>','<%=c%>','<%=d%>','<%=ca%>','<%=cat%>','<%=status %>')"; /></td>
   <td>  <input type="submit" value="Inactive" style="width:50px" onclick="popupdelete('<%=qid %>','<%=ques%>')"; /> </td>          
               <td>  <input type="submit" value="Active" style="width:50px" onclick="popupactive('<%=qid %>','<%=ques%>')"; /> </td></font> 
                 <% }%>
                 </tr>
           </TABLE>
   
        
</body>
</html>