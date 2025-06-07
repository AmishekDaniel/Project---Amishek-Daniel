<%-- 
    Document   : loginjava
    Created on : 24 Apr, 2025, 3:43:31 PM
    Author     : leina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
           try{

                     String b=request.getParameter("email");
                    String c=request.getParameter("password");
                    

                         
                                  
                             
                       String q="Select * from users where email='"+b+"' and password='"+c+"'";
                        String v="insert into login_history ( email, password) values( '"+b+"', '"+c+"')";
                  
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/resto?","root","");
                     Statement st=ob.createStatement();
                     int o=st.executeUpdate(v);
                     ResultSet i=st.executeQuery(q);
            
                 
                     if(i.next()){  %>
                     
                         <script>
                             
                      
                             window.location="index.jsp"
                              alert("successfully login");
                          </script>
           
                          
                     <%} 
                    else{ %>
                        
                          <script>
                          
                             alert("Login failed" )
                             window.location="login.jsp"
                             
                          </script>
                          
             <%} }catch (Exception e){
                        out.print(e);}
              
    
                    
                    
                    %>
    </body>
</html>
