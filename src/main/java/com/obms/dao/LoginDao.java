package com.obms.dao;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.obms.bean.LoginBean;
import com.obms.dbconnection.AccountConnection;

public class LoginDao {
	final static Logger logger=Logger.getLogger(LoginDao.class.getName());

	public boolean validate(LoginBean loginBean) throws ClassNotFoundException {
        boolean status = false;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/bankingmanagementsystem?useSSL=false", "root", "ROOt123@");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection
            .prepareStatement("select * from login where username = ? and password = ? ")) {
            preparedStatement.setString(1, loginBean.getUsername());
            preparedStatement.setString(2, loginBean.getPassword());

            logger.info("****************************************************************************");
            
            logger.info(loginBean.getUsername() + loginBean.getPassword());
            
            //System.out.println(preparedStatement);
            logger.log(Level.INFO,"{0}",new Object[] {preparedStatement});
            
            ResultSet rs = preparedStatement.executeQuery();
            status = rs.next();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return status;
    }
	
	public boolean validateUser(LoginBean loginBean) throws ClassNotFoundException {
        boolean status = false;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/bankingmanagementsystem?useSSL=false", "root", "ROOt123@");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection
            .prepareStatement("select * from users where username = ? and password = ? ")) {
            preparedStatement.setString(1, loginBean.getUsername());
            preparedStatement.setString(2, loginBean.getPassword());

            logger.info("****************************************************************************");
            
            logger.info(loginBean.getUsername() + loginBean.getPassword());
            
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            status = rs.next();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return status;
    }
	
	// Get User account details


    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                logger.info("SQLState: " + ((SQLException) e).getSQLState());
                logger.info("Error Code: " + ((SQLException) e).getErrorCode());
                logger.info("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                	logger.info("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
