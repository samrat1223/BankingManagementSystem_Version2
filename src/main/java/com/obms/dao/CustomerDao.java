package com.obms.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.obms.bean.CustomerBean;
import com.obms.dbconnection.ConnectionProvider;

public class CustomerDao {

	private Connection conn;

    public CustomerDao() {
    	conn = ConnectionProvider.getConnection();
    }
    
    public void addCustomer(CustomerBean customerBean) {
        try {
        	String sql = "INSERT INTO customer(Cust_ID,Cust_Name,Cust_Aadharno,Cust_Address,Cust_Panno,Cust_Email,Cust_Password,Cust_MobileNo,Cust_PinCode,Cust_State,User_Name,Cust_DOB,Accnt_No,Cust_NomineeName)" +
    		" VALUES (?, ?, ?,?, ?, ?,?, ?, ?,?, ?, ?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setInt(1,customerBean.getCust_ID());
            ps.setString(2,customerBean.getCust_Name());            
            ps.setString(3,customerBean.getCust_Aadharno());
            ps.setString(4,customerBean.getCust_Address());
            ps.setString(5,customerBean.getCust_Panno());
            ps.setString(6,customerBean.getCust_Email());
            ps.setString(7,customerBean.getCust_Password());
            ps.setInt(8,customerBean.getCust_MobileNo());
            ps.setInt(9,customerBean.getCust_PinCode());
            ps.setString(10,customerBean.getCust_State());
            ps.setString(11,customerBean.getUser_Name());
            ps.setString(12,customerBean.getCust_DOB());
            ps.setInt(13,customerBean.getAccnt_No());
            ps.setString(14,customerBean.getCust_NomineeName());             
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void removeCustomer(int Cust_ID) {
        try {
        	String sql = "DELETE FROM customer WHERE Cust_ID=?";
            PreparedStatement ps = conn
                    .prepareStatement(sql);
            ps.setInt(1, Cust_ID);
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
      }
    
    public void editCustomer(CustomerBean customerBean) {    	
    	try {
    		String sql = "update customer set Cust_Name=?,Cust_Aadharno=?,Cust_Address=?,Cust_Panno=?,Cust_Email=?,Cust_Password=?,Cust_MobileNo=?,Cust_PinCode=?,Cust_State=?,User_Name=?,Cust_DOB=?,Accnt_No=?,Cust_NomineeName=? where Cust_ID=?";
            PreparedStatement ps = conn.prepareStatement(sql);
          
            ps.setString(1,customerBean.getCust_Name());            
            ps.setString(2,customerBean.getCust_Aadharno());
            ps.setString(3,customerBean.getCust_Address());
            ps.setString(4,customerBean.getCust_Panno());
            ps.setString(5,customerBean.getCust_Email());
            ps.setString(6,customerBean.getCust_Password());
            ps.setInt(7,customerBean.getCust_MobileNo());
            ps.setInt(8,customerBean.getCust_PinCode());
            ps.setString(9,customerBean.getCust_State());
            ps.setString(10,customerBean.getUser_Name());
            ps.setString(11,customerBean.getCust_DOB());
            ps.setInt(12,customerBean.getAccnt_No());
            ps.setString(13,customerBean.getCust_NomineeName());      
            ps.setInt(14,customerBean.getCust_ID());
          
            ps.executeUpdate();            

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public List getAllCustomer() {
        List customer = new ArrayList();
        try {
        	String sql = "SELECT * FROM customer";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                CustomerBean customerBean = new CustomerBean();
                customerBean.setCust_ID(rs.getInt(1));
                customerBean.setCust_Name(rs.getString(2));
                customerBean.setCust_Aadharno(rs.getString(3));
                customerBean.setCust_Address(rs.getString(4));
                customerBean.setCust_Panno(rs.getString(5));
                customerBean.setCust_Email(rs.getString(6));
                customerBean.setCust_Password(rs.getString(7));
                customerBean.setCust_MobileNo(rs.getInt(8));
                customerBean.setCust_PinCode(rs.getInt(9));
                customerBean.setCust_State(rs.getString(10));
                customerBean.setUser_Name(rs.getString(11));
                customerBean.setCust_DOB(rs.getString(12));
                customerBean.setAccnt_No(rs.getInt(13));
                customerBean.setCust_NomineeName(rs.getString(14));                            
                customer.add(customerBean);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return customer;
    }
    
    public CustomerBean getCustomerByCust_ID(int Cust_ID) {
    	CustomerBean customerBean = new CustomerBean();
        try {
        	String sql = "SELECT * FROM customer WHERE Cust_ID=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, Cust_ID);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
            	customerBean.setCust_ID(rs.getInt(1));
            	customerBean.setCust_Name(rs.getString(2));
            	customerBean.setCust_Aadharno(rs.getString(3));
            	customerBean.setCust_Address(rs.getString(4));
            	customerBean.setCust_Panno(rs.getString(5));
            	customerBean.setCust_Email(rs.getString(6));
            	customerBean.setCust_Password(rs.getString(7));
            	customerBean.setCust_MobileNo(rs.getInt(8));
            	customerBean.setCust_PinCode(rs.getInt(9));
            	customerBean.setCust_State(rs.getString(10));
            	customerBean.setUser_Name(rs.getString(11));
            	customerBean.setCust_DOB(rs.getString(12));
            	customerBean.setAccnt_No(rs.getInt(13));
            	customerBean.setCust_NomineeName(rs.getString(14));                          
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerBean;
    }

}
