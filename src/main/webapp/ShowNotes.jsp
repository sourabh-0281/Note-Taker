<%@page import="com.entities.Notemaker"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes</title>
    <%@include file="all_js_css.jsp" %>
</head>
<body>
          <div class="container">
               <%@include file="navbar.jsp" %>
               <br>
               <h1 class="text-uppercase">ALL notes</h1>
               
               <div class="row">
                      <div class="col-12">             
				               <%
				                Session ses=FactoryProvider.getFactory().openSession();
				               Query q=ses.createQuery("from Notemaker");
				               List<Notemaker> l=q.list();
				               for(Notemaker n : l){
				            	   %>
				            	 <div class="card mt-3" >
									  <img class="card-img-top m-4 mx-auto" style="max-width:80px "  src="img/note.png" alt="Card image cap">
									  <div class="card-body text-center px-5"> <!-- x means padding from left and right -->
									    <h5 class="card-title"><%= n.getTitle() %></h5>
									    <p class="card-text  text-left">
									        <%= n.getContent() %>
									    </p>
									    <p class="text-left font-weight-bold"><%= n.getAddedDate() %></p>
									      <a href="Updatepage.jsp?noteid=<%=n.getId() %>" class="btn btn-primary">Update</a>
									    <a href="DeleteServlet?noteid=<%=n.getId() %>" class="btn btn-danger">Delete</a>
									  </div>
									</div>   
                               				            	   
				            	   <% 
				               }
				               ses.close();
				               %>				                      
                      </div>
               </div>
           </div>
        
</body>
</html>