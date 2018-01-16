<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
    <nav class="navbar navbar-default navigation-clean-search">
         <div class="container">
             <div class="navbar-header"><a class="navbar-brand" href="/index.do">Company Name</a><button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button></div>
             <div
                 class="collapse navbar-collapse" id="navcol-1">
                 <ul class="nav navbar-nav">
                     <li role="presentation"><a href="#">주요기능</a></li>
                     <li role="presentation"><a href="/boardlist.do">공지사항</a></li>
                     <li role="presentation"><a href="/faqlist.do">고객센터</a></li>
                 </ul>
                 
                 <p class="navbar-text navbar-right">
                 <c:choose>
				    <c:when test="${sessionScope.cpid == null}">
				         <a class="navbar-link login" href="/login.do">로그인</a>
				    </c:when>
				    <c:otherwise>
				        ${sessionScope.cpid}님이 로그인중입니다.
				        <a href="/logout.do">로그아웃</a>
				    </c:otherwise>
				</c:choose>
                 
                
                  <a class="btn btn-default action-button" role="button" href="/signup.do">회원가입</a>
                  </p>
             </div>
         </div>
     </nav>