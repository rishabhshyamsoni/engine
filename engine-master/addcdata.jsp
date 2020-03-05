 <%@ page import="java.sql.*" %>
 <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <center><title>Estimate</title></center>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css1/bootstrap.min.css" rel="stylesheet">
    <link href="css1/style.css" rel="stylesheet">

  </head>
  <body>

    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<h3 class="text-center">
				Rishabh Jewellers
			</h3>
			<blockquote class="blockquote">
				<p class="mb-0">
				   Gold and Silver jewellery Maker and Seller...
				</p>
				<footer class="blockquote-footer">
					Proprietor Contact No. +91-945-367-3718 , +91-904-496-1449 , +91-857-430-6330
				</footer>
			</blockquote>
		</div>
	</div>
	<center>Bharatpuri-B, Ambedkar Nagar near Balaji Mandir, Lucknow</center><br>
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
String reference=request.getParameter("reference");



try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	
	
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","shyam");
	PreparedStatement pst=con.prepareStatement("insert into customernew values(?,?,?,?,?,?,?,?,?,?)");
	pst.setString(1, date1);
	pst.setString(2, name);
	pst.setString(3, product);
	pst.setString(4, weight);
	pst.setString(5, price);
	pst.setString(6, nagad);
	pst.setString(7, udhaar);
	pst.setString(8, mobile);
	pst.setString(9, address);
	pst.setString(10, reference);
	pst.execute();
	con.close();
	out.println("Thanks for Shopping with us.....");
}
catch(Exception e){
	out.println("Must having an error.....");
}

%>
<br>
<center>
<pre><br>
Date:<input type="text" value=<%=date1%>><br>
Name: <input type="text" value=<%=name%>><br>
Product:<input type="text" value=<%=product%>><br>
Weight:<input type="text" value=<%=weight%>><br>
Price:<input type="text" value=<%=price%>><br>
Nagad:<input type="text" value=<%=nagad%>><br>
Udhaar:<input type="text" value=<%=udhaar%>><br>
Mobile:<input type="tel" value=<%=mobile%>><br>
Address:<input type="text" value=<%=address%>><br>
Reference:<input type="text" value=<%=reference%>><br>
</pre>
</center>
<script>
function myFunction() {
  window.print();
}
</script><br>
   <script src="js1/jquery.min.js"></script>
    <script src="js1/bootstrap.min.js"></script>
    <script src="js1/scripts.js"></script>
<center>
<font size="3" ><button onclick="myFunction()" >Get Print</button></font><br>
 <center><a href="signin3.jsp">Home</a></center>
 

</center>
</body>
</html>