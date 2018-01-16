<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script src="/resources/assets/js/addr.js"></script>
    
</head>

<body>
    <div>
        <div class="header-blue" style="padding-bottom: 0px;">
        <section>
            <div class="login-dark" >
            <%@include file="navbar.jsp" %>
		        <form  id="frm" name="frm" method="post"  style="max-width: 600px; top:50%;">
		            <h2 class="sr-only">회원가입</h2>
		            <div class="form-group">아이디<input class="form-control" type="text" id="cpid" name="cpid" placeholder="id"></div>
		            <div class="form-group">비밀번호<input class="form-control" type="password" id="cppwd" name="cppwd" placeholder="Password"></div>
		            <div class="form-group">회사명<input class="form-control" type="text"  id="cpname" name="cpname" placeholder="회사명"></div>
		            <div class="form-group">사업자번호<input class="form-control" type="text"  id="cpnum" name="cpnum" placeholder="사업자번호 ex(111-11-11111)"></div>
		            <div class="form-group">회사대표번호<input class="form-control" type="text" id="cpcallnum" name="cpcallnum" placeholder="회사 대표번호"></div>
		            <input class="btn btn-primary" type="button" value="우편번호 찾기&nbsp;" onClick="DaumPostcode()"><br/>
		            <div class="form-group" style="width: 20%;">우편번호<input class="form-control" type="text" id="companyaddr1" name="companyaddr1" placeholder="우편번호"></div>
		            <div class="form-group">도로명주소<input class="form-control" type="text" id="companyaddr2" name="companyaddr2" placeholder="도로명주소"></div>
		            <div class="form-group">상세주소<input class="form-control" type="text" id="companyaddr3" name="companyaddr3" placeholder="상세주소"></div>
		            
		            <div class="form-group"><input class="btn btn-primary btn-block" type="button" id="btn_join" value="회원가입"></div>
	            </form>
		    </div>
        </section>
   	 </div>
   	 <%@include file="footer.jsp" %>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="/resources/assets/js/script.min.js"></script>
  <script src="/resources/assets/js/signup.js"></script> 
  
</body>

</html>