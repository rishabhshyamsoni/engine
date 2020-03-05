 <%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@ page import="java.sql.*" %>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String date1=request.getParameter("date1");
/* SimpleDateFormat formater = new SimpleDateFormat("dd-MM-yyyy hh:mm:ss");
Date result = formater.parse(dateis); */
String metal=request.getParameter("metal");
String metalrate=request.getParameter("metalrate");
String product=request.getParameter("product");
String productdetail=request.getParameter("productdetail");
String quantity=request.getParameter("quantity");
String weight=request.getParameter("weight");
String retailer=request.getParameter("retailer");





try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	
	
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","shyam");
	PreparedStatement pst=con.prepareStatement("insert into stocknew values(?,?,?,?,?,?,?,?)");
	pst.setString(1, date1);
	pst.setString(2, metal);
	pst.setString(3, metalrate);
	pst.setString(4, product);
	pst.setString(5, productdetail);
	pst.setString(6, quantity);
	pst.setString(7, weight);
	pst.setString(8, retailer);
	
	pst.execute();
	con.close();
	out.println("Successfully inserted.....");
}
catch(Exception e){
	out.println("Must having an error.....");
}

%>
<center>
 <center><a href="signin3.jsp">Home</a></center>
</center>
</body>
</html>