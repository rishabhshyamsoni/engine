<%@page import="java.sql.*,p.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link href="css1/bootstrap.min.css" rel="stylesheet">
    <link href="css1/style.css" rel="stylesheet">
</head>
<body>
<div class="container">

<div class="row">
<div class="col-sm-8">
<% 
 String name=request.getParameter("name");
Connection con=ConnProvider.getCon();
Statement st=con.createStatement();
System.out.print(con);
ResultSet rs=st.executeQuery("select * from customernew where name='"+name+"'");

if(rs.next())
{
%>
    <form action="editcustomerdata.jsp">
              <div class="form-group">
					 
				<label for="exampleInputUserid">
						Date
					</label>
					<input type="text" class="form-control" id="exampleInputUserid" name="date1" value="<%=rs.getString(1) %>">
				</div> 
			
				<div class="form-group">
				
					 
					<label for="exampleInputUserid">
						Name
					</label>
					<input type="text" class="form-control" id="name" name="name" value="<%=rs.getString(2) %>">
				</div>
				<div class="form-group">
					 
					<label for="exampleInputProduct">
						Product
					</label>
					<input type="text" class="form-control" id="exampleInputProduct" name="product" value="<%=rs.getString(3) %>">
				</div>
				<div class="form-group">
					 
					<label for="exampleInputName">
						Weight
					</label>
					<input type="text" class="form-control" id="exampleInputName" name="weight" value="<%=rs.getString(4) %>">
				</div>
				<div class="form-group">
					 
					<label for="exampleInputNumber">
						Price
					</label>
					<input type="text" class="form-control" id="exampleInputNumber" name="price" value="<%=rs.getString(5) %>">
				</div>
				<div class="form-group">
					 
					<label for="exampleInputAadhaar">
						Nagad
					</label>
					<input type="text" class="form-control" id="exampleInputAadhaar" name="nagad" value="<%=rs.getString(6) %>">
				</div>
				<div class="form-group">
					 
					<label for="exampleInputAddress">
						Udhaar
					</label>
					<input type="text" class="form-control" id="exampleInputAddress" name="udhaar" value="<%=rs.getString(7) %>">
				</div>
	           <center>
	           <div class="form-group">
					 
					<label for="exampleInputAddress">
						Mobile
					</label>
					<input type="tel" class="form-control" id="mobile" name="mobile" value="<%=rs.getString(8) %>">
				</div>
				<div class="form-group">
					 
					<label for="exampleInputAddress">
						Address
					</label>
					<input type="text" class="form-control" id="exampleInputAddress" name="address" value="<%=rs.getString(9) %>">
				</div>
				<div class="form-group">
					 
					<label for="exampleInputAadhaar">
						Reference
					</label>
					<input type="text" class="form-control" id="exampleInputAadhaar" name="reference" value="<%=rs.getString(10) %>">
				</div>
				<div class="form-group">
					 
					<label for="exampleInputAadhaar">
						Photo
					</label>
					<input type="file" class="form-control" id="exampleInputAadhaar" name="reference">
				</div>
				
  <input type="submit" class="btn btn-primary" value="Update"></input>
  
</form>
<%
}
con.close();
%>

</div>
</div>
<div class="row">
   <div class="col-sm-4">
   </div>
</div>
</div>
 <script src="js1/jquery.min.js"></script>
    <script src="js1/bootstrap.min.js"></script>
    <script src="js1/scripts.js"></script>
</body>
</html>