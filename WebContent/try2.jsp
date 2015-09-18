<%@page import="java.sql.*" %>

<%
String cat = request.getParameter("cat");
int qid;
String ques,a,b,c,d,ca;

Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;
%>

<script language="JavaScript">
function popupwin(qid,ques,cat,a,b,c,d,ca)
{
 var myWindow = window.open("editData.jsp?qid="+qid+"&ques="+ques+"&cat="+cat+"&a="+a+"&b="+b+"&c="+c+"&d="+d+"&ca="+ca, "", "width=800, height=600");
}

</script>
<body bgcolor="lightgrey">
<table align="center" cellpadding="10" cellspacing="5" border="2" style="font-size:18px";>

<tr bgcolor="blue" style=color:"white">
<td><b> Qid </b></td>
<td><b> Question </b></td>

<td><b> Option A </b></td>
<td><b> Option B </b></td>
<td><b> Option C </b></td>
<td><b> Option D </b></td>
<td><b> Correct answer </b></td>
<td><b> Category </b></td>

</tr>

<%
try{ 
 Class.forName("oracle.jdbc.driver.OracleDriver");
 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","placement","namitha");
 ps=con.prepareStatement("select * from questions where category = ?");
 ps.setString(1,cat);

 rs=ps.executeQuery();  
 while(rs.next()){
  qid = rs.getInt(1);
  ques = rs.getString(2);
  
  a = rs.getString(3);
  b = rs.getString(4);
  c = rs.getString(5);
  d = rs.getString(6);
  ca = rs.getString(7);
  cat = rs.getString(8);
%>  
  <tr align = "center" style="background-color:lightblue">
  <td > <%= qid %> </td> 
  <td> <%= ques %> </td>
  
  <td> <%= a %>  </td>
  <td> <%= b %>  </td>
  <td> <%= c %>  </td>
  <td> <%= d %>  </td>
     <td> <%= ca %>  </td> 
     <td> <%= cat %>  </td>
  <td>
   <input type="submit" value="Edit" style="width:50px" onclick="popupwin('<%=qid%>','<%=ques%>','<%=cat%>','<%=a%>','<%=b%>','<%=c%>','<%=d%>','<%=ca%>')"; />
  </td>
  </tr>   
<%
 }
 
}catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>