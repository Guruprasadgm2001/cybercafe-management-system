package com.xadmib.ccafemanage.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xadmin.ccafemanage.bean.Worker;
import com.xadmin.ccafemanage.dao.Workerdao;

/**
 * Servlet implementation class workadd
 */
@WebServlet("/workadd")
public class workadd extends HttpServlet {
	private static final long serialVersionUID = 1L;
        Workerdao workerdao=new Workerdao();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			int id=Integer.parseInt(request.getParameter("worker-id"));
			String role=request.getParameter("worker-role");
			int salary=Integer.parseInt(request.getParameter("worker-salary"));
			int admin=Integer.parseInt(request.getParameter("admin"));
			Worker newWorker=new Worker(id,role,salary,admin);
			try {
				workerdao.insertworker(newWorker);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
			response.sendRedirect("worker.jsp");
		}
}
