package com.xadmib.ccafeuserlogin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class feedback
 */
@WebServlet("/feedback")
public class feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try {
	        	PrintWriter out=response.getWriter();
	        	Class.forName("com.mysql.jdbc.Driver");
	        	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cyber", "root", "root");
	        	int id=Integer.parseInt(request.getParameter("user_id"));
	        	String name=request.getParameter("user_name");
	        	String fv=request.getParameter("first_visit");
	        	String ll=request.getParameter("Likelihood_toreturn");
	        	int feedback=Integer.parseInt(request.getParameter("feed_back"));
	        	PreparedStatement ps=con.prepareStatement("INSERT INTO FEED_BACK "+"(user_id,user_name, first_visit, Likelihood_toreturn,feed_back)  VALUES "+"(?,?,?,?,?)");
	        	ps.setInt(1,id);
	        	ps.setString(2, name);
	        	ps.setString(3, fv);
	        	ps.setString(4,ll);
	        	ps.setInt(5,feedback);
	        	ps.executeUpdate();
	        		RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
	        		rd.forward(request, response);
	        }catch(Exception ex)
	        {
	        	ex.printStackTrace();
	        }	
		 
	}


}
