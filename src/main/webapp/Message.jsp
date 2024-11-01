<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Message Writing Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body class="bg-light">

<h2 class="text-center"> Massage writing Page</h2>


<form class="form-control bg-info" action="<%=application.getContextPath() %>/SendBlockOfEmail" method="post">
<input type="hidden" name="username" value="<%=request.getParameter("username")%>">
<input type="hidden" name="emails" value="<%=request.getParameter("emails")%>">
<input type="hidden" name="subject" value="<%=request.getParameter("subject")%>">
<textarea class="text-info bg-dark " style="margin-left:230px;" rows="22" cols="100" name="message" placeholder="write your message here......."></textarea><br>
<button  class="btn btn-primary  p3 mb-2 "style="margin-left:230px;" type="submit">Send Email</button>
<input class="btn btn-primary  p3 mb-2 mx-5 "  type="reset" value="Reset">
</form>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>