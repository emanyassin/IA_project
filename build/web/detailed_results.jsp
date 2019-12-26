<%-- 
    Document   : detailed_results
    Created on : Dec 20, 2019, 10:15:30 AM
    Author     : Menna Omar
--%>

<%@page import="model.Exam"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
List<Exam> examList = (List<Exam>)request.getAttribute("examList");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>search result</title>
    </head>
    <body>
         <form action="FirstServlet">
            <input type="submit" name="button" value="logout"> 
            
        </form>
        <form action="hr_home.jsp">
           
            <input type="submit" name="button" value="Home">
        </form>
       
        <h1>Search Result about Exam Date :</h1>
        <table cellspacing ="20" border="1">
            <tr>
                <td>ID</td>
                <td>Exam ID</td>
                <td>Question ID</td>
                <td>Exam Type</td>
                <td>Right Answer</td>
                <td>Selected Answer</td> 
             
               
            </tr>        
       
        <%
        for(Exam exam : examList){  %>
        <tr>
            <td><% out.print(exam.getExamId());%></td> 
            <td><% out.print(exam.getExamDetailedId());%></td> 
            <td><% out.print(exam.getQuestionId());%></td> 
            <td><% out.print(exam.getRightAnswer());%></td> 
            <td><% out.print(exam.getSelectedAnswer());%></td> 
            
             
        </tr>
        <%
        }
        %>
         </table>
    </body>
</html>
