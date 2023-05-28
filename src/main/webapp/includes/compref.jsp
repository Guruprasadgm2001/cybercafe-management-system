<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage Computers</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="responsive.css">
<style scoped>
.no-underline a {text-decoration: none;}
</style>
<script>
function action(){
  let menuicn = document.querySelector(".menuicn");
  let nav = document.querySelector(".navcontainer");
 
  menuicn.addEventListener("click",()=>
  {
      nav.classList.toggle("navclose");
  })
}
</script>
</head>
<body>
   <header>
        <div class="logosec">
            <div class="logo">CyberCafe</div>
              <img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210182541/Untitled-design-(30).png"
                class="icn menuicn"
                id="menuicn"
                alt="menu-icon" onclick=action()>
        </div>



		<div class="dp">
			<img
				src="https://media.geeksforgeeks.org/wp-content/uploads/20221210180014/profile-removebg-preview.png"
				class="dpicn" alt="dp">
		</div>
	</header>

	<div class="main-container">
		<div class="navcontainer">
			<nav class="nav">
				<div class="nav-upper-options">
					<div class="option2 nav-option">
		<a href="dashboard.jsp" style="text-decoration:none;color:inherit;">	<img src="https://cdn-icons-png.flaticon.com/128/4263/4263759.png"
							class="nav-img" alt="dashboard"></a> <div class="no-underline"><a href="dashboard.jsp"><h3>
								Dashboard</h3></a></div>
					</div>

					<div class="option2 nav-option">
	<a href="customer.jsp" style="text-decoration:none;color:inherit;">	<img src="https://cdn-icons-png.flaticon.com/128/3226/3226273.png"
							class="nav-img" alt="articles"></a> <div class="no-underline"><a href="customer.jsp">
							<h3>Customers</h3>
						</a></div>
					</div>

					<div class="nav-option option3">
		<a href="computer.jsp" style="text-decoration:none;color:inherit;"><img src="https://cdn-icons-png.flaticon.com/128/486/486813.png"
							class="nav-img" alt="report"></a> <div class="no-underline"><a href="computer.jsp">
							<h3>Computers</h3>
						</a></div>
					</div>

					<div class="nav-option option4">
		<a href="worker.jsp" style="text-decoration:none;color:inherit;"><img src="https://cdn-icons-png.flaticon.com/128/1839/1839274.png"
							class="nav-img" alt="institution"></a> <div class="no-underline"><a href="worker.jsp">
							<h3>Workers</h3>
						</a></div>
					</div>

			</div>
			</nav>
		</div>
		<div class="main">
          <div class="report-container">
                <div class="report-header">
                    <h1 class="recent-Articles">Computers Registered</h1>
                   <a href="compdata.jsp"> <button class="view">View All</button></a>
                    <a href="addcomp.jsp"><button class="add">ADD</button></a>
                    <a href="delcomp.jsp"><button class="add">DELETE</button></a>
                    <a href="updatecomp.jsp"><button class="add">UPDATE</button></a>
                    
                    
                </div>
 
                <div class="report-body">
                    <div class="report-topic-heading">
                      
                        <h3 class="t-op">COMPUTER_ID</h3>
                        <h3 class="t-op">COMPUTER_NAME</h3>
                        <h3 class="t-op">USER_ID</h3>
                   
                    </div>
                     <div class="items">
           
                          <%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cyber","root","root");
	String Query="select * from computer";
	Statement stm=conn.prepareStatement(Query);
	ResultSet rs=stm.executeQuery(Query);
	while( rs.next())
	{
		%>                 <div class="item1">
                           <h2 class="t-op-nextlvl"><%out.print(rs.getInt("c_id"));%></h2>
                            <h3 class="t-op-nextlvl"><%out.print(rs.getString("c_name"));%></h3>
                            <h3 class="t-op-nextlvl"><%out.print(rs.getInt("user_id"));%></h3>
                            </div>
                             
		  <%
		
	}
}
catch(Exception ex)
{
	out.println("Exception:"+ex.getMessage());
	ex.printStackTrace();
}
%>
                           </div>
				
		</div>
	</div>

	<script>
    <script>
    action(){
    let menuicn = document.querySelector(".menuicn");
    let nav = document.querySelector(".navcontainer");

    menuicn.addEventListener("click",()=>
    {
    	nav.classList.toggle("navclose");
    })
    }
    </script>
</body>
</html>