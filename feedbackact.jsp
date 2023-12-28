<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
    <%
    int id = 0;
    String a = request.getParameter("bike"); 
    String b = request.getParameter("feedback");
    String c = session.getAttribute("user").toString();
    
    try{

    PreparedStatement ps=connection.prepareStatement("insert into feedback values(?,?,?,?)");

    ps.setInt(1,id);
    ps.setString(2,c);
    ps.setString(3,a);
    ps.setString(4,b);
    
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("feedback.jsp?msg=Added");
    }
    else{
    response.sendRedirect("feedback.jsp?m1=Failed");    
    }
    %>
    <%
    }

    catch(Exception ex)
    {
            out.println(ex.getMessage());
    }
    %>