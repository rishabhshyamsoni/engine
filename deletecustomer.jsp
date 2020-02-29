 <%@page import="java.sql.*,p.*" %>
<% 
   String name=request.getParameter("name");
try
{
	Connection con=ConnProvider.getCon();
	PreparedStatement pst=con.prepareStatement("delete from customernew where name=?");
	pst.setString(1,name);
	pst.execute();
    con.close();
    response.sendRedirect("showc7.jsp?msg=successfully deleted");
}
catch(Exception e)
{
	out.println(e);
}
%>