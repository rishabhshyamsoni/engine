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
 <%--  <%
  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
  response.setHeader("Pragma", "no-cache, no-store, must-revalidate");
  if(session.getAttribute("userid")==null)
	  response.sendRedirect("index.jsp");
  %> --%>
    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<h3 class="text-center text-success">
			</h3>
			
			<h1>
				<center>Jewellery Manage Engine</center>
			</h1>
			
			<hr size="3">
			<table height="30" width="1200" cellspacing="10">
			<tr>
			     <td><a href ="addc6.jsp">Add Customer</a></td>
			     <td><a href="showc7.jsp">Show Customer</a></td>
			     <td><a href="adds8.jsp">Add Stock</a></td>
			     <td><a href="shows9.jsp">Show Sock</a></td>
			</tr>
			</table>
			<hr size="3">
			<p class="text-success lead">
				Welcome   <%=session.getAttribute("userid")%> You Successfully Login...
			</p>
			<blockquote class="blockquote">
				<p class="mb-0">
					You can choose either you want to open application for Client or Stock....
				</p>
				<footer class="blockquote-footer">
					Developer Rishabh
				</footer>
			</blockquote> 
			<hr size="3">
			<a href="cms4.jsp">
			<button type="button" class="btn btn-lg btn-block btn-info">
				C.M.S.
			</button> 
			</a><br><br>
			<a href="sms5.jsp">
			<button type="button" class="btn btn-block btn-lg btn-success">
				S.M.S.
			</button>
			</a> <br><br>
		<center> <a href="index.jsp" class="btn btn-link" type="button">Logout</a></center>
			
		</div>
	</div>
</div>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>