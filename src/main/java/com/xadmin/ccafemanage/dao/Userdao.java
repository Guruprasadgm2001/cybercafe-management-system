package com.xadmin.ccafemanage.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.xadmin.ccafemanage.bean.User;



public class Userdao {
private String jdbcURL="jdbc:mysql://localhost:3306/cyber";
private String jdbcUsername="root";
private String jdbcPassword="root";
private String jdbcDriver="com.mysql.jdbc.Driver";
  private static final String INSERT_USERS_SQL="INSERT INTO USERS "+"(user_id, user_name, user_phone, user_email, worker_id)  VALUES"+"(?,?,?,?,?)";
  private static final String SELECT_USER_BY_ID="SELECT user_id, user_name, user_phone, user_email, worker_id FROM USERS WHERE user_id=?";
  private static final String SELECT_ALL_USERS="SELECT *FROM USERS";
  private static final String DELETE_USERS_SQL="DELETE FROM USERS WHERE user_id=?";
  private static final String UPDATE_USERS_SQL="UPDATE USERS SET user_name=?, user_phone=?, user_email=? ,worker_id=? where user_id=? ";
  
  
  
  
  public Userdao() {
	  
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
   public void insertUser(User user) throws SQLException {
	   System.out.println(INSERT_USERS_SQL);
	   try(Connection connection=getConnection();
			   PreparedStatement ps=connection.prepareStatement(INSERT_USERS_SQL)){
		   ps.setInt(1, user.getId());
		   ps.setString(2, user.getUser_name());
		   ps.setString(3, user.getPhone());
		   ps.setString(4, user.getEmail());
		   ps.setInt(5, user.getWorker_id());
		   System.out.println(ps);
		   ps.executeUpdate();
		   connection.close();
	   }catch(SQLException e) {
		   printSQLException(e);
	   }
   }
   //select user by id
   public User selectUser(int id) 
   {
	   User user=null;
	   try(Connection connection=getConnection();
			   PreparedStatement ps=connection.prepareStatement(SELECT_USER_BY_ID);){
		   ps.setInt(1, id);
		   System.out.println(ps);
		   ResultSet rs=ps.executeQuery();
		   while(rs.next()) {
			   String user_name=rs.getString("user_name");
			   String ph=rs.getString("user_phone");
			   String email=rs.getString("user_email");
			   int worker_id=rs.getInt("worker_id");
			   user=new User(ph, worker_id, id, email, user_name);
			   connection.close();
		   }
	   }catch(SQLException e) {
		   printSQLException(e);
	   }
	   return user;
   }
   //select all users
   public List<User> selectAllUsers(){
	   List<User> users=new ArrayList<>();
	   try(Connection connection=getConnection();
			   PreparedStatement ps=connection.prepareStatement(SELECT_ALL_USERS);)
	   {
		   System.out.println(ps);
		   ResultSet rs=ps.executeQuery();
		   while(rs.next())
		   {
			   int id=rs.getInt("user_id");
			   String ph=rs.getString("user_phone");
			   String user_name=rs.getString("user_name");
			   String email=rs.getString("user_email");
			   int worker_id=rs.getInt("worker_id");
			   users.add(new User(ph, worker_id, id, email, user_name));
		   }
	   }catch(SQLException e) {
		   printSQLException(e);
	   }
	   return users;
   }
   //update
   public boolean UpdateUser(User user) throws SQLException {
	   boolean rowUpdated;
	   try(Connection connection=getConnection();
			   PreparedStatement ps=connection.prepareStatement(UPDATE_USERS_SQL);)
	   {
		   System.out.println("Updated User:"+ps);
		   ps.setString(1, user.getUser_name());
		   ps.setString(2, user.getPhone());
		   ps.setString(3, user.getEmail());
		   ps.setInt(4, user.getWorker_id());
		   ps.setInt(5, user.getId());
		   rowUpdated=ps.executeUpdate()>0;
		   connection.close();
	   }
	   return rowUpdated;
   }
   public boolean deleteUser(int id) throws SQLException {
	   boolean rowDeleted;
	   try(Connection connection=getConnection();
			   PreparedStatement ps=connection.prepareStatement(DELETE_USERS_SQL);)
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
