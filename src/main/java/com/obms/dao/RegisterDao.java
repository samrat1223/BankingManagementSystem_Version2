package com.obms.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.obms.bean.Register;

public class RegisterDao {
	public int registerEmployee(Register register) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO users" +
            "  (id, first_name, last_name, username, password, address, contact) VALUES " +
            " (?, ?, ?, ?, ?,?,?);";

        int result = 0;
        
        int id=0;
        


        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/bankingmanagementsystem?useSSL=false", "root", "password");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setInt(1, id);
            preparedStatement.setString(2, register.getFirstName());
            preparedStatement.setString(3, register.getLastName());
            preparedStatement.setString(4, register.getUsername());
            preparedStatement.setString(5, register.getPassword());
            preparedStatement.setString(6, register.getAddress());
            preparedStatement.setString(7, register.getContact());

            PreparedStatement ps = connection.prepareStatement("select max(id) from users");
            ResultSet rs= ps.executeQuery();
            
            if(rs.next())
            {
            	id = rs.getInt(1);
            	id++;
            }
            
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return result;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
