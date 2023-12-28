
     
        <%@page import="java.sql.*"%>
        <%@ include file="connect.jsp" %>
        <%@ page session="true" %>
        
        <%
        
        String id = request.getParameter("id");
        int k = Integer.parseInt(id);
        
        PreparedStatement ps=connection.prepareStatement("delete from spares where id = "+k+"");
        ps.executeUpdate();
        
        response.sendRedirect("aviewspares.jsp?msg1=sucess");
        
  %>
        
        