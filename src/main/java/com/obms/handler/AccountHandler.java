package com.obms.handler;

import java.io.IOException;

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
    AccountService service=new AccountService();  
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action=request.getParameter("action");
		long id, accNo, accBalance;
		RequestDispatcher rd;
		int result, custID;
		String accType, ifscCode, openingDate, branchName, branchCode, custNomineeName;
		switch(action){
		case "accountid":
			id=Long.valueOf(request.getParameter("search"));
			System.out.println(id);
			request.setAttribute("search", id);
			rd=request.getRequestDispatcher("AccountID.jsp");
			rd.forward(request, response);
			break;
		case "editform":
			id=Long.valueOf(request.getParameter("accID"));
			System.out.println(id);
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
			System.out.println(accNo+" "+ accType+" "+ accBalance+" "+ ifscCode+" "+ openingDate+" "+ branchName+" "+ branchCode+" "+ custID+" "+ custNomineeName);
			Account account=new Account(accNo, accType, accBalance, ifscCode, openingDate, branchName, branchCode, custID, custNomineeName);
			result=service.updateRecord(account);
			if(result>0) {
				rd=request.getRequestDispatcher("Account.jsp");
				rd.forward(request, response);
			}
			else {
				System.out.println("Record not updated");
				
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
			System.out.println(accNo+" "+ accType+" "+ accBalance+" "+ ifscCode+" "+ openingDate+" "+ branchName+" "+ branchCode+" "+ custID+" "+ custNomineeName);
			Account account1=new Account(accNo, accType, accBalance, ifscCode, openingDate, branchName, branchCode, custID, custNomineeName);
			result=service.insertRecord(account1);
			if(result>0) {
				rd=request.getRequestDispatcher("Account.jsp");
				rd.forward(request, response);
			
			}
			else {
				System.out.println("Record not inserted");
			}
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
