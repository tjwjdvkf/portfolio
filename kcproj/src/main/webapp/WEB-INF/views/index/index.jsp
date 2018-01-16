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
</head>
 
<body>
    <div>
        <div class="header-blue">
            <%@include file="navbar.jsp" %>
            <div class="container hero">
                <div class="row">
                    <div class="col-lg-5 col-lg-offset-1 col-md-6 col-md-offset-0">
                        <h1 style="margin-top: 30px;">ㅇㅇ 인증서 통합관리 System </h1>
                        <p>종이 없는, Simple한 비즈니스를 추구합니다.
                        	종이가 사라진 그 자리에 파트너사간의 협업, 소통, 신뢰를 채웁니다.
                        	정말 필요한 메뉴/기능을 탄탄하게!
                        	저희는 자주 쓰지 않을 메뉴를 나열하지 않습니다.
                        	필요한 메뉴를 탄탄하게 하나 하나 꼼꼼하게 배열했습니다.
                        </p>
                         <c:choose>
					    	<c:when test="${sessionScope.cpid == null}">
					          <button id="tabContent" class="btn btn-default btn-lg action-button" type="button"><a href="/login.do">Learn More</a></button></div>
						    </c:when>
						    <c:otherwise>
						     	<button class="btn btn-default btn-lg action-button" type="button"><a href="/main.do">Learn More</a></button></div>
						    </c:otherwise>
						</c:choose>
                       
                </div>
            </div>
		      <div class="container" id="test1">
		        <div class="row row-fitur" >
		            <div class="col-md-4 col-sm-4 waves-effect kolom-a">
		                <div class="fitur-a"><img src="/resources/assets/img/ic-lock.png"></div>
		                <div class="separator-fitur"></div>
		                <div>
		                    <h4 class="heading-fitur" style="color: #cccccc">● ㅇㅇㅇ FORM의 필요성 </h4>
		                    <p class="paragraf-fitur" style="color: #cccccc">- 최근 동향 , ㅇㅇ인증서의 관리 필요성</p>
		                </div>
		            </div>
		            <div class="col-md-4 col-sm-4 waves-effect kolom-b">
		                <div class="fitur-a"><img src="/resources/assets/img/ic-check.png"></div>
		                <div class="separator-fitur"></div>
		                <div>
		                    <h4 class="heading-fitur" style="color: #cccccc">● 인증서 관리 </h4>
		                    <p class="paragraf-fitur" style="color: #cccccc">사내 업무용 PC안에 가득한 인증서의 전자문서화를 지원합니다.
		                    서랍 속과 캐비넷에 가득한, 종이문서를 시스템화하여 간단하게 관리합니다.
		                        </p>
		                </div>
		            </div>
		            <div class="col-md-4 col-sm-4 waves-effect kolom-c">
		                <div class="fitur-a"><img src="/resources/assets/img/ic-flaw.png"></div>
		                <div class="separator-fitur"></div>
		                <div>
		                    <h4 class="heading-fitur" style="color: #cccccc">● Partnership </h4>
		                    <p class="paragraf-fitur" style="color: #cccccc">제조사와의 협업 ,제출처와의 협업</p>
		                </div>
		            </div>
		        </div>
		    </div>
        </div>
    </div>
    
    <%@include file="footer.jsp" %>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="/resources/assets/js/script.min.js"></script>


</body>

</html>