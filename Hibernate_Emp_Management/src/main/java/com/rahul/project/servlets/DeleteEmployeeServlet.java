package com.rahul.project.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.rahul.project.entities.Employee;
import com.rahul.project.factory.FactoryProvider;

public class DeleteEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int empId = Integer.parseInt(request.getParameter("empId").trim());
		
		Session s = FactoryProvider.getFactory().openSession();
		Transaction tx = s.beginTransaction();
		
		Employee emp = s.get(Employee.class, empId);
		s.delete(emp);
		
		tx.commit();
		s.close();
		
		response.sendRedirect("ShowAllEmployees.jsp");
		
		
	}



}
