<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>GGGL-로그인</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="css/member.css" rel="stylesheet" type="text/css">

<script type="text/javascript">
$(function(){
    $('.character-checkbox').click(function(){
    var key_attr = $('#Password').attr('type');
   
    if(key_attr != 'text') {
        
        $('.checkbox').addClass('show');
        $('#Password').attr('type', 'text');
        
    } else {
        
        $('.checkbox').removeClass('show');
        $('#Password').attr('type', 'password');
        
    }
    });
    $('#passwordSelect').click(function(){
    	var recoveryEmail = $('#recoveryEmail').val();
    	
    	 $.ajax({
			type:'post',
			url:'passwordEmailCheck.do',
			data:{"recoveryEmail":recoveryEmail},
		
			success:function(res)
			{
				var member_pwd=res.trim();
				if(member_pwd==""){
					alert("아이디가 없습니다.");
				}else{
					alert("귀하의 비밀번호는 : (   "+member_pwd+"  )입니다");
				}
			},
			error:function(error) {
				alert(data)
				alert("!!AJAX FAIL"); 
		 	} 
		});  
    });
    
});
</script>

</head>
<body>
	<section id="login">
    <div class="container">
    	<div class="row">
    	    <div class="col-xs-12">
        	    <div class="form-wrap">
                <h1>로그인</h1>
                    <form role="form" action="login2.do" method="post" id="login-form" autocomplete="off">
                        <div class="form-group">
                        
                            <label for="email" class="sr-only">Email</label>
                            <input type="email" name="email" id="email" class="form-control" placeholder="somebody@example.com">
                        </div>
                        <div class="form-group">
                            <label for="key" class="sr-only">Password</label>
                            <input type="password" name="Password" id="Password" class="form-control" placeholder="Password">
                        </div>
                         
                        <div class="checkbox">
                            <a herf="" class="character-checkbox"></a>
                            <a class="label">Show password</a>
                        </div>
                        
                        <input type="submit" id="btn-login" class="btn btn-custom btn-lg btn-block" value="로그인">
                    </form>
                   
                    <a href="javascript:;" class="forget" data-toggle="modal" data-target=".forget-modal">비밀번호 찾기</a>
                    
                    <hr>
        	    </div>
    		</div> <!-- /.col-xs-12 -->
    	</div> <!-- /.row -->
    </div> <!-- /.container -->
</section>

<div class="modal fade forget-modal" tabindex="-1" role="dialog" aria-labelledby="myForgetModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">×</span>
					<span class="sr-only">Close</span>
				</button>
				<h4 class="modal-title">비밀번호 찾기</h4>
			</div>
			<div class="modal-body">
				<p>이메일을 입력해주세요</p>
				<input type="email" name="recovery-email" id="recoveryEmail" class="form-control" autocomplete="off">
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				<button type="button" class="btn btn-custom" id="passwordSelect">비밀번호 찾기</button>
			</div>
		</div> <!-- /.modal-content -->
	</div> <!-- /.modal-dialog -->
</div> <!-- /.modal -->


</body>
</html>