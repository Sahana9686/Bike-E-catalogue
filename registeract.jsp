<%@page import="java.net.InetAddress"%>
<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
    <%
    
    String username = request.getParameter("username");
    String password = request.getParameter("password"); 
    String email = request.getParameter("email");
    String dob = request.getParameter("dob");
    String gender = request.getParameter("gender"); 
    String address = request.getParameter("address");
    String mobile = request.getParameter("mobile");
    
    String ip = null;
    
    int id = 0;
    
    String q = "select max(id) from user";
    Statement st = connection.createStatement();
    ResultSet rs1 = st.executeQuery(q);
    if(rs1.next())
    {
        id = rs1.getInt("max(id)");
        
    }
    
    
    //for original ip address only
    
    // InetAddress IP = InetAddress.getLocalHost();
      //  System.out.println("IP of my system is := "+IP.getHostAddress());
    
    
    // end
    
    String qq = "select * from user where id = "+id+"";
    Statement stq = connection.createStatement();
    ResultSet rs = st.executeQuery(qq);
        
    if(rs.next())
    {    
    
    ip = rs.getString("ip");
    
    String[] value = ip.split(". ");
     System.out.println("Length    "+value.length);

    String a1 = value[0];
   String a2 = value[1];
    
    System.out.println("First    "+a1);
     System.out.println("Second   "+a2);
   String a3 = value[2];
    
   int f1 = Integer.parseInt(a3);
    
   int f2 = f1+1;
    
    String f3 = Integer.toString(f2);
    
     ip =a1+". "+a2+". "+f3;
  
    
    }
    
    else{
         ip = "192. 168. 1";
        
    }
    
   
    
        
    try{
        
    String query = "select * from user where username = '"+username+"' ";
    Statement st3 = connection.createStatement();
    ResultSet rs3 = st3.executeQuery(query);
        
    if(rs3.next())
    {     
    
     response.sendRedirect("register.jsp?msgg=Username_Already_Existed");
    }
    
    else{
    
    PreparedStatement ps=connection.prepareStatement("insert into user(username,password,email,dob,gender,address,mobile,ip) values(?,?,?,?,?,?,?,?)");

    ps.setString(1,username);
    ps.setString(2,password);
    ps.setString(3,email);
    ps.setString(4,dob);
    ps.setString(5,gender);
    ps.setString(6,address);
    ps.setString(7,mobile);
    ps.setString(8,ip);
       
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("user.jsp?msg=Registered");
    }
    else{
    response.sendRedirect("register.jsp?m1=Failed");    
    }
    
    }
  
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>