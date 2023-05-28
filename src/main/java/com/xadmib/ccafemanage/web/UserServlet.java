
package com.xadmib.ccafemanage.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xadmin.ccafemanage.bean.Computer;
import com.xadmin.ccafemanage.bean.User;
import com.xadmin.ccafemanage.bean.Worker;
import com.xadmin.ccafemanage.dao.Computerdao;
import com.xadmin.ccafemanage.dao.Userdao;
import com.xadmin.ccafemanage.dao.Workerdao;

@WebServlet("/")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      private Userdao userdao =new Userdao();;
      private Workerdao workerdao=new Workerdao();
      private Computerdao computerdao=new Computerdao();
     public void init() throws ServletException {
        }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getServletPath();
		switch(action)
		{
		case "/newUser":showNewForm(request,response);
		break;
		case "/insertUser":try {
				insertuser(request,response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		break;
		case "/insertAdmin":insertadmin(request,response);
	break;
		case "/Worker":try {
			insertWorker(request,response);
		} catch (SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		case "/cinsert":try {
				insertcomputer(request,response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		break;
	
		case "/deleteUser":deleteuser(request,response);
		break;
		case "/deleteComputer":deletecomputer(request,response);
		
		break;
        case "/deleteWorker":deleteworker(request,response);
		
		break;
		case "/editUser":showEditForm(request,response);
		break;
		case "/updateUser":updateuser(request,response);
		break;
		case "/updateComputer":updatecomputer(request,response);
		break;
		case "/updateWorker":updateworker(request,response);
		break;
		default:
			break;
		}
	}
	
	

	private void updateuser(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id=Integer.parseInt(request.getParameter("customer-id"));
		String name=request.getParameter("customer-name");
		String phone=request.getParameter("customer-phone");
		String email=request.getParameter("customer-email");
	    int wid=Integer.parseInt(request.getParameter("customer-workerid"));
	    User user=new User(phone, wid,id, email, name);
	    try {
			userdao.UpdateUser(user);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    response.sendRedirect("customer.jsp");
		
	}
	private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}
	private void deleteuser(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id=Integer.parseInt(request.getParameter("customer-id"));
		try {
			userdao.deleteUser(id);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		response.sendRedirect("customer.jsp");
	}

	private void insertuser(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("customer-name");
		int user_id=Integer.parseInt(request.getParameter("customer-id"));
		
		String phone=request.getParameter("customer-phone");
		String email=request.getParameter("customer-email");
		int workerid=Integer.parseInt(request.getParameter("customer-workerid"));

		User newUser=new User(phone, workerid, user_id, email, name);
		userdao.insertUser(newUser);	
		response.sendRedirect("customer.jsp");
	}
	private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher=request.getRequestDispatcher("customer.jsp");
		dispatcher.forward(request, response);
	}
	
//workers function

	private void insertWorker(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		// TODO Auto-generated method stub
		
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
	
	
	private void deleteworker(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id=Integer.parseInt(request.getParameter("worker-id"));
		try {
			workerdao.deleteworker(id);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		response.sendRedirect("worker.jsp");
	}

	

	private void updateworker(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id=Integer.parseInt(request.getParameter("worker-id"));
		String role=request.getParameter("worker-role");
		int salary=Integer.parseInt(request.getParameter("worker-salary"));
	    int aid=Integer.parseInt(request.getParameter("admin-id"));
	    Worker worker=new Worker(id,role,salary, aid);
	    try {
			workerdao.Updateworker(worker);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    response.sendRedirect("worker.jsp");
	}
	
	
	//computer functions
	private void insertcomputer(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("computer-name");
		int user_id=Integer.parseInt(request.getParameter("user-id"));
		int cid=Integer.parseInt(request.getParameter("computer-id"));
       try {
		Computer newComputer=new Computer(cid, name, user_id);
		computerdao.insertComputer(newComputer);	
		response.sendRedirect("computer.jsp");
       }
       catch(SQLException e)
       {
    	   response.sendError(cid);
       }
}
	
	private void deletecomputer(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id=Integer.parseInt(request.getParameter("computer-id"));
		try {
			computerdao.deleteComputer(id);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		response.sendRedirect("computer.jsp");
	}
	

	private void updatecomputer(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id=Integer.parseInt(request.getParameter("computer-id"));
		String name=request.getParameter("computer-name");
	    int uid=Integer.parseInt(request.getParameter("user-id"));
	    Computer computer=new Computer(id, name, uid);
	    try {
			computerdao.UpdateComputer(computer);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    response.sendRedirect("computer.jsp");
	}

	
	//admin functions
	private void insertadmin(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}
}
