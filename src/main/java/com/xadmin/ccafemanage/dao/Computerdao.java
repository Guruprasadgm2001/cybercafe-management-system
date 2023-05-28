package com.xadmin.ccafemanage.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.xadmin.ccafemanage.bean.Computer;
import com.xadmin.ccafemanage.bean.User;

public class Computerdao {
	private String jdbcURL="jdbc:mysql://localhost:3306/cyber";
	private String jdbcUsername="root";
	private String jdbcPassword="root";
	private String jdbcDriver="com.mysql.jdbc.Driver";
	  private static final String INSERT_COMPUTER_SQL="INSERT INTO COMPUTER "+"(c_id, c_name, user_id)  VALUES"+"(?,?,?)";
	  private static final String SELECT_COMPUTER_BY_ID="SELECT c_id, c_name, user_id FROM USERS WHERE C_id=?";
	  private static final String SELECT_ALL_COMPUTER="SELECT *FROM COMPUTER";
	  private static final String DELETE_COMPUTER_SQL="DELETE FROM COMPUTER WHERE c_id=?";
	  private static final String UPDATE_COMPUTER_SQL="UPDATE COMPUTER SET c_name=?, user_id=? WHERE C_ID=?";
	  
	  public Computerdao() {
		  
	  }
	  
	  
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
	   public void insertComputer(Computer computer) throws SQLException {
		   System.out.println(INSERT_COMPUTER_SQL);
		   try(Connection connection=getConnection();
				   PreparedStatement ps=connection.prepareStatement(INSERT_COMPUTER_SQL)){
			   ps.setInt(1, computer.getC_id());
			   ps.setString(2, computer.getC_name());
			   ps.setInt(3, computer.getUser_id());
			   System.out.println(ps);
			   ps.executeUpdate();
		   }catch(SQLException e) {
			   printSQLException(e);
		   }
	   }
	   //select user by id
	   public Computer selectComputer(int id) 
	   {
		   Computer computer=null;
		   try(Connection connection=getConnection();
				   PreparedStatement ps=connection.prepareStatement(SELECT_COMPUTER_BY_ID);){
			   ps.setInt(1, id);
			   System.out.println(ps);
			   ResultSet rs=ps.executeQuery();
			   while(rs.next()) {
				   String C_name=rs.getString("c_name");
				   int user_id=rs.getInt("user_id");
				   computer=new Computer( id,C_name,user_id );
			   }
		   }catch(SQLException e) {
			   printSQLException(e);
		   }
		   return computer;
	   }
	   //select all users
	   public List<Computer> selectAllComputer(){
		   List<Computer> computer=new ArrayList<>();
		   try(Connection connection=getConnection();
				   PreparedStatement ps=connection.prepareStatement(SELECT_ALL_COMPUTER);)
		   {
			   System.out.println(ps);
			   ResultSet rs=ps.executeQuery();
			   while(rs.next())
			   {
				   int id=rs.getInt("c_id");
				   String C_name=rs.getString("c_name");
				   int user_id=rs.getInt("user_id");
				   computer.add(new Computer(id,C_name,user_id));
			   }
		   }catch(SQLException e) {
			   printSQLException(e);
		   }
		   return computer;
	   }
	   //update
	   public boolean UpdateComputer(Computer computer) throws SQLException {
		   boolean rowUpdated;
		   try(Connection connection=getConnection();
				   PreparedStatement ps=connection.prepareStatement(UPDATE_COMPUTER_SQL);)
		   {
			   System.out.println("Updated COMPUTER:"+ps);
			   ps.setString(1,computer.getC_name());
			   ps.setInt(2, computer.getUser_id());
			   ps.setInt(3, computer.getC_id());

			   rowUpdated=ps.executeUpdate()>0;
			   connection.close();
		   }
		   return rowUpdated;
	   }
	   
	   //delete
	   public boolean deleteComputer(int id) throws SQLException {
		   boolean rowDeleted;
		   try(Connection connection=getConnection();
				   PreparedStatement ps=connection.prepareStatement(DELETE_COMPUTER_SQL);)
		   {
			   ps.setInt(1, id);
			   rowDeleted=ps.executeUpdate()>0;
			   connection.close();
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
