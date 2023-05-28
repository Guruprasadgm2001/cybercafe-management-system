<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="responsive.css">
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
<style>
/* Main CSS Here */

@import url(
"https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap");

* {
margin: 0;
padding: 0;
box-sizing: border-box;
font-family: "Poppins", sans-serif;
}
:root {
--background-color1: #fafaff;
--background-color2: #ffffff;
--background-color3: #ededed;
--background-color4: #cad7fda4;
--primary-color: #4b49ac;
--secondary-color: #0c007d;
--Border-color: #3f0097;
--one-use-color: #3f0097;
--two-use-color: #5500cb;
}
body {
background-color: var(--background-color4);
max-width: 100%;
overflow-x: hidden;
}

header {
height: 70px;
width: 100vw;
padding: 0 30px;
background-color: var(--background-color1);
position: fixed;
z-index: 100;
box-shadow: 1px 1px 15px rgba(161, 182, 253, 0.825);
display: flex;
justify-content: space-between;
align-items: center;
}

.logo {
font-size: 27px;
font-weight: 600;
color: rgb(47, 141, 70);
}
.btn {
font-size: 27px;
font-weight: 600;
color: black;
}
.icn {
height: 30px;
}
.menuicn {
cursor: pointer;
}

.searchbar,
.message,
.logosec {
display: flex;
align-items: center;
justify-content: center;
}

.searchbar2 {
display: none;
}

.logosec {
gap: 60px;
}

.searchbar input {
width: 250px;
height: 42px;
border-radius: 50px 0 0 50px;
background-color: var(--background-color3);
padding: 0 20px;
font-size: 15px;
outline: none;
border: none;
}
.searchbtn {
width: 50px;
height: 42px;
display: flex;
align-items: center;
justify-content: center;
border-radius: 0px 50px 50px 0px;
background-color: var(--secondary-color);
cursor: pointer;
}

.message {
gap: 40px;
position: relative;
cursor: pointer;
}
.circle {
height: 7px;
width: 7px;
position: absolute;
background-color: #fa7bb4;
border-radius: 50%;
left: 19px;
top: 8px;
}
.dp {
height: 40px;
width: 40px;
background-color: #626262;
border-radius: 50%;
display: flex;
align-items: center;
justify-content: center;
overflow: hidden;
}
.main-container {
display: flex;
width: 100%;
position: relative;
top: 70px;
z-index: 1;
}
.dpicn {
height: 42px;
}

.main {
height: calc(100vh - 70px);
width: 100%;
overflow-y: hidden;
overflow-x: hidden;
padding: 40px 30px 30px 30px;
}

.main::-webkit-scrollbar-thumb {
background-image:
		linear-gradient(to bottom, rgb(0, 0, 85), rgb(0, 0, 50));
}
.main::-webkit-scrollbar {
width: 5px;
}
.main::-webkit-scrollbar-track {
background-color: #9e9e9eb2;
}

.box-container {
display: flex;
justify-content: space-evenly;
align-items: center;
flex-wrap: wrap;
gap: 50px;
}
.nav {
min-height: 91vh;
width: 250px;
background-color: var(--background-color2);
position: absolute;
top: 0px;
left: 00;
box-shadow: 1px 1px 10px rgba(198, 189, 248, 0.825);
display: flex;
flex-direction: column;
justify-content: space-between;
overflow: hidden;
padding: 30px 0 20px 10px;
}
.navcontainer {
height: calc(100vh - 70px);
width: 250px;
position: relative;
overflow-y: scroll;
overflow-x: hidden;
transition: all 0.5s ease-in-out;
}
.navcontainer::-webkit-scrollbar {
display: none;
}
.navclose {
width: 80px;
}
.nav-option {
width: 250px;
height: 60px;
display: flex;
align-items: center;
padding: 0 30px 0 20px;
gap: 20px;
transition: all 0.1s ease-in-out;
}
.nav-option:hover {
border-left: 5px solid #a2a2a2;
background-color: #dadada;
cursor: pointer;
}
.nav-img {
height: 30px;
}

.nav-upper-options {
display: flex;
flex-direction: column;
align-items: center;
gap: 30px;
}

