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
 String product=request.getParameter("product");
Connection con=ConnProvider.getCon();
Statement st=con.createStatement();
System.out.print(con);
ResultSet rs=st.executeQuery("select * from stocknew where product='"+product+"'");

if(rs.next())
{
%>
    <form action="editstockdata.jsp">
             <div class="form-group">
					 
				<label for="exampleInputUserid">
						Date
					</label>
					<input type="text" class="form-control" id="date1" name="date1" value="<%=rs.getString(1) %>">
				</div> 
			
				<div class="form-group">
				
					 
					<label for="exampleInputUserid">
						Metal
					</label>
					<input type="text" class="form-control" id="metal" name="metal" value="<%=rs.getString(2) %>">
				</div>
				<div class="form-group">
					 
					<label for="exampleInputProduct">
						MetalRate
					</label>
					<input type="text" class="form-control" id="metalRate" name="metalrate" value="<%=rs.getString(3) %>">
				</div>
				<div class="form-group">
					 
					<label for="exampleInputName">
						Product
					</label>
					<input type="text" class="form-control" id="product" name="product" value="<%=rs.getString(4) %>">
				</div>
				<div class="form-group">
					 
					<label for="exampleInputNumber">
						ProductDetail
					</label>
					<input type="text" class="form-control" id="productDetail" name="productdetail" value="<%=rs.getString(5) %>">
				</div>
				<div class="form-group">
					 
					<label for="exampleInputAadhaar">
						Quantity
					</label>
					<input type="text" class="form-control" id="quantity" name="quantity" value="<%=rs.getString(6) %>">
				</div>
				<div class="form-group">
					 
					<label for="exampleInputAddress">
						Weight
					</label>
					<input type="text" class="form-control" id="weight" name="weight" value="<%=rs.getString(7) %>">
				</div>
	           <center>
	           <div class="form-group">
					 
					<label for="exampleInputAddress">
						Retailer
					</label>
					<input type="text" class="form-control" id="retailer" name="retailer" value="<%=rs.getString(8) %>">
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