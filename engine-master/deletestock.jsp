<%@page import="java.sql.*,p.*" %>
<% 
   String product=request.getParameter("product");
try
{
	Connection con=ConnProvider.getCon();
	PreparedStatement pst=con.prepareStatement("delete from stocknew where product=?");
	pst.setString(1,product);
	pst.execute();
    con.close();
    response.sendRedirect("shows9.jsp?msg=successfully deleted");
}
catch(Exception e)
{
	out.println(e);
}
%>