.option1 {
border-left: 5px solid #010058af;
background-color: var(--Border-color);
color: white;
cursor: pointer;
}
.option1:hover {
border-left: 5px solid #010058af;
background-color: var(--Border-color);
}
.box {
height: 130px;
width: 230px;
border-radius: 20px;
box-shadow: 3px 3px 10px rgba(0, 30, 87, 0.751);
padding: 20px;
display: flex;
align-items: center;
justify-content: space-around;
cursor: pointer;
transition: transform 0.3s ease-in-out;
}
.box:hover {
transform: scale(1.08);
}

.box:nth-child(1) {
background-color: var(--one-use-color);
}
.box:nth-child(2) {
background-color: var(--two-use-color);
}
.box:nth-child(3) {
background-color: var(--one-use-color);
}
.box:nth-child(4) {
background-color: var(--two-use-color);
}

.box img {
height: 50px;
}
.box .text {
color: white;
}
.topic {
font-size: 13px;
font-weight: 400;
letter-spacing: 1px;
}

.topic-heading {
font-size: 30px;
letter-spacing: 3px;
}

.report-container {
min-height: 300px;
max-width: 1200px;
margin: 70px auto 0px auto;
background-color: #ffffff;
border-radius: 30px;
box-shadow: 3px 3px 10px rgb(188, 188, 188);
padding: 0px 20px 20px 20px;
}
.report-header {
height: 80px;
width: 100%;
display: flex;
align-items: center;
justify-content: space-between;
padding: 20px 20px 10px 20px;
border-bottom: 2px solid rgba(0, 20, 151, 0.59);
}

.recent-Articles {
font-size: 30px;
font-weight: 600;
color: #5500cb;
}

.view {
height: 35px;
width: 90px;
border-radius: 8px;
background-color: #5500cb;
color: white;
font-size: 15px;
border: none;
cursor: pointer;
}

.report-body {
max-width: 1160px;
overflow-x: auto;
padding: 20px;
}
.report-topic-heading,
.item1 {
width: 1120px;
display: flex;
justify-content: space-between;
align-items: center;
}
.t-op {
font-size: 18px;
letter-spacing: 0px;
}

.items {
width: 1120px;
margin-top: 15px;
}

.item1 {
margin-top: 20px;
}
.t-op-nextlvl {
font-size: 14px;
letter-spacing: 0px;
font-weight: 600;
}

.lavel-tag {
width: 100px;
text-align: center;
background-color: rgb(0, 177, 0);
color: white;
border-radius: 4px;
}

</style>
</head>
<style scoped>
.no-underline a {
	text-decoration: none;
}
</style>
<body>
	<header>
		<div class="logosec bg-dark text-white">
			<div class="logo">CyberCafe</div>
			<img
				src="https://media.geeksforgeeks.org/wp-content/uploads/20221210182541/Untitled-design-(30).png"
				class="icn menuicn" id="menuicn" alt="menu-icon" onclick=action()>
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
					<div class="option2 nav-option ">
						<img src="https://cdn-icons-png.flaticon.com/128/4263/4263759.png"
							class="nav-img" alt="dashboard">
						<h3>Dashboard</h3>
					</div>

					<div class="option2 nav-option">
	<a href="customer.jsp" style="text-decoration:none;color:inherit;">	<img src="https://cdn-icons-png.flaticon.com/128/3226/3226273.png"
							class="nav-img" alt="articles"></a>
						<div class="no-underline">
							<a href="customer.jsp"><h3>Customers</h3></a>
						</div>
					</div>

					<div class="nav-option option3">
	<a href="computer.jsp" style="text-decoration:none;color:inherit;"><img src="https://cdn-icons-png.flaticon.com/128/486/486813.png"
							class="nav-img" alt="report"></a>
						<div class="no-underline">
							<a href="computer.jsp"><h3>Computers</h3></a>
						</div>
					</div>

					<div class="nav-option option4">
