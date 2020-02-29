<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Rishabh Jewellers</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

  </head>
  <body>

    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<h3 class="text-center">
				Jewellery Manage Engine
			</h3>
			<blockquote class="blockquote">
				<p class="mb-0">
					Welcome to Rishabh Jewellers , here you can view all your customer details...
				</p>
				<footer class="blockquote-footer">
					Developer Rishabh Soni
				</footer>
			</blockquote>
		
			<table class="table table-bordered table-sm">
			<thead> <tr class="table-success"> <th>Index<th> Date </th> <th> Name </th> <th> Product </th> <th> Weight </th> <th> Price </th> <th> Nagad </th> <th> Udhaar </th> <th> Mobile </th> <th> Address </th> <th> Reference </th><th> Photo </th><th> Delete </th> <th> Edit </th> </tr> </thead>
				<% 
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","shyam");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select *from customernew");
int index=0;
while(rs.next())
{
%>
<tr>
<td><%=++index%></td><td><%=rs.getString(1)%></td><td><%=rs.getString(2)%></td><td><%=rs.getString(3)%></td><td ><%=rs.getString(4)%></td><td><%=rs.getString(5)%></td><td><%=rs.getString(6)%></td><td><%=rs.getString(7)%></td><td><%=rs.getString(8)%></td><td><%=rs.getString(9)%></td><td><%=rs.getString(10)%></td>
<td>Photo</td>
<td>
 <a href="deletecustomer.jsp?name=<%=rs.getString(2)%>">Delete</a>
  </td>
 
 <td>
 <a href="editcustomer.jsp?name=<%=rs.getString(2)%>">Edit</a> 

</td>
</tr>
<%
}
con.close();
%>
</table>
		</div>
	</div>
</div>
 <center><a href="signin3.jsp">Home</a></center>
 <%-- <body><%
 response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
if(session.getAttribute("userid")==null)
	response.sendRedirect("index.jsp");
 %></body> --%>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>