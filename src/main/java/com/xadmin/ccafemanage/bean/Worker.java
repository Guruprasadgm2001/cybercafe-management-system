package com.xadmin.ccafemanage.bean;

public class Worker {
	   private String role;
	   private int admin_id;
	   private int worker_id;
	   private int salary;
	   public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}

	
   public int getWorker_id() {
		return worker_id;
	}
	public void setWorker_id(int worker_id) {
		this.worker_id = worker_id;
	}
	
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}

	public int getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}

   public Worker(int worker_id, String role,int salary, int admin_id) {
	super();
	this.worker_id = worker_id;
	this.role = role;
	this.admin_id = admin_id;
	this.salary=salary;
}

}
