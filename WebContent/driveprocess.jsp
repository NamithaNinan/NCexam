<%@page import="placement.DriveDao"%>
<jsp:useBean id="obj" class="placement.DriveBean"/>  
  
<jsp:setProperty property="*" name="obj"/>

<%
	boolean status = DriveDao.create(obj);
	if (status) {
		response.sendRedirect("admin_options.jsp");
	} 
	else {
		response.sendRedirect("drive.jsp");
	}
%>