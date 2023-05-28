package com.xadmin.ccafemanage.bean;

public class Computer {
	private String c_name;
	private int c_id;
	  private int user_id;
  public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

  public Computer(int c_id, String c_name, int user_id) {
	super();
	this.c_id = c_id;
	this.c_name = c_name;
	this.user_id = user_id;
}

}
