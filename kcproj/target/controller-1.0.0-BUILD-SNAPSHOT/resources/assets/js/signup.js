
$(document).ready(function() {
	 
    $("#btn_join").click(function() {
       
            //var tel1_pattern = /(^01[016789]$)/; //정규식
 
            //alert("ok");
            if ($("#cpid").val() == "") {
            	alert("아이디를 입력하지 않았습니다.");
                $("#id").focus();
                return false;
                
            } else if ($("#cppwd").val() == "") {
            	alert("비밀번호를 입력하지 않았습니다.");
                $("#pwd").focus();
                return false;
                
            }else if ($("#cpname").val() == "") {
            	alert("회사명을 입력하지 않았습니다.");
                $("#cpname").focus();
                return false;
                
            }else if ($("#cpnum").val() == "") {
            	alert("사업자 번호를 입력하지 않았습니다.");
                $("#cpnum").focus();
                return false;
                
            }else if ($("#cpcallnum").val() == "") {
            	alert("회사전화번호 입력하지 않았습니다.");
                $("#cpcallnum").focus();
                return false;
                
            }else if ($("#companyaddr1").val() == "") {
            	alert("주소를 입력하지 않았습니다.");
                $("#companyaddr1").focus();
                return false;
                
            }else if ($("#companyaddr2").val() == "") {
            	alert("주소를 입력하지 않았습니다.");
                $("#companyaddr2").focus();
                return false;
                
            }else if ($("#companyaddr3").val() == "") {
            	alert("상세주소를 입력하지 않았습니다.");
                $("#companyaddr3").focus();
                return false;
            }else{
            	if(confirm("정말 삭제하시겠습니까??") ==true){
            		$('#frm').attr('action','signupsave.do').submit();
            	}else{
            		return;
            	}
            	
            }
            
            
    });
 });
