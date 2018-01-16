<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>

<html>

<%@include file="../include/head.jsp" %>



<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
<%@include file="../include/main_header.jsp" %>  
  <!-- Left side column. contains the logo and sidebar -->
<%@include file="../include/left_column.jsp" %>  

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Page Header
        <small>Optional description</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
	
     <form  id="frm" name="frm" method="post"  style="max-width: 600px; top:50%;">
          <h2 class="sr-only">회원가입</h2>
         <div class="form-group">아이디<input class="form-control" type="text" id="cpid" name="cpid" value="${vo.cpid}"  readonly="readonly"></div>
          <div class="form-group">비밀번호<input class="form-control" type="password" id="cppwd" name="cppwd" placeholder="현 비밀번호"></div>
          <div class="form-group">비밀번호<input class="form-control" type="password" id="cppwd" name="cppwd1" placeholder="변경 할 비밀번호"></div>
          <div class="form-group">회사명<input class="form-control" type="text"  id="cpname" name="cpname" value="${vo.cpname}" readonly="readonly"></div>
          <div class="form-group">사업자번호<input class="form-control" type="text"  id="cpnum" name="cpnum" value="${vo.cpnum}" readonly="readonly"></div>
          <div class="form-group">회사대표번호<input class="form-control" type="text" id="cpcallnum" name="cpcallnum" value="${vo.cpcallnum}" placeholder="회사 대표번호"></div>
          <input class="btn btn-primary" type="button" value="우편번호 찾기&nbsp;" onClick="DaumPostcode()"><br/>
          <div class="form-group" style="width: 20%;">우편번호<input class="form-control" type="text" id="companyaddr1" value="${vo.companyaddr1}" name="companyaddr1" placeholder="우편번호"></div>
          <div class="form-group">도로명주소<input class="form-control" type="text" id="companyaddr2" name="companyaddr2" value="${vo.companyaddr2}" placeholder="도로명주소"></div>
          <div class="form-group">상세주소<input class="form-control" type="text" id="companyaddr3" name="companyaddr3" value="${vo.companyaddr3}" placeholder="상세주소"></div>
          
          <div class="form-group"><input class="btn btn-primary btn-block" type="button" id="btn_join" value="회사 정보 수정"></div>
      </form>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
  <%@include file="../include/main_footer.jsp" %>

  <!-- Control Sidebar -->
 <%@include file="../include/control_sidebar.jsp" %>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
  immediately after the control sidebar -->
  
<!-- ./wrapper -->

</div>
<!-- REQUIRED JS SCRIPTS -->
<%@include file="../include/plugin_js.jsp" %>
</body>
</html>