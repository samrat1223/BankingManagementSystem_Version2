package com.obms.dao;


import java.util.List;

import com.obms.bean.Transaction;

public interface TransactionCrud {
	
	int insertRecord(Transaction transaction);
	List<Transaction> getAllRecords();
	Transaction getTransactionByTransac_Id(int Transaction_Id);


}
