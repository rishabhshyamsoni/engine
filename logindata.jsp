<%@page import="java.sql.*"%>
<html>
<body>


    <%
      String name=request.getParameter("name");
      String password=request.getParameter("password");
      String userid=request.getParameter("userid");
      String number=request.getParameter("number");
      String aadhaar=request.getParameter("aadhaar");
      String address=request.getParameter("address");
       
      /* HttpSession sn=request.getSession();
       */
       
       try
       {
    	   Class.forName("oracle.jdbc.driver.OracleDriver");
    	   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","shyam");
    	   Statement stmt=con.createStatement();
    	   ResultSet rs=stmt.executeQuery("select *from engine where password='"+password+"'");
    	  
    	   if(rs.next())
    	   {
    		    session.setAttribute("userid",userid ); 
    		      response.sendRedirect("signin3.jsp");  
    		}
    	    
    	   else
    	      {
    	    	  response.sendRedirect("error.jsp");
    	      } 
    	   con.close();
    	   
       }
       catch(Exception e)
       {
    		  e.printStackTrace();
    		    	   
       }
       
     /*  if(name.equals("admin")&&pass.equals("12345"))
      {
    	 session.setAttribute("aname",name);
    	response.sendRedirect("welcome.jsp");  
      }
      else
      {
    	  response.sendRedirect("error.jsp");
      } */
    
    %>
    
</body>
</html>