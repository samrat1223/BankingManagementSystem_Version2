package com.obms.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.obms.bean.Account;
import com.obms.dbconnection.AccountConnection;


public class AccountService implements AccountCrud {

	@Override
	public int insertRecord(Account account) {
		// TODO Auto-generated method stub
		int result=0;
		try{
			Connection con=AccountConnection.getConnection();
			//java.sql.Date opd=new java.sql.Date(account.getOpening_Date().getTime());
			//To insert records 
			PreparedStatement ps=con.prepareStatement("insert into account(Accnt_No,Accnt_Type,Accnt_Balance,IFSC_Code,Opening_Date,Branch_Name,Branch_Code,Cust_ID,Cust_NomineeName) values(?,?,?,?,?,?,?,?,?)");
			ps.setLong(1,account.getAccnt_No());
			ps.setString(2,account.getAccnt_Type());
			ps.setLong(3,account.getAccnt_Balance());
			ps.setString(4,account.getIFSC_Code());
			ps.setString(5, account.getOpening_Date());
			ps.setString(6,account.getBranch_Name());
			ps.setString(7,account.getBranch_Code());
			ps.setInt(8,account.getCust_ID());
			ps.setString(9, account.getCust_NomineeName());
			result=ps.executeUpdate();
			con.close();
			}
			catch(Exception e){
				e.printStackTrace();
			}
			
		return result;
	}

	@Override
	public int updateRecord(Account account) {
		// TODO Auto-generated method stub
		int result=0;
		try{
			Connection con=AccountConnection.getConnection();
			//java.sql.Date opd=new java.sql.Date(account.getOpening_Date().getTime());
			//To insert records 
			PreparedStatement ps=con.prepareStatement("update account set Accnt_Type=?,Accnt_Balance=?, IFSC_Code=?, Opening_Date=?, Branch_Name=?, Branch_Code=?, Cust_ID =?, Cust_NomineeName=? where Accnt_No=?");
	
			ps.setString(1,account.getAccnt_Type());
			ps.setLong(2,account.getAccnt_Balance());
			ps.setString(3,account.getIFSC_Code());
			ps.setString(4,account.getOpening_Date());
			ps.setString(5,account.getBranch_Name());
			ps.setString(6,account.getBranch_Code());
			ps.setInt(7,account.getCust_ID());
			ps.setString(8, account.getCust_NomineeName());
			ps.setLong(9,account.getAccnt_No());
			
			result=ps.executeUpdate();
			con.close();
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return result;
	}

	@Override
	public int deleteRecord(long Accnt_No) {
		// TODO Auto-generated method stub
		int result=0;
		try{
			Connection con=AccountConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("delete from account where Accnt_No=?");
			
			ps.setLong(1,Accnt_No);
			
			result=ps.executeUpdate();
			con.close();
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return result;
	}

	@Override
	public List<Account> getAllRecords() {
		// TODO Auto-generated method stub
		ArrayList<Account> list=new ArrayList<>();
		try{
		Connection con=AccountConnection.getConnection();
		//To get all Records
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from account");
		//Add all Records in ArrayList		
						
		while(rs.next()) {
			System.out.println(rs.getLong(1));
			list.add(new Account(rs.getLong(1),rs.getString(2),rs.getLong(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getInt(8),rs.getString(9)));
					
		}
		stmt.close();
		con.close();
		
		}
		catch(Exception e){
			e.printStackTrace();
		} 
		return list;
	}

	@Override
	public Account getAccountByAccno(long Accnt_No) {
		// TODO Auto-generated method stub
		Account account=null;
		try{
			Connection con=AccountConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("Select * from account where Accnt_No=?");
			ps.setLong(1, Accnt_No);
			ResultSet rs=ps.executeQuery(); 
			if(rs.next())
				account=new Account(rs.getLong(1),rs.getString(2),rs.getLong(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getInt(8),rs.getString(9));
			
			con.close();
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return account;
	}

}
