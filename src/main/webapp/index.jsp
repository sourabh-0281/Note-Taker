<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Home page</title>
          <%@include file="all_js_css.jsp" %>
  </head>
  <body>
  
     <!-- NAV BAR -->
     <div class="container"> <!-- container-fluid will make navbar full width -->
          <%@include file="navbar.jsp" %>
          <br>
          
          <div class="card pt-3  pb-3">
                <img alt="" class="img-fluid mx-auto"  style="max-width: 400px" src="img/note.png">
                <h1 class="text-primary text-uppercase text-center mt-4">Start taking your Notes</h1>
                
                <div class="container text-center">
                <button onclick="redirectToPage()" class="btn btn-outline-primary">Start</button>
                </div>
          </div>
     </div>
    <!-- END OF NAVBAR --> 				
     
    

  </body>
</html>