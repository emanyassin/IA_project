<%-- 
    Document   : search_exam_result
    Created on : Dec 18, 2019, 1:45:36 PM
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
                <td>Exam ID</td>
                <td>Candidate ID</td>
                <td>Exam Type</td>
                <td>Right Answers</td>
                <td>Wrong Answers</td> 
                <td>Skipped Answers</td>
                <td>Score</td>
                <td>Exam Date</td>
            </tr>        
       
        <%
        for(Exam exam : examList){  %>
        <tr>
            <td><% out.print(exam.getExamId());%></td> 
            <td><% out.print(exam.getCandidateId());%></td> 
            <td><% out.print(exam.getType());%></td> 
     
             <td><% out.print(exam.getResult());%></td> 
            <td><% out.print(exam.getExamDate());%></td>
        </tr>
        <%
        }
        %>
         </table>
    </body>
</html>
