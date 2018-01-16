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
        <section class="content container">
        <div>
        	<h1 style=color:#cccccc>Q&A 및 불만사항</h1>
        </div>
	<button class="btn btn-primary" onclick="location.href='boardwrite.do'">글 쓰기</button>
	
	<div class="box">
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <table class="table table-condensed">
                <tr>
	       			<th class="col-lg-1">bno</th>
		     		<th class="col-lg-7">제목</th>
		     		<th class="col-lg-1">작성자</th>
		     		<th class="col-lg-2">작성일</th>
		     		<th class="col-lg-1">조회수</th>
                </tr>
                <%-- <c:forEach items="${list}" var="boardVO">
		     		<tr>
		     			<td>${boardVO.bno}</td>
		     			<td style="max-width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;"><a href='/board/read.do?bno=${boardVO.bno}'>${boardVO.title}</a></td>
		     			<td style="max-width: 50px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">${boardVO.writer}</td>
		     			<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate}"/></td>
		     			<td><span class="badge bg-red">${boardVO.viewcnt}</span></td>
		     		</tr>
		     	</c:forEach> --%>
              </table>
              	<%-- <form role="form" id="form1" name="form1"  method="post">
					   <jsp:include page="../include/pagingforSubmit.jsp" />
				    
						<div class="form-group">
							<div class="checkbox col-lg-3 pull-left">
							 	<label class="pull-right">
							 		<input type="checkbox" name="searchType" value="title" <c:if test="${fn:indexOf(searchVO.searchType, 'title')!=-1}">checked="checked"</c:if>/>
		                        	제목
		                        </label>
							 	<label class="pull-right">
							 		<input type="checkbox" name="searchType" value="content" <c:if test="${fn:indexOf(searchVO.searchType, 'content')!=-1}">checked="checked"</c:if>/>
		                        	내용
		                        </label>
		                   </div>
		                   <div class="input-group custom-search-form col-lg-3">
	                                <input class="form-control" placeholder="Search..." type="text" name="searchKeyword" 
	                                	   value='<c:out value="${searchVO.searchKeyword}"/>' >
	                                <span class="input-group-btn">
	                                <button class="btn btn-default" onclick="fn_formSubmit()">
	                                    <i class="fa fa-search"></i>
	                                </button>
	                            </span>
	                       </div>
						</div>
					</form>	 --%>
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