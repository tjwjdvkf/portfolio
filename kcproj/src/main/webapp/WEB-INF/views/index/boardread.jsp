<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
        <section class="content container">
        <div>
        	<h1 style=color:#cccccc>공지사항</h1>
        </div>
	<!-- <button class="btn btn-primary" onclick="location.href='boardwrite.do'">글 쓰기</button> -->
	
	<div class="box" style="background-color: #cccccc">
            <!-- /.box-header -->
            <form role="form" method="post">
    	<input type="hidden" name="bno" value="${boardVO.bno}">
    </form>
    
    <div class="box">
    	<div class="box-body">
    		<div class="form-group">
    			<label for="exampleInputEmail1">제목</label>
    			<input type="text" name="title" class="form-control" value="${boardVO.title}" readonly="readonly">
    		</div>
    		<div class="form-group">
    			<label for="exampleInputEmail1">내용</label>
    			<textarea rows="3" class="form-control" name="content" readonly="readonly">${boardVO.content}</textarea>
    		</div>
    		<div class="form-group">
    			<label for="exampleInputEmail1">작성자</label>
    			<input type="text" name="writer" class="form-control" value="${boardVO.writer}" readonly="readonly">
    		</div>
    		<div class="box-footer">
    			<!-- <button type="submit" class="btn btn-warning">수정</button>
    			<button type="submit" class="btn btn-danger">삭제</button> -->
    			<button class="btn btn-primary" onclick="location.href='boardlist.do'">리스트목록</button>
    		</div>
    	</div>
	</div>
    
    <div id="replyDiv" style="width: 99%; display:none">
			<input type="hidden" id="brdno2" name="brdno" value="<c:out value="${boardInfo.brdno}"/>"> 
			<input type="hidden" id="reno2" name="reno">
			<div class="col-lg-6">
				<textarea class="form-control" id="rememo2" name="rememo2" rows="3" maxlength="500"></textarea>
			</div>
			<div class="col-lg-2 pull-left">
  				<button class="btn btn-primary" onclick="fn_replyUpdateSave()">저장</button>
  				<button class="btn btn-primary" onclick="fn_replyUpdateCancel()">취소</button>
			</div>
	</div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
	
    </section>
    </div>
    </div>
    <%@include file="footer.jsp" %>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="/resources/assets/js/script.min.js"></script>
</body>

</html>