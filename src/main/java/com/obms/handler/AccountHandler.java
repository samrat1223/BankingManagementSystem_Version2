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

import com.obms.bean.Account;
import com.obms.dao.AccountService;

/**
 * Servlet implementation class AccountHandler
 */
@WebServlet("/AccountHandler")
public class AccountHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
	final Logger logger=Logger.getLogger(AccountHandler.class.getName());
    static AccountService service=new AccountService();  
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action=request.getParameter("action");
		long id, accNo, accBalance;
		RequestDispatcher rd;
		int result, custID;
		String accType, ifscCode, openingDate, branchName, branchCode, custNomineeName;
		switch(action){
		case "accountid":
			id=Long.valueOf(request.getParameter("search"));
			logger.log(Level.INFO,"id : {0}",new Object[] {id});
			request.setAttribute("search", id);
			rd=request.getRequestDispatcher("AccountID.jsp");
			rd.forward(request, response);
			break;
		case "editform":
			id=Long.valueOf(request.getParameter("accID"));
			logger.log(Level.INFO,"id : {0}",new Object[] {id});
			request.setAttribute("id", id);
			rd=request.getRequestDispatcher("AccountUpdate.jsp");
			rd.forward(request, response);
			break;
		case "updatedform":
			accNo=Long.valueOf(request.getParameter("accNo"));
			accType=request.getParameter("accType");
			accBalance=Long.valueOf(request.getParameter("accBalance"));
			ifscCode=request.getParameter("ifscCode");
			openingDate=request.getParameter("openingDate");
			branchName=request.getParameter("branchName");
			branchCode=request.getParameter("branchCode");
			custID=Integer.parseInt(request.getParameter("custID"));
			custNomineeName=request.getParameter("custNomineeName");
			
			logger.log(Level.INFO,"{0} {1} {2} {3} {4} {5} {6} {7} {8}",new Object[] {accNo, accType, accBalance, ifscCode, openingDate, branchName, branchCode, custID, custNomineeName});
			Account account=new Account(accNo, accType, accBalance, ifscCode, openingDate, branchName, branchCode, custID, custNomineeName);
			result=service.updateRecord(account);
			if(result>0) {
				rd=request.getRequestDispatcher("Account.jsp");
				rd.forward(request, response);
			}
			else {
				logger.info("Record not updated");
				
			}
			break;
		case "addform":
			accNo=Long.valueOf(request.getParameter("accNo"));
			accType=request.getParameter("accType");
		    accBalance=Long.valueOf(request.getParameter("accBalance"));
			ifscCode=request.getParameter("ifscCode");
			openingDate=request.getParameter("openingDate");
			branchName=request.getParameter("branchName");
			branchCode=request.getParameter("branchCode");
			custID=Integer.parseInt(request.getParameter("custID"));
			custNomineeName=request.getParameter("custNomineeName");
			logger.log(Level.INFO,"{0} {1} {2} {3} {4} {5} {6} {7} {8}",new Object[] {accNo, accType, accBalance, ifscCode, openingDate, branchName, branchCode, custID, custNomineeName});
			Account account1=new Account(accNo, accType, accBalance, ifscCode, openingDate, branchName, branchCode, custID, custNomineeName);
			result=service.insertRecord(account1);
			if(result>0) {
				rd=request.getRequestDispatcher("Account.jsp");
				rd.forward(request, response);
			
			}
			else {
				logger.info("Record not inserted");
			}
			break;
			default:
				logger.info("Invalid Choice");
				
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
