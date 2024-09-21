package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Notemaker;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class DeleteServlet
 */
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
      public DeleteServlet() {
        super();
    }
      
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
              int noteid=Integer.parseInt(request.getParameter("noteid").trim());
              Session s=FactoryProvider.getFactory().openSession();
              Transaction t=s.beginTransaction();
              Notemaker n=(Notemaker) s.get(Notemaker.class, noteid);
              s.remove(n);
              t.commit();
              s.close();
              response.sendRedirect("ShowNotes.jsp");
		} catch (Exception e) {

		}
	}

}
