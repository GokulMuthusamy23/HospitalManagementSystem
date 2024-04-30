<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String date=request.getParameter("date");
String name=request.getParameter("name");
String phone = request.getParameter("phone");
String address = request.getParameter("address");
String problem = request.getParameter("message");

try {
	Connection con=ConnectionProvider.getcon();
	PreparedStatement ps=con.prepareStatement("insert into patient values(?,?,?,?,?,?)");
	ps.setString(1, id);
	ps.setString(2, date);
	ps.setString(3, name);
	ps.setString(4, phone);
	ps.setString(5, address);
	ps.setString(6, problem);
	ps.executeUpdate();
	response.sendRedirect("addPatient.jsp");
}
catch(Exception e) {
	out.println(e);
}



%>