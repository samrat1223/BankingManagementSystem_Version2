package com.obms.service;


import java.util.List;

import com.obms.model.Transaction;

public interface TransactionCrud {
	
	int insertRecord(Transaction transaction);
	List<Transaction> getAllRecords();
	Transaction getTransactionByTransac_Id(int Transaction_Id);


}
