<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Register here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body>

<div class="container">
<form class="row mt-4" action="<%=application.getContextPath() %>/SendBlockOfEmail" method="post">
 
 <div class="col-md-6">
	 <h2 class="text-info"> Send Your Email</h2><br><br>
	
	<label class="form-label text-info" >Enter UserName:</label>
	<input class="form-control border border-info" type="text" name="username" style="width:100%;" ><br>
	<label class="form-label text-info">Enter Subject or Objective:</label>
	<input class="form-control border border-info" type="text" name="subject" ><br>
	<textarea class="text-indigo form-control border border-info "  rows="5" cols="20" name="emails" placeholder="write your emails separate with ( , ) all email......."></textarea><br>
	<button  class="btn btn-info  p3 mb-2 " type="submit">Send Email</button>
	<input class="btn btn-info  p3 mb-2 "  type="reset" value="Reset">
 </div>
<div class="col-md-6">
 	<textarea class="text-info border border-info  from-control rounded p-2 w-100 mt-5"  rows="15" name="message" placeholder="write your message here......."></textarea><br>
 </div>
</form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>



