<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email = request.getParameter("email");
		String password = request.getParameter("password");
		if("docter@gmail.com".equals(email) && "111".equals(password)) {
			response.sendRedirect("docHome.jsp");
		}
		else {
			int z=0;
			try {
				Connection con = ConnectionProvider.getcon();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from recep where email='"+email+"' and password='"+password+"'");
				while(rs.next()) {
					z=1;
					session.setAttribute("email", email);
					response.sendRedirect("home.jsp");
				}
				
			}
			catch(Exception e) {
				out.println(e);
			}
			
		}
		%>