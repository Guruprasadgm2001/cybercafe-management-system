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


@WebServlet("/Userreg")
public class Userreg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try {
	        	PrintWriter out=response.getWriter();
	        	Class.forName("com.mysql.jdbc.Driver");
	        	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cyber", "root", "root");
	        	String name=request.getParameter("login-name");
	        	String email=request.getParameter("login-email");
	        	String password=request.getParameter("login-password");
	        	PreparedStatement ps=con.prepareStatement("INSERT INTO LOGIN "+"(user_name, email, password)  VALUES "+"(?,?,?)");
	        	ps.setString(1, name);
	        	ps.setString(2, email);
	        	ps.setString(3, password);
	        	ps.executeUpdate();
	        		RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
	        		rd.forward(request, response);
	        }catch(Exception ex)
	        {
	        	ex.printStackTrace();
	        }	
		 }
	}


