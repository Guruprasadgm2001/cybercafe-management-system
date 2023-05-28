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

@WebServlet("/worker")
public class worker extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   try {
	        	PrintWriter out=response.getWriter();
	        	Class.forName("com.mysql.jdbc.Driver");
	        	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cyber", "root", "root");
	        	int id=Integer.parseInt(request.getParameter("worker_id"));
	        	PreparedStatement ps=con.prepareStatement("select worker_role from workers where worker_id=?");
	        	ps.setInt(1,id);
	        	ResultSet rs=ps.executeQuery();
	        	if(rs.next())
	        	{
	        		RequestDispatcher rd=request.getRequestDispatcher("workerdashboard.jsp");
	        		rd.forward(request, response);
	        	}
	        	else {
	        		out.println("Data is not found");
	        		RequestDispatcher r=request.getRequestDispatcher("login.jsp");
	        		r.forward(request, response);
	        		
	        	}
	        }catch(Exception ex)
	        {
	        	ex.printStackTrace();
	        }
	}


}
