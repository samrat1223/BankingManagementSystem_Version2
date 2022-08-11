package com.obms.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.obms.bean.CustomerBean;
import com.obms.bean.UserBean;
import com.obms.dbconnection.ConnectionProvider;

public class UserService {
	
	private Connection conn;

    public UserService() {
    	conn = ConnectionProvider.getConnection();
    }
    
    public void addUser(UserBean UserBean) {
        try {
        	String sql = "INSERT INTO users(id,first_name,last_name,username,password,address,contact,Cust_ID,Accnt_No,Transaction_Id)" +
    		" VALUES (?, ?, ?,?, ?, ?,?, ?, ?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setInt(1,UserBean.getId());
            ps.setString(2,UserBean.getFirst_name());            
            ps.setString(3,UserBean.getLast_name());
            ps.setString(4,UserBean.getUsername());
            ps.setString(5,UserBean.getPassword());
            ps.setString(6,UserBean.getAddress());
            ps.setString(7,UserBean.getContact());
            ps.setInt(8,UserBean.getCust_ID());
            ps.setInt(9,UserBean.getAccnt_No());
            ps.setInt(10,UserBean.getTransaction_Id());
                         
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    
    public List getAllUser() {
        List user = new ArrayList();
        try {
        	String sql = "SELECT * FROM users where Accnt_No=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                UserBean userBean = new UserBean();
                userBean.setId(rs.getInt(1));
                userBean.setFirst_name(rs.getString(2));
                userBean.setLast_name(rs.getString(3));
                userBean.setUsername(rs.getString(4));
                userBean.setPassword(rs.getString(5));
                userBean.setAddress(rs.getString(6));
                userBean.setContact(rs.getString(7));
                userBean.setCust_ID(rs.getInt(8));
                userBean.setAccnt_No(rs.getInt(9));
                userBean.setTransaction_Id(rs.getInt(10));                             
                user.add(userBean);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }
    
    public UserBean getUserByAccnt_No(int Accnt_No) {
    	UserBean userBean = new UserBean();
        try {
        	String sql = "SELECT * FROM users WHERE Accnt_No=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, Accnt_No);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
            	userBean.setId(rs.getInt(1));
                userBean.setFirst_name(rs.getString(2));
                userBean.setLast_name(rs.getString(3));
                userBean.setUsername(rs.getString(4));
                userBean.setPassword(rs.getString(5));
                userBean.setAddress(rs.getString(6));
                userBean.setContact(rs.getString(7));
                userBean.setCust_ID(rs.getInt(8));
                userBean.setAccnt_No(rs.getInt(9));
                userBean.setTransaction_Id(rs.getInt(10));                           
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userBean;
    }

}



