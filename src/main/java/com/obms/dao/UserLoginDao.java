package com.obms.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.obms.bean.UserBean;
//import com.obms.bean.LoginBean;
import com.obms.bean.UserLoginBean;
import com.obms.dbconnection.AccountConnection;

public class UserLoginDao {

	/*
	 * public UserBean validateUser(int accnt_no) throws ClassNotFoundException {
	 * 
	 * UserBean ub = null;
	 * 
	 * 
	 * try (Connection connection = DriverManager .getConnection(
	 * "jdbc:mysql://localhost:3306/bankingmanagementsystem?useSSL=false", "root",
	 * "ROOt123@");
	 * 
	 * // Step 2:Create a statement using connection object PreparedStatement
	 * preparedStatement = connection
	 * .prepareStatement("select * from users where Accnt_No=? ")) {
	 * 
	 * preparedStatement.setInt(1, accnt_no); ResultSet rs =
	 * preparedStatement.executeQuery(); while(rs.next()) { ub = new UserBean();
	 * ub.setAccnt_No(rs.getInt(9)); ub.setId(rs.getInt(1));
	 * ub.setFirst_name(rs.getString(2)); ub.setLast_name(rs.getString(3));
	 * ub.setUsername(rs.getString(4)); ub.setPassword(rs.getString(5));
	 * ub.setAddress(rs.getString(6)); ub.setContact(rs.getString(7));
	 * ub.setCust_ID(rs.getInt(8)); ub.setTransaction_Id(rs.getInt(10)); }
	 * 
	 * 
	 * 
	 * // Step 2:Create a statement using connection object PreparedStatement
	 * //preparedStatement.setString(2, loginBean.getPassword());
	 * 
	 * 
	 * } catch (SQLException e) { // process sql exception printSQLException(e); }
	 * 
	 * e.printStackTrace(); } return ub; }
	 */

	public boolean validateUser(UserLoginBean userloginBean) throws ClassNotFoundException {
		boolean status = false;

		Class.forName("com.mysql.jdbc.Driver");

		try (Connection connection = DriverManager
				.getConnection("jdbc:mysql://localhost:3306/bankingmanagementsystem?useSSL=false", "root", "ROOt123@");

				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection
						.prepareStatement("select * from users where Accnt_No=? ")) {
			preparedStatement.setInt(1, userloginBean.getAccnt_No());
			// preparedStatement.setString(2, loginBean.getPassword());

			/*
			 * System.out.println(
			 * "****************************************************************************"
			 * );
			 * 
			 * System.out.println(loginBean.getUsername() + loginBean.getPassword());
			 */

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

	public String getAccount_Details_By_Accnt_No(int s) {
		String res1 = "null";

		try {
			Connection con = AccountConnection.getConnection();
			Statement stmt = con.createStatement();
			PreparedStatement ps = con.prepareStatement(
					"select * from account inner join users on account.Accnt_No=users.Accnt_No where Accnt_No=?");
			ps.setInt(1, s);
			ResultSet res = ps.executeQuery();
			if (res.next()) {
				res1 = res.getString(1);
			}
			return res1;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return res1;
	}
}
