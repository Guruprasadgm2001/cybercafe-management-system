package com.xadmin.ccafemanage.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.xadmin.ccafemanage.bean.User;
import com.xadmin.ccafemanage.bean.Worker;

public class Workerdao {
	private String jdbcURL="jdbc:mysql://localhost:3306/cyber";
	private String jdbcUsername="root";
	private String jdbcPassword="root";
	private String jdbcDriver="com.mysql.jdbc.Driver";
	  private static final String INSERT_WORKER_SQL="INSERT INTO WORKERS "+"(worker_id, worker_role, salary, admin_id)  VALUES"+"(?,?,?,?)";
	  private static final String SELECT_WORKER_BY_ID="SELECT worker_id, worker_role, salary, admin_id FROM WORKERS WHERE worker_id=?";
	  private static final String SELECT_ALL_WORKER="SELECT *FROM WORKERS";
	  private static final String DELETE_WORKER_SQL="DELETE FROM WORKERS WHERE worker_id=?";
	  private static final String UPDATE_WORKER_SQL="UPDATE WORKERS SET worker_role=?,salary=?, admin_id=? where worker_id=?";
	  protected Connection  getConnection() {
	    	Connection connection=null;
	    	try {
	    		 Class.forName(jdbcDriver);
	    		 connection=DriverManager.getConnection(jdbcURL,jdbcUsername,jdbcPassword);
	    	}catch(SQLException e)
	    	{
	    		e.printStackTrace();
	    	}catch(ClassNotFoundException e)
	    	{
	    		e.printStackTrace();
	    	}
	    	 return connection;
	    }
	    //insert
	   public void insertworker(Worker worker) throws SQLException {
		   System.out.println(INSERT_WORKER_SQL);
		   try(Connection connection=getConnection();
				   PreparedStatement ps=connection.prepareStatement(INSERT_WORKER_SQL)){
			   ps.setInt(1, worker.getWorker_id());
			   ps.setString(2, worker.getRole());
			   ps.setInt(3, worker.getSalary());
			   ps.setInt(4, worker.getAdmin_id());
			   System.out.println(ps);
			   ps.execute();
		   }catch(SQLException e) {
			   printSQLException(e);
		   }
	   }
	   //select user by id
	   public Worker selectWorker(int id) 
	   {
		   Worker worker=null;
		   try(Connection connection=getConnection();
				   PreparedStatement ps=connection.prepareStatement(SELECT_WORKER_BY_ID);){
			   ps.setInt(1, id);
			   System.out.println(ps);
			   ResultSet rs=ps.executeQuery();
			   while(rs.next()) {
				   String  role=rs.getString("worker_role");
				   int sal=rs.getInt("salary");
				   int admin_id=rs.getInt("admin_id");
				   worker=new Worker(id, role, sal,admin_id);
			   }
		   }catch(SQLException e) {
			   printSQLException(e);
		   }
		   return worker;
	   }
	   //select all users
	   public List<Worker> selectAllWorkers(){
		   List<Worker> worker=new ArrayList<>();
		   try(Connection connection=getConnection();
				   PreparedStatement ps=connection.prepareStatement(SELECT_ALL_WORKER);)
		   {
			   System.out.println(ps);
			   ResultSet rs=ps.executeQuery();
			   while(rs.next())
			   {
				   int id=rs.getInt("worker_id");
				   String w_role=rs.getString("worker_role");
				   int admin_id=rs.getInt("admin_id");
				   int sal=rs.getInt("salary");
				   worker.add(new Worker(id,w_role,   sal, admin_id));
			   }
		   }catch(SQLException e) {
			   printSQLException(e);
		   }
		   return worker;
	   }
	   //update
	   public boolean Updateworker(Worker worker) throws SQLException {
		   boolean rowUpdated;
		   try(Connection connection=getConnection();
				   PreparedStatement ps=connection.prepareStatement(UPDATE_WORKER_SQL);)
		   {
			   System.out.println("Updated worker:"+ps);
			   ps.setString(1, worker.getRole());
			   ps.setInt(3, worker.getAdmin_id());
			   ps.setInt(2, worker.getSalary());
			   ps.setInt(4, worker.getWorker_id());
			   rowUpdated=ps.executeUpdate()>0;
		   }
		   return rowUpdated;
	   }
	   public boolean deleteworker(int id) throws SQLException {
		   boolean rowDeleted;
		   try(Connection connection=getConnection();
				   PreparedStatement ps=connection.prepareStatement(DELETE_WORKER_SQL);)
		   {
			   ps.setInt(1, id);
			   rowDeleted=ps.executeUpdate()>0;
		   }
		   return rowDeleted;
	   }
	   
	   
	   
	   
	   
	private void printSQLException(SQLException e) {
		// TODO Auto-generated method stub
		for(Throwable ex:e) {
			if(e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState:"+((SQLException)e).getSQLState());
				System.err.println("ErrorCode:"+((SQLException)e).getErrorCode());
				System.err.println("Message:"+e.getMessage());
				Throwable t=e.getCause();
				while(t!=null) {
					System.out.println("cause"+t);
					t=t.getCause();
				}
			}
		}
	}
}
