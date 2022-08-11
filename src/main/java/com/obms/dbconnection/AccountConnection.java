package com.obms.dbconnection;

import java.sql.Connection;

import java.sql.DriverManager;
import java.util.logging.Logger;

public class AccountConnection {
	final static Logger logger=Logger.getLogger(AccountConnection.class.getName());
	private AccountConnection() {
		
	}
	
	public static Connection getConnection() {
		Connection con=null;
		try {
			logger.info("Start");
			Class.forName("com.mysql.cj.jdbc.Driver");
			logger.info("Check Connection");
			
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingmanagementsystem","root","ROOt123@");
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return con;
		
	}


}
