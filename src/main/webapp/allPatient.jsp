<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patients Details</title>
  <link rel="stylesheet" href="stylesheet.css">
</head>
<body>
 <h3>All Patients</h3>
<table>
        <thead>
          <tr>
            <th >ID</th>
            <th >Name</th>
            <th >Mobile no</th>
            <th >Address</th>
            <th>Problem</th>
            <th>Date</th>
            <th>Edit <i class='fa fa-pen-fancy'></i></th>
            <th>Delete <i class='fa fa-pen-fancy'></i></th>
          </tr>
        </thead>
        <tbody>
       <%
       try{
    	   Connection con = ConnectionProvider.getcon();
    	   Statement st = con.createStatement();
    	   ResultSet rs = st.executeQuery("select*from patient");
    	   while(rs.next()){
       %>
          <tr>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(5)%></td>
            <td><%=rs.getString(6)%></td>
            <td><%=rs.getString(2)%></td>
            <td><a href="editPatient.jsp?id=<%=rs.getString(1)%>">Edit <i class='fa fa-pen-fancy'></i></a></td>
            <td><a href="deletePatient.jsp?id=<%=rs.getString(1)%>">Delete <i class='fa fa-pen-fancy'></i></a></td>
          </tr>
         <%}
       }
       catch(Exception e){
           
       }%>
        </tbody>
      </table>
      <a href="home.jsp" id="home">Home</a>
      <br>
      <br>
      <br>

</body>
</html>