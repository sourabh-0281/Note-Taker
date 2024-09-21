package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Notemaker;
import com.helper.FactoryProvider;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	    
	//We deleted doGet() as method="Post" in form
	
    	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  try {
             String title=request.getParameter("title");
             String content=request.getParameter("content");
             
             Notemaker note=new Notemaker(title,content,new Date() );
       
             //Predefined methods simply defined in this class so we dont need to write whole code
             								   //this will return sf and then .opensession		
             Session ses=FactoryProvider.getFactory().openSession();
             Transaction t=ses.beginTransaction();
              ses.persist(note);
             t.commit();
             ses.close();             
             
             response.setContentType("text.html");
             PrintWriter out=response.getWriter();
             out.print("<h1 style='text-align:center'>Added successfully</h1>");
             out.print("<h1 style='text-align:center'><a href='ShowNotes.jsp'>View all notes</a></h1>");
		} catch (Exception e) {

		}
	}

}
