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

@WebServlet("/workreg")
public class workreg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try {
			 int adminid=1;
	        	PrintWriter out=response.getWriter();
	        	Class.forName("com.mysql.jdbc.Driver");
	        	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cyber", "root", "root");
	        	int id=Integer.parseInt(request.getParameter("worker-id"));
	        	String role=request.getParameter("worker-role");
	    		int salary=Integer.parseInt(request.getParameter("worker-salary"));
	    		int admin=Integer.parseInt(request.getParameter("admin"));

	    		PreparedStatement ps=con.prepareStatement("INSERT INTO workers "+"(worker_id, worker_role, salary,admin_id)  VALUES "+"(?,?,?,?)");
	        	ps.setInt(1, id);
	        	ps.setString(2, role);
	        	ps.setInt(3, salary);
	        	ps.setInt(4, admin);
	        	ps.executeUpdate();
	        		RequestDispatcher rd=request.getRequestDispatcher("worker.jsp");
	        		rd.forward(request, response);
	        }catch(Exception ex)
	        {
	        	ex.printStackTrace();
	        }	
		 }
	}


