<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
try {
	Connection con = ConnectionProvider.getcon();
	Statement st = con.createStatement();
	st.executeUpdate("delete from patient where id='"+id+"'");
	response.sendRedirect("allPatient.jsp");
}catch(Exception e) {

out.println(e);
}



%>