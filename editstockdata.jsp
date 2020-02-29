 <%@page import="java.sql.*,p.*" %>
<%
String date1=request.getParameter("date1");
String metal=request.getParameter("metal");
String metalrate=request.getParameter("metalrate");
String product=request.getParameter("product");
String productdetail=request.getParameter("productdetail");
String quantity=request.getParameter("quantity");
String weight=request.getParameter("weight");
String retailer=request.getParameter("retailer");



   try
   {
	  Connection con=ConnProvider.getCon();
       PreparedStatement pst=con.prepareStatement("update stocknew set date1=?,metal=?,metalrate=?,productdetail=?,quantity=?,weight=?,retailer=?  where product=?");
       pst.setString(1, date1);
  	pst.setString(2, metal);
   	pst.setString(3, metalrate);
   	pst.setString(4, productdetail);
   	pst.setString(5, quantity);
   	pst.setString(6, weight);
   	pst.setString(7, retailer);
	pst.setString(8, product);  
       pst.execute();
       con.close();    
      

    
       response.sendRedirect("shows9.jsp?msg=successfully edited");
       
   }
   
   catch(Exception e)
   {
	  out.println(e);   
   }

%>