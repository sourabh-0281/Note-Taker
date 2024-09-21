package com.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Notemaker;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class UpdateServlet
 */
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       public UpdateServlet() {
        super();
       }

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        try {
                     String title=request.getParameter("title");				
                     String content=request.getParameter("content");
                     int id=Integer.parseInt(request.getParameter("noteid").trim());
                     Session s=FactoryProvider.getFactory().openSession();
                     Transaction t=s.beginTransaction();
                     Notemaker n= s.get(Notemaker.class,id);
                     n.setTitle(title);
                     n.setContent(content); 
                     n.setAddedDate(new Date());
                     t.commit();
                     s.close();
                     response.sendRedirect("ShowNotes.jsp");
			} catch (Exception e) {

			}       
	
	}

}
