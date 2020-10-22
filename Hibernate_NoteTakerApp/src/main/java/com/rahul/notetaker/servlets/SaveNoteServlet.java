package com.rahul.notetaker.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.rahul.notetaker.entities.Note;
import com.rahul.notetaker.helper.FactoryProvider;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			
			Note note = new Note(title,content,new Date());
			
			Session s = FactoryProvider.getFactory().openSession();
			
			Transaction tx = s.beginTransaction();
			
			s.save(note);
			
			tx.commit();
			
			s.close();
			
			response.sendRedirect("all_notes.jsp");
			
			
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
