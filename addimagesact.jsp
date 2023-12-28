<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
    <%
    int id = 0;
    String a = request.getParameter("brand"); 
    String b = request.getParameter("bike");
   
    String f = request.getParameter("pic");
      String g = request.getParameter("color");
    try{

    PreparedStatement ps=connection.prepareStatement("insert into images values(?,?,?,?,?)");

    ps.setInt(1,id);
    ps.setString(2,a);
    ps.setString(3,b);
    ps.setString(4,f);
      ps.setString(5,g);
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("addimages.jsp?msg=Added");
    }
    else{
    response.sendRedirect("addimages.jsp?m1=Failed");    
    }
    %>
    <%
    }

    catch(Exception ex)
    {
            out.println(ex.getMessage());
    }
    %>