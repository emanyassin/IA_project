<%-- 
    Document   : hr_approval
    Created on : Dec 21, 2019, 1:45:36 PM
    Author     : Menna Omar
--%><%@page import="model.Candidate"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="model.DbConnection"%>
<%@page import="java.sql.PreparedStatement"%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            
    </head>
    
    <h1>  HR_Approval </h1>
    
      <%     
              DbConnection con = new DbConnection();
                Connection conn = con.getConnection();
                PreparedStatement ps = conn.prepareStatement("SELECT cv,id,email FROM candidate;");
                Candidate cand = new Candidate();
                ResultSet RS = ps.executeQuery();
                while (RS.next()) {

                    

                    cand.setId("" + RS.getInt("id"));
                     cand.setCV("" + RS.getString("CV"));
                     cand.setEmail("" + RS.getString("email"));
                    PreparedStatement ss = conn.prepareStatement("SELECT CandidateId FROM exam WHERE CandidateId='"+cand.getId()+"';");
                ResultSet vS = ss.executeQuery();     
                if(vS.next()){
                 System.out.println("Candidte cv is shown before");
                
                
                }
                else{
                      %>
                    <form class="form" action="mailto:em.yassin98@gmail.com?subject= job Alert &message=You Are Approved" method="post">
                        <%out.print(cand.getId());%><br><br>
                        <%out.print(cand.getCV());%><br><br><input  type="radio" name="choose" value="approve">approve<br>
                        
        <input type="radio" name="choose" value="disapprove">disapprove<br>
                
                  <input type="submit" value=" Submit"><br>
                  <input type="submit" value=" Home"><br>
                
      
                  
<%}}%>  </form>
  