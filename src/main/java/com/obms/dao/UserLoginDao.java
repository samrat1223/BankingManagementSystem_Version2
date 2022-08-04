package com.obms.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

//import com.obms.bean.LoginBean;
import com.obms.bean.UserLoginBean;
import com.obms.dbconnection.AccountConnection;

public class UserLoginDao {
	
	public boolean validateUser(UserLoginBean userloginBean) throws ClassNotFoundException {
        boolean status = false;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/bankingmanagementsystem?useSSL=false", "root", "password");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection
            .prepareStatement("select * from users where Accnt_No=? ")) {
            preparedStatement.setInt(1, userloginBean.getAccnt_No());
            //preparedStatement.setString(2, loginBean.getPassword());

          /*  System.out.println("****************************************************************************");
            
            System.out.println(loginBean.getUsername() + loginBean.getPassword());*/
            
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            status = rs.next();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return status;
    }
	

	private void printSQLException(SQLException e) {
		
		
	}


	public String getAccount_Details_By_Accnt_No(int s ) {
	String res1="null";
	
	
	try{
		Connection con=AccountConnection.getConnection();
		Statement stmt=con.createStatement();
		PreparedStatement ps=con.prepareStatement("select * from account inner join users on account.Accnt_No=users.Accnt_No where Accnt_No=?");
		ps.setInt(1,s);
		ResultSet res=ps.executeQuery();
		if(res.next()){
			   res1 = res.getString(1);
			}
		return res1;
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
	return res1;
	}
}
