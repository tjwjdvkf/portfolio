<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>index</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
    <link rel="stylesheet" href="/resources/assets/css/styles.min.css">
</head>

   

<body>
    <div>
        <div class="header-blue" style="padding-bottom: 0px;">
        <section>
            <div class="login-dark">
            <%@include file="navbar.jsp" %>
		        <form method="post" name="loginForm" id="loginForm" action="index.do">
		            <h2 class="sr-only">Login Form</h2>
		            <div class="illustration"><i class="icon ion-ios-locked-outline"></i></div>
		            <div class="form-group"><input class="form-control" type="text" name="cpid" id="cpid" placeholder="아이디"></div>
		            <div class="form-group"><input class="form-control" type="password" name="cppwd" id="cppwd" placeholder="Password" ></div>
		            <div class="form-group"><button class="btn btn-primary btn-block" onclick="login()">Log In</button></div><a href="#" class="forgot">Forgot your email or password?</a>
	            </form>
		    </div>
        </section>
   	 </div>
   	 <%@include file="footer.jsp" %>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="/resources/assets/js/script.min.js"></script>

<script>
function login() {
	$.ajax({
		type: 'POST',
		data: $("#loginForm").serialize(),
		async: false,
		url: "<c:url value='/loginch.do'/>",
		dataType: "json",
		success: function (data) {
			if(data.result == "ok") {
				alert("로그인 됐습니다.");
				location.href="c:url value='/index.do'";
			} else {
				alert("실패");
			}
		},
		
		error: function (reqeust, error) {
			alert("error : " + reqeust.responseText);
		}
		
	});
}
</script>
 
    
</body>

</html>