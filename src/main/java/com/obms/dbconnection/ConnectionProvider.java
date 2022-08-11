package com.obms.dbconnection;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;



public class ConnectionProvider {
	final static Logger logger=Logger.getLogger(ConnectionProvider.class.getName());
	private ConnectionProvider() {
		
	}
	 private static Connection con = null;

	    public static Connection getConnection() {
	        if (con != null)
	            return con;
	        else {
	            try {
	                
	                String driver = "com.mysql.jdbc.Driver";
	                String url = "jdbc:mysql://localhost:3306/bankingmanagementsystem";
	                String user = "root";
	                String password = "ROOt123@";
	                Class.forName(driver);
	                con = DriverManager.getConnection(url, user, password);
	            } catch (ClassNotFoundException cnfe) {
	            	logger.log(Level.INFO,"ClassNotFoundException : {0}",new Object[] {cnfe});
	            } catch (SQLException sqe) {
	            	logger.log(Level.INFO,"SQLException : {0}",new Object[] {sqe});
	            } 
	            return con;
	        }

	    }
}
