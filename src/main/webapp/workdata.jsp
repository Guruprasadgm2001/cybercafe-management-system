<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.table {
  margin-left: auto;
  margin-right: auto;
}
</style>
<%@include file="includes/head.jsp" %>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-dark  text-white">
		<div class="container">
			<a class="navbar-brand text-white" href="index.jsp">CyberCafe</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link text-white" href="dashboard.jsp">BACK</a></li>
					
				</ul>

			</div>
		</div>
	</nav>
<br><br><br><br><br><br><br>
<%
try
{
	int i=1;
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cyber","root","root");
	String Query="call worker()";
	Statement stm=conn.prepareStatement(Query);
	ResultSet rs=stm.executeQuery(Query);
	int count=rs.getRow();
	%><table class="table" style="width:50%" >
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">WORKER_ID</th>
      <th scope="col">WORKER ROLE</th>
      <th scope="col">SALARY</th>
      <th scope="col">ADMIN_ID</th>
      
    </tr>
  </thead>
  <tbody><% 
	while( rs.next())
	{
		%>
		  <tr>
       <th scope="row"><% out.print(i); i++;%></th>
       <td><%out.print(rs.getInt("worker_id"));%></td>
        <td><%out.print(rs.getString("worker_role"));%></td>
          <td><%out.print(rs.getInt("salary"));%></td>
          <td><%out.print(rs.getInt("admin_id"));%></td>
          
        </tr>
		  <%
		
	}
}
catch(Exception ex)
{
	out.println("Exception:"+ex.getMessage());
	ex.printStackTrace();
}
%>
</tbody>
</table>

</body>
</html>