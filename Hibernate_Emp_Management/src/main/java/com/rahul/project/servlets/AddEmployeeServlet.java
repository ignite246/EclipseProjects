package com.rahul.project.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.rahul.project.entities.Employee;
import com.rahul.project.factory.FactoryProvider;

public class AddEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fName = request.getParameter("fName").trim();
		String lName = request.getParameter("lName").trim();
		String state = request.getParameter("state").trim();
		String city = request.getParameter("city").trim();
		String post = request.getParameter("post").trim();
		
		//System.out.println(fName+post);
		
		Employee emp = new Employee();
		emp.setfName(fName);
		emp.setlName(lName);
		emp.setState(state);
		emp.setCity(city);
		emp.setPost(post);
		
		Session session = FactoryProvider.getFactory().openSession();
		

		Transaction tx = session.beginTransaction();
		session.save(emp);
		
		
		tx.commit();
		session.close();
		
		JFrame jf = new JFrame();
		
		JOptionPane.showMessageDialog(jf,"Employee " +fName+ " has been added Successfully");  
		
//		response.setContentType("text/html");
//		response.getWriter().print("<h1>Employee added successfully</h1>");
//		response.getWriter().print("<h1><a href='ShowAllEmployees.jsp'>View All</a></h1>");
		
		response.sendRedirect("ShowAllEmployees.jsp");
		
	}

}
