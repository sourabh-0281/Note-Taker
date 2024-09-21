<%@page import="com.entities.Notemaker"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
              <!-- NAV BAR -->
	 <div class="container "> <!-- container-fluid will make navbar full width -->
			          <%@include file="navbar.jsp" %>
			          <h1>Edit Your Note</h1>
			          <br>
			          <%  
			            int noteid=Integer.parseInt(request.getParameter("noteid").trim());
			          Session s=FactoryProvider.getFactory().openSession();
		              Transaction t=s.beginTransaction();
		              Notemaker n=(Notemaker) s.get(Notemaker.class, noteid);
			          %>
	               
	            <form action="UpdateServlet" method="post">
	                  <input type="hidden" value=<%= n.getId() %> name="noteid" >
	            
		                <!-- TITLE -->
						  <div class="form-group">
						    <label for="title">Note title</label>
						    <input required  name="title"   type="text" class="form-control" id="title" aria-describedby="emailHelp" 
						                placeholder="Enter Title"  value="<%=n.getTitle()%>"> 
						  </div>
						  
						  <!-- CONTENT -->
						  <div class="form-group">
						    <label for="content">Note content</label>
						     <textarea name="content" 
						      				required="required"
						                     class="form-control" 
						                      id="content"  
						                      placeholder="Enter your content here" 
						                      style="height: 250px;"
						                        ><%=n.getContent()%>
						           </textarea>
						  </div>
						  
						  <!-- SUBMIT -->
						  <div class="text-center container">
						  <button type="submit" class="btn btn-success">save</button>
						  </div>
			  </form>		          
			          
    </div>
              <!--END OF NAV BAR -->

</body>
</html>