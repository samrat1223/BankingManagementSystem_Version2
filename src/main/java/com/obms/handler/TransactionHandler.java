package com.obms.handler;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.obms.bean.Transaction;
import com.obms.dao.TransactionService;
import com.obms.dbconnection.AccountConnection;


@WebServlet("/TransactionHandler")
public class TransactionHandler extends HttpServlet {
	final static Logger logger=Logger.getLogger(TransactionHandler.class.getName());
	private static final long serialVersionUID = 1L;
	
	 TransactionService service=new TransactionService();

   

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action=request.getParameter("action");
		int id,Transaction_Id, Amount, Accnt_No, result;
		RequestDispatcher rd;
		String Transac_Date, Sender, Receiver, Transac_Type;
		
		switch(action){
		case "Transaction_Id":
			id=Integer.parseInt(request.getParameter("search"));
			//System.out.println(id);
			logger.log(Level.INFO,"{0}",new Object[] {id});
			request.setAttribute("search", id);
			rd=request.getRequestDispatcher("TransactionID.jsp");
			rd.forward(request, response);
			break;
		
		case "addform":
			Transaction_Id=Integer.parseInt(request.getParameter("Transaction_Id"));
			Amount=Integer.parseInt(request.getParameter("Amount"));
			Transac_Date=request.getParameter("Transac_Date");
			Sender=request.getParameter("Sender");
			Receiver=request.getParameter("Receiver");
			Transac_Type=request.getParameter("Transac_Type");
			Accnt_No=Integer.parseInt(request.getParameter("Accnt_No"));
			
			logger.info(Transaction_Id+" "+ Amount+" "+ Transac_Date+" "+ Sender+" "+ Receiver+" "+ Transac_Type+" "+ Accnt_No);
			Transaction transaction1=new Transaction(Transaction_Id, Amount, Transac_Date, Sender, Receiver, Transac_Type, Accnt_No);
			result=service.insertRecord(transaction1);
			if(result>0) {
				rd=request.getRequestDispatcher("Transaction.jsp");
				rd.forward(request, response);
			
			}
			else {
				logger.info("Record not inserted");
			}
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
