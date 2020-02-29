<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Rishabh Jewellers</title>

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
				Jewellery Manage Engine
			</h3>
			<blockquote class="blockquote">
				<p class="mb-0">
					Welcome to Rishabh Jewellers ,to access this Application please Register Yourself........
				</p>
				<footer class="blockquote-footer">
					Developer Contact No. +91-995-829-7880
				</footer>
			</blockquote>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<img alt="Bootstrap Image Preview" src="image/register.jpg">
		</div>
		<div class="col-md-6">
		<center><h2>Registration Form</h2></center>
			<form role="form" name="myform" action="signupdata.jsp" onsubmit="return validateform()" >
			 <script>  
function validateform(){  
var userid=document.myform.userid.value;  
var password=document.myform.password.value;  
var name=document.myform.name.value;  
var number=document.myform.number.value;  
var aadhaar=document.myform.aadhaar.value;  
var addres=document.myform.addres.value;  
if (userid==null || userid==""){  
  alert("Userid can't be blank");  
  return false;  
}
else if(password==null || password==""){  
  alert("Password can't be blank");  
  return false;  
  }  
else if(name==null || name==""){  
	  alert("Name can't be blank");  
	  return false;  
	  }  
else if(number==null || number==""){  
	  alert("Number can't be blank");  
	  return false;  
	  }  
else if(aadhaar==null || aadhaar==""){  
	  alert("Aadhaar can't be blank");  
	  return false;  
	  }
else if(addres==null || addres==""){  
	  alert("Addres can't be blank");  
	  return false;  
	  }
}  
</script> 
				<div class="form-group">
					 
					<label for="exampleInputUserid">
						User Id
					</label>
					<input type="text" class="form-control" id="exampleInputUserid" name="userid">
				</div>
				<div class="form-group">
					 
					<label for="exampleInputPassword">
						Password
					</label>
					<input type="password" class="form-control" id="exampleInputPassword" name="password">
				</div>
				<div class="form-group">
					 
					<label for="exampleInputName">
						Name
					</label>
					<input type="text" class="form-control" name="name">
					<div class="error" id="exampleInputName"></div>
				</div>
				<div class="form-group">
					 
					<label for="exampleInputNumber">
						Number
					</label>
					<input type="tel" class="form-control" id="exampleInputNumber" name="number" maxlength="10">
				</div>
				<div class="form-group">
					 
					<label for="exampleInputAadhaar">
						Aadhaar
					</label>
					<input type="tel" class="form-control" id="exampleInputAadhaar" name="aadhaar" maxlength="12">
				</div>
				<div class="form-group">
					 
					<label for="exampleInputAddress">
						Address
					</label>
					<input type="tel" class="form-control" id="exampleInputAddress" name="addres">
				</div>
	           <center>
				<button type="submit" class="btn btn-primary">
					Register
				</button>
				</center>
			</form> 
			
		</div>
	</div>
</div>

    <script src="js1/jquery.min.js"></script>
    <script src="js1/bootstrap.min.js"></script>
    <script src="js1/scripts.js"></script>
  </body>
</html>