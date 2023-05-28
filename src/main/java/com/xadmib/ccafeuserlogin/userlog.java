package com.xadmib.ccafeuserlogin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/userlog")
public class userlog extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   try {
	        	PrintWriter out=response.getWriter();
	        	Class.forName("com.mysql.jdbc.Driver");
	        	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cyber", "root", "root");
	        	String email=request.getParameter("login-email");
	        	String password=request.getParameter("login-password");
	        	PreparedStatement ps=con.prepareStatement("select user_name from login where email=? and password=?");
	        	ps.setString(1, email);
	        	ps.setString(2, password);
	        	ResultSet rs=ps.executeQuery();
	        	if(rs.next())
	        	{ 
	        		RequestDispatcher rd=request.getRequestDispatcher("dashboard.jsp");
	        		rd.forward(request, response);
	        	}
	        	else {
	        		out.println("Data is not found");
	        	       out.println("alert('User or password incorrect');");
	        	       response.sendRedirect("login.jsp"); 	
	        	}
	        }catch(Exception ex)
	        {
	        	ex.printStackTrace();
	        }	
		   }

}
