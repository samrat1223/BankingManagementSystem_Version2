package com.obms.dao;

import java.util.List;

import com.obms.bean.Account;

public interface AccountCrud {
	int insertRecord(Account account);
	int updateRecord(Account account);
	int deleteRecord(long Accnt_No);
	List<Account> getAllRecords();
	Account getAccountByAccno(long Accnt_No);
	List<Account> getAccountByAccnt_ID(long Accnt_No);

}
