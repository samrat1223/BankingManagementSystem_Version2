package com.obms.bean;

public class UserBean {
	
	private int id;
	private String first_name;
	private String last_name;
	private String username;
	private String password;
	private String address;
	private String contact;
	private int Cust_ID;
	private int Accnt_No;
	private int Transaction_Id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public int getCust_ID() {
		return Cust_ID;
	}
	public void setCust_ID(int cust_ID) {
		Cust_ID = cust_ID;
	}
	public int getAccnt_No() {
		return Accnt_No;
	}
	public void setAccnt_No(int accnt_No) {
		Accnt_No = accnt_No;
	}
	public int getTransaction_Id() {
		return Transaction_Id;
	}
	public void setTransaction_Id(int transaction_Id) {
		Transaction_Id = transaction_Id;
	}
	public UserBean(int id, String first_name, String last_name, String username, String password, String address,
			String contact, int cust_ID, int accnt_No, int transaction_Id) {
		super();
		this.id = id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.username = username;
		this.password = password;
		this.address = address;
		this.contact = contact;
		Cust_ID = cust_ID;
		Accnt_No = accnt_No;
		Transaction_Id = transaction_Id;
	}
	
	public UserBean() {
		
	}
}
