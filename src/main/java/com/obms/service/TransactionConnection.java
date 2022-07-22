package com.obms.service;

import java.sql.Connection;
import java.sql.DriverManager;

public class TransactionConnection {
	
	public static Connection getConnection() {
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingmanagementsystem","root","password");
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return con;
		
	}

}
