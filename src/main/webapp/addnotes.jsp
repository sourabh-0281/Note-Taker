<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Add Notes</title>
      <%@include file="all_js_css.jsp" %>
  </head>
  <body>
     
         <!-- NAV BAR -->
      <div class="container "> <!-- container-fluid will make navbar full width -->
          <%@include file="navbar.jsp" %>
    				
     <!-- END OF NAVBAR -->
     <br>
     <h1>Please fill your note details</h1>
     <br>
     
         <!-- THIS IS ADD FORM -->
         <form action="SaveNoteServlet" method="post">
         
                <!-- TITLE -->
				  <div class="form-group">
				    <label for="title">Note title</label>
				    <input required  name="title"   type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter Title"> 
				  </div>
				  
				  <!-- CONTENT -->
				  <div class="form-group">
				    <label for="content">Note content</label>
				     <textarea name="content" 
				      				required="required"
				                     class="form-control " 
				                      id="content"  
				                      placeholder="Enter your content here" 
				                      style="height: 250px;"
				                      ></textarea>
				  </div>
				  
				  <!-- SUBMIT -->
				  <div class="text-center container">
				  <button type="submit" class="btn btn-primary">Add</button>
				  </div>
			</form>
		<!-- THIS IS END OF ADD FORM -->	
     </div> 
  </body>
</html>