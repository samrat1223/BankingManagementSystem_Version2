package com.obms.handler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.obms.bean.CustomerBean;
import com.obms.dao.CustomerDao;


@WebServlet("/CustomerHandler")
public class CustomerHandler extends HttpServlet {
	
	private CustomerDao dao;
	private static final long serialVersionUID = 1L;
       
    
    public CustomerHandler() {
        super();
        dao= new CustomerDao();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		
		if(action.equalsIgnoreCase("insert")) {
    		String uId = request.getParameter("cust_id");
    		int Cust_ID = Integer.parseInt(uId);
    		
    		String cust_address=request.getParameter("cust_address");
    		String cust_name=request.getParameter("cust_name");
    		String cust_password=request.getParameter("cust_password");
    		String cust_aadharno=request.getParameter("cust_aadharno");
    		String cust_panno=request.getParameter("cust_panno");
    		String cust_email=request.getParameter("cust_email");
    		
    		String cust_mobileno=request.getParameter("cust_mobileno");
    		int Cust_MobileNo=Integer.parseInt(cust_mobileno);
    		
    		String cust_pincode=request.getParameter("cust_pincode");
    		int Cust_PinCode = Integer.parseInt(cust_pincode);
    		
    		String cust_state = request.getParameter("cust_state");
    		String user_name = request.getParameter("user_name");
    		String cust_nomineename = request.getParameter("cust_nomineename");
    		String cust_dob = request.getParameter("cust_dob");
    		
    		String accnt_no = request.getParameter("accnt_no");
    		int Accnt_No = Integer.parseInt(accnt_no); 
    		
    		
    		CustomerBean customer = new CustomerBean();
    		customer.setCust_ID(Cust_ID);
    		

    		customer.setCust_Address(cust_address);

    		customer.setCust_Name(cust_name);

    		customer.setCust_Password(cust_password);

    		customer.setCust_Aadharno(cust_aadharno);

    		customer.setCust_Panno(cust_panno);

    		customer.setCust_Email(cust_email);

    		customer.setCust_MobileNo(Cust_MobileNo);

    		customer.setCust_PinCode(Cust_PinCode);

    		customer.setCust_State(cust_state);

    		customer.setUser_Name(user_name);

    		customer.setCust_NomineeName(cust_nomineename);

    		customer.setCust_DOB(cust_dob);
    		customer.setAccnt_No(Accnt_No);
    		
    		
    		
    		dao.addCustomer(customer);
    		request.setAttribute("customer", dao.getAllCustomer()); 
    		//RequestDispatcher rd = request.getRequestDispatcher("/listCustomer.jsp");
            //rd.forward(request, response);
    		response.sendRedirect("listCustomer.jsp");
    	}
		
		if (action.equalsIgnoreCase("delete"))
		{
            String cust_id = request.getParameter("cust_id");
            int uid = Integer.parseInt(cust_id);
            dao.removeCustomer(uid);
           
            request.setAttribute("customer", dao.getAllCustomer());
           // RequestDispatcher rd = request.getRequestDispatcher("/listCustomer.jsp");
            response.sendRedirect("listCustomer.jsp");
            //rd.forward(request, response);
        }
		
		if (action.equalsIgnoreCase("edit"))
		{
			
        	String cust_id = request.getParameter("cust_id");
            int uid = Integer.parseInt(cust_id);            
            CustomerBean customer = new CustomerBean();
            
        	customer.setCust_ID(uid);
        	
        	customer.setCust_Address(request.getParameter("cust_address"));
        	customer.setCust_Name(request.getParameter("cust_name"));
        	customer.setCust_Password(request.getParameter("cust_password"));
        	customer.setCust_Aadharno(request.getParameter("cust_aadharno"));
        	customer.setCust_Panno(request.getParameter("cust_panno"));
        	customer.setCust_Email(request.getParameter("cust_email"));
    		
    		customer.setCust_MobileNo(Integer.parseInt(request.getParameter("cust_mobileno")));
    		
    		customer.setCust_PinCode(Integer.parseInt(request.getParameter("cust_pincode")));
    		
    		customer.setCust_State(request.getParameter("cust_state"));
    		
    		customer.setUser_Name(request.getParameter("user_name"));
    		
    		customer.setCust_NomineeName(request.getParameter("cust_nomineename"));
    		
    		customer.setCust_DOB(request.getParameter("cust_dob"));
            
    		customer.setAccnt_No(Integer.parseInt(request.getParameter("accnt_no")));
    		
            dao.editCustomer(customer);
            request.setAttribute("customer", dao.getAllCustomer());
           // RequestDispatcher rd = request.getRequestDispatcher("/listCustomer.jsp");
            //rd.forward(request, response);
            response.sendRedirect("listCustomer.jsp"); 
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
