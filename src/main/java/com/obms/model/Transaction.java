package com.obms.model;



public class Transaction {
	
	private int Transaction_Id;
	private int Amount;
	private String Transac_Date;
	private String Sender;
	private String Receiver;
	private String Transac_Type;
	private int Accnt_No;
	
	
	
	public int getTransaction_Id() {
		return Transaction_Id;
	}
	public void setTransaction_Id(int transaction_Id) {
		Transaction_Id = transaction_Id;
	}
	public int getAmount() {
		return Amount;
	}
	public void setAmount(int amount) {
		Amount = amount;
	}
	public String getTransac_Date() {
		return Transac_Date;
	}
	public void setTransac_Date(String transac_Date) {
		Transac_Date = transac_Date;
	}
	public String getSender() {
		return Sender;
	}
	public void setSender(String sender) {
		Sender = sender;
	}
	public String getReceiver() {
		return Receiver;
	}
	public void setReceiver(String receiver) {
		Receiver = receiver;
	}
	public String getTransac_Type() {
		return Transac_Type;
	}
	public void setTransac_Type(String transac_Type) {
		Transac_Type = transac_Type;
	}
	public int getAccnt_No() {
		return Accnt_No;
	}
	public void setAccnt_No(int accnt_No) {
		Accnt_No = accnt_No;
	}
	public Transaction(int transaction_Id, int amount, String transac_Date, String sender, String receiver,
			String transac_Type, int accnt_No) {
		super();
		Transaction_Id = transaction_Id;
		Amount = amount;
		Transac_Date = transac_Date;
		Sender = sender;
		Receiver = receiver;
		Transac_Type = transac_Type;
		Accnt_No = accnt_No;
	}
	
	public Transaction()
	{
		
	}

}
