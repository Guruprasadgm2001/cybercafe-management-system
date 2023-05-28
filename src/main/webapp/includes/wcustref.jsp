<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	 <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage Customer</title>
 <link rel="stylesheet"
          href="style.css">
    <link rel="stylesheet"
          href="responsive.css">
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
              <img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210180014/profile-removebg-preview.png"
                    class="dpicn"
                    alt="dp">
              </div>
    </header>
 
    <div class="main-container">
		<div class="navcontainer">
			<nav class="nav">
				<div class="nav-upper-options">
					<div class="option2 nav-option">
						<img src="https://cdn-icons-png.flaticon.com/128/4263/4263759.png"
							class="nav-img" alt="dashboard"><div class="no-underline"> <a href="workerdashboard.jsp"><h3>
								Dashboard</h3></a></div>
					</div>

					<div class="option2 nav-option">
						<img src="https://cdn-icons-png.flaticon.com/128/3226/3226273.png"
							class="nav-img" alt="articles"> <div class="no-underline"><a href="wcustomer.jsp">
							<h3>Customers</h3>
						</a></div>
					</div>

					<div class="nav-option option3">
						<img src="https://cdn-icons-png.flaticon.com/128/486/486813.png"
							class="nav-img" alt="report"> <div class="no-underline"><a href="wcomputer.jsp">
							<h3>Computers</h3>
						</a></div>
					</div>

					
			</div>
			</nav>
		</div>
        
        <div class="main">
 
            
 
            <div class="report-container">
                <div class="report-header">
                    <h1 class="recent-Articles">Customers Registered</h1>
                    <button class="view">View All</button>
                    <a href="addcust.jsp"><button class="add">ADD</button></a>
                     <a href="delcust.jsp"><button class="add">DELETE</button></a>
                    <a href="updatecust.jsp"><button class="add">UPDATE</button></a>
                </div>
 
                <div class="report-body">
                    <div class="report-topic-heading">
                        <h3 class="t-op">ID</h3>
                        <h3 class="t-op">Name</h3>
                        <h3 class="t-op">Phone</h3>
                        <h3 class="t-op">Email</h3>
                              <h3 class="t-op">Worker-ID</h3>
                   
                    </div>
 
                    <div class="items">
                                          
                          <%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cyber","root","root");
	String Query="select * from users";
	Statement stm=conn.prepareStatement(Query);
	ResultSet rs=stm.executeQuery(Query);
	int count=rs.getRow();
	while( rs.next())
	{
		%>                 <div class="item1">
                           <h2 class="t-op-nextlvl"><%out.print(rs.getInt("user_id"));%></h2>
                            <h3 class="t-op-nextlvl"><%out.print(rs.getString("user_name"));%></h3>
                            <h3 class="t-op-nextlvl"><%out.print(rs.getString("user_phone"));%></h3>
                           <h3 class="t-op-nextlvl"><%out.print(rs.getString("user_email"));%></h3>
                          <h3 class="t-op-nextlvl"><%out.print(rs.getInt("worker_id"));%></h3>      
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