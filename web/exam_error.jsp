<%-- 
    Document   : exam_error
    Created on : Dec 21, 2019, 8:25:30 AM
    Author     : Menna Omar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Sorry, you have only one chance to solve a specified type exam per session </h1>
        <a href="candidate_home.jsp"> get Another exam?</a>
        <form action="FirstServlet" >
            <input type="submit" name="button" value="logout">
        </form>
    </body>
</html>
