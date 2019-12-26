<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@page import="model.DbConnection"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Sign Up</title>
   <%             
        if(session.getAttribute("candSession")!=null){%> 
        <h1><%out.println("you have o log out before sign up");%></h1>
          <%  RequestDispatcher rd= request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }
  
    %>
<script>             
	var ajaxRequest;             
	function validateUserEmail() {                 
		          
		if (window.XMLHttpRequest) {                   
			ajaxRequest = new XMLHttpRequest();                 
		} else if (window.ActiveXObject) {                  
			ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");                 
		}  
	
                    
        ajaxRequest.onreadystatechange = processRequest;            
        var userInput = document.getElementById("email");                 
        var url = "validateServlet?email=" + userInput.value;  
        
                     
       	ajaxRequest.open("GET", url, true);                 
        ajaxRequest.send(null);             
	}  
            
	        
	function processRequest() {                 
		if (ajaxRequest.readyState === 4) {                     
			                  
			var result = ajaxRequest.responseText;
			if (result == "Email already exists") {
	        	document.getElementById("btn_sign_up").disabled = true;
			}
			if (result == "Email is valid") {
	        	document.getElementById("btn_sign_up").disabled = false;
			}
			document.getElementById("msg").innerHTML = result;
		}             
	}        
</script>
</head>
<body>
	<h1>Sign Up</h1>
	
        <form class="form" action="FirstServlet" method="post">
    	Name:*<input class="username" type="text" name="name"> <p>
            Email:*<input class="email" type="email" id="email" name="email" onkeyup="validateUserEmail()">
		<span id="msg"></span> <p>
            password:*<input class="pass" type="password" name="password"> <p>
        Address:*<input class="add" type="text" name="address"> <p>
        Position:* <input class="pos" type="radio" name="position" value="HRmanager">HR manger<br>
                  <input class="pos" type="radio" name="position" value="manager">manger<br> 
                  <input class="pos" type="radio" name="position" value="analysist">Analysist<br>
                  <input class="pos" type="radio" name="position" value="Software Devleoper">Software Devleoper<br> <p>
            Age:<input class="age" type="text" name="age"> <p>
            Phone Number:*<input class="num" type="text" name="phone"> <p>  
             To Upload CV Select files: <input type="file" name="CV"><br><br>         
                      
                      
        <input type="submit" id="btn_sign_up" name="button" value="SignUp">
    </form> <p>
    <script src="js/jquery-1.12.4.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/custom2.js"></script>
</body>
</html>