<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String name=request.getParameter("name");
String password=request.getParameter("password");
String userid=request.getParameter("userid");
String number=request.getParameter("number");
String aadhaar=request.getParameter("aadhaar");
String address=request.getParameter("address");

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	
	
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","shyam");
	PreparedStatement pst=con.prepareStatement("insert into engine values(?,?,?,?,?,?)");
	pst.setString(1, name);
	pst.setString(2, password);
	pst.setString(3, userid);
	pst.setString(4, number);
	pst.setString(5, aadhaar);
	pst.setString(6, address);
	pst.execute();
	con.close();
	out.println("Successfully inserted.....");
}
catch(Exception e){
	out.println("Must having an error.....");
}

%>

<a href="index.jsp">Go to Login Page..</a>
</body>
</html>