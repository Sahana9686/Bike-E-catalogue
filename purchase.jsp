<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
<%@page import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

    <%
    String user = session.getAttribute("user").toString();
    String a = request.getParameter("brand"); 
    String b = request.getParameter("bike");
    String c = request.getParameter("price");
    String d = request.getParameter("color");
    String e = request.getParameter("pname");
   
    
    String dt=null;
    Date dNow = new Date( );
    SimpleDateFormat date2 = new SimpleDateFormat("hh:00");
    dt = date2.format(dNow);
    
    try{

    PreparedStatement ps=connection.prepareStatement("insert into purchased values(?,?,?,?,?,?)");

    
    ps.setString(1,user);
    ps.setString(2,a);
    ps.setString(3,b);
    ps.setString(4,c);
    ps.setString(5,d);
    ps.setString(6,e);
   
    
    
    ps.executeUpdate();
    
    
    
    response.sendRedirect("uviewspare.jsp?msg=Purchased");
    
    
    %>
    <%
    }

    catch(Exception ex)
    {
            out.println(ex.getMessage());
    }
    %>