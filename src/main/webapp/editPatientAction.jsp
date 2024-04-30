<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String phone=request.getParameter("phone");
String address=request.getParameter("address");
String problem=request.getParameter("message");
try {
	Connection con = ConnectionProvider.getcon();
	Statement st = con.createStatement();
	st.executeUpdate("update patient set name='"+name+"',mobilenumber='"+phone+"',address='"+address+"',problem='"+problem+"' where id='"+id+"'");
	response.sendRedirect("allPatient.jsp");
}catch(Exception e) {

out.println(e);
}



%>