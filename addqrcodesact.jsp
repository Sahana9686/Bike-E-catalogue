<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
    <%
    int id = 0;
   
    String bike = request.getParameter("bike");
   
    String qr = request.getParameter("pic");
     
    try{

    PreparedStatement ps=connection.prepareStatement("insert into qrcodes values(?,?,?)");

    ps.setInt(1,id);
    ps.setString(2,bike);
    ps.setString(3,qr);
   
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("aqrcodes.jsp?msg=Added");
    }
    else{
    response.sendRedirect("aqrcodes.jsp?m1=Failed");    
    }
    %>
    <%
    }

    catch(Exception ex)
    {
            out.println(ex.getMessage());
    }
    %>