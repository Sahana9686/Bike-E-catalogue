<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
    <%
    int id = 0;
    String a = request.getParameter("brand"); 
    String b = request.getParameter("bike");
   
    String f = request.getParameter("color");
     String g = request.getParameter("pname");
          String h = request.getParameter("price");
    try{

    PreparedStatement ps=connection.prepareStatement("insert into spares values(?,?,?,?,?,?)");

    ps.setInt(1,id);
    ps.setString(2,a);
    ps.setString(3,b);
    ps.setString(4,g);
      ps.setString(5,f);
 ps.setString(6,h);
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("addspares.jsp?msg=Added");
    }
    else{
    response.sendRedirect("addspares.jsp?m1=Failed");    
    }
    %>
    <%
    }

    catch(Exception ex)
    {
            out.println(ex.getMessage());
    }
    %>