package com.xadmin.ccafemanage.bean;

public class User {
	private String phone;
	private int worker_id;
    private int id;
	private String email;
	private String user_name;
    public User(String phone, int worker_id, int id, String email, String user_name) {
		super();
		this.phone = phone;
		this.worker_id = worker_id;
		this.id = id;
		this.email = email;
		this.user_name = user_name;
	}
	
    public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	

    public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getWorker_id() {
		return worker_id;
	}
	public void setWorker_id(int worker_id) {
		this.worker_id = worker_id;
	}

	

}