<a href="worker.jsp" style="text-decoration:none;color:inherit;"><img src="https://cdn-icons-png.flaticon.com/128/1839/1839274.png"
							class="nav-img" alt="institution"></a>
						<div class="no-underline">
							<a href="worker.jsp">
								<h3>Workers</h3>
							</a>
						</div>
					</div>

					<div class="nav-option logout">
		<a href="index.jsp" style="text-decoration:none;color:inherit;"><img src="https://cdn-icons-png.flaticon.com/128/182/182448.png"
							class="nav-img" alt="logout"></a>
						<div class="no-underline">
							<a href="index.jsp">
								<h3>Logout</h3>
							</a>
						</div>
					</div>
					<div class="nav-option logout">
		<a href="aboutus.jsp" style="text-decoration:none;color:inherit;"><img src="https://cdn-icons-png.flaticon.com/128/9126/9126245.png"
							class="nav-img" alt="about"></a>
						<div class="no-underline">
							<a href="aboutus.jsp">
								<h3>About US</h3>
							</a>
						</div>
					</div>
				</div>
			</nav>
		</div>
		    <div class="main">
			<div class="box-container">
				<div class="box box1"><a href="compdata.jsp" style="text-decoration:none;color:inherit;">
					<div class="text">
						<h4 class="topic-heading">
							<%
							try {
								Class.forName("com.mysql.jdbc.Driver").newInstance();
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cyber", "root", "root");
								Statement st = con.createStatement();
								String strQuery = "SELECT COUNT(*) FROM computer";
								ResultSet rs = st.executeQuery(strQuery);

								String Countrow = "";
								while (rs.next()) {
									Countrow = rs.getString(1);
									out.println(Countrow);
								}
							} catch (Exception e) {
								e.printStackTrace();
							}
							%>
						</h4>
						<h2 class="topic">Computer</h2>
                     </a>
					</div>

					<img src="https://cdn-icons-png.flaticon.com/128/1006/1006363.png"
						alt="Views">
				</div>

				<div class="box box2"><a href="custdata.jsp" style="text-decoration:none;color:inherit;">
					<div class="text">
						<h3 class="topic-heading">
							<%
							try {
								Class.forName("com.mysql.jdbc.Driver").newInstance();
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cyber", "root", "root");
								Statement st = con.createStatement();
								String strQuery = "SELECT COUNT(*) FROM users";
								ResultSet rs = st.executeQuery(strQuery);

								String Countrow = "";
								while (rs.next()) {
									Countrow = rs.getString(1);
									out.println(Countrow);
								}
							} catch (Exception e) {
								e.printStackTrace();
							}
							%>
						</h3>
						<h2 class="topic">Customers</h2>
						</a>
					</div>

					<img src="https://cdn-icons-png.flaticon.com/128/2972/2972979.png"
						alt="likes">
				</div>

				<div class="box box3"><a href="workdata.jsp" style="text-decoration:none;color:inherit;">
					<div class="text">
						<h3 class="topic-heading">
							<%
							try {
								Class.forName("com.mysql.jdbc.Driver").newInstance();
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cyber", "root", "root");
								Statement st = con.createStatement();
								String strQuery = "SELECT COUNT(*) FROM workers";
								ResultSet rs = st.executeQuery(strQuery);

								String Countrow = "";
								while (rs.next()) {
									Countrow = rs.getString(1);
									out.println(Countrow);
								}
							} catch (Exception e) {
								e.printStackTrace();
							}
							%>
						</h3>
						<h2 class="topic">Workers</h2>
						</a>
					</div>

					<img src="https://cdn-icons-png.flaticon.com/128/870/870175.png"
						alt="comments">
				</div>
				<div class="box box4"><a href="feedbackdata.jsp" style="text-decoration:none;color:inherit;">
					<div class="text">
						<h2 class="topic-heading">
							<%
							try {
								Class.forName("com.mysql.jdbc.Driver").newInstance();
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cyber", "root", "root");
								Statement st = con.createStatement();
								String strQuery = "SELECT COUNT(*) FROM feed_back";
								ResultSet rs = st.executeQuery(strQuery);

								String Countrow = "";
								while (rs.next()) {
									Countrow = rs.getString(1);
									out.println(Countrow);
								}
							} catch (Exception e) {
								e.printStackTrace();
							}
							%>
						</h2>
						<h2 class="topic">FeedBacks</h2>
						</a>
					</div>

					<img
						src="https://img.icons8.com/external-linector-lineal-color-linector/2x/external-feedback-seo-marketing-linector-lineal-color-linector.png"
						alt="published">
				</div>
			</div>
		</div>
		</div>
</body>
</html>