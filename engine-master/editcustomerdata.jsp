 <%@page import="java.sql.*,p.*" %>
<%
String date1=request.getParameter("date1");
String name=request.getParameter("name");
String product=request.getParameter("product");
String weight=request.getParameter("weight");
String price=request.getParameter("price");
String nagad=request.getParameter("nagad");
String udhaar=request.getParameter("udhaar");
String mobile=request.getParameter("mobile");
String address=request.getParameter("address");
String reference1=request.getParameter("reference");

System.out.println(reference1);

   try
   {
	  Connection con=ConnProvider.getCon();
       PreparedStatement pst=con.prepareStatement("update customernew set date1=?,product=?,weight=?,price=?,nagad=?,udhaar=?,mobile=?,address=? ,reference=? where name=?");
       pst.setString(1, date1);
  	pst.setString(2, product);
   	pst.setString(3, weight);
   	pst.setString(4, price);
   	pst.setString(5, nagad);
   	pst.setString(6, udhaar);
   	pst.setString(7, mobile);
   	pst.setString(8, address);
   	pst.setString(9, reference1);
 	pst.setString(10, name);
      
       pst.execute();
       con.close();    
       System.out.println(date1);
       System.out.println(name);
       System.out.println(product);
       System.out.println(weight);
       System.out.println(price);
       System.out.println(nagad);
       System.out.println(udhaar);
       System.out.println(mobile);
       System.out.println(address);

    
       response.sendRedirect("showc7.jsp?msg=successfully edited");
       
   }
   
   catch(Exception e)
   {
	  out.println(e);   
   }

%>