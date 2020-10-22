package com.rahul.project.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.rahul.project.factory.FactoryProvider;
import com.rahul.project.entities.Employee;

public class UpdateEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int empId = Integer.parseInt(request.getParameter("empId").trim());
		String fName = request.getParameter("fName").trim();
		String lName = request.getParameter("lName").trim();
		String state = request.getParameter("state").trim();
		String city = request.getParameter("city").trim();
		String post = request.getParameter("post").trim();
		
		
		
		Session s = FactoryProvider.getFactory().openSession();
		
		Employee emp = s.get(Employee.class, empId);
		emp.setEmpId(empId);
		emp.setfName(fName);
		emp.setlName(lName);
		emp.setState(state);
		emp.setCity(city);
		emp.setPost(post);
		
		Transaction tx = s.beginTransaction();
		
		s.save(emp);
		
		tx.commit();
		s.close();
		
		
		response.sendRedirect("ShowAllEmployees.jsp");
		
		
	}

}
