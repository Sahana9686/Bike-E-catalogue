<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
   
    try{
       
      String query1="select * from user where username='"+username+"' and password='"+password+"'"; 
      Statement st1=connection.createStatement();
      ResultSet rs=st1.executeQuery(query1);
      
	if(rs.next())
        {
         String ip = rs.getString("ip");
            session.setAttribute("user",username);
            System.out.println("User:"+username);
            session.setAttribute("ip",ip);
            
                  
         response.sendRedirect("userhome.jsp?msg=success");
        }
       else 
        {
            response.sendRedirect("user.jsp?m1=You are not Authorised User");
        }
	}
    
        catch(Exception e)
        {
        System.out.println("Error in studentact"+e.getMessage());
        }
%>