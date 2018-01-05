<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>GGGL-My Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="css/newmember.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>  


<!-- 이름 닉네임 체크 부분  -->
<script type="text/javascript">
$(function emailCheckfunction(){
	 $('#checkBtn').click(function(){
	 	var id=$('#id').val();
		if(id.trim()=="")
		{
			$('#id').focus();
			alert("이름을 입력해주세요");
			return;
		} 
	 	$.ajax({
			type:'post',
			url:'checkmember.do',
			data:{"id":id},
			success:function(res)
			{
				var count=res.trim();
				 if(count==0)
				{
					
					$("#checkBtn").prop('class', 'btn btn-success');
				 	$("#checkBtn").text('사용가능');
				 	alert("사용가능한 아이디 입니다");
				}
				else
				{
					
					$("#checkBtn").prop('class', 'btn btn-warning');
					$("#checkBtn").text('사용불가');
					alert("사용불가능한 아이디 입니다");
					
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

<!-- 이메일 체크 부분  -->
<script type="text/javascript">
$(function(){
 
	$('#emailcheckBtn').click(function(){
	 	var useremail=$('#useremail').val();
	 	 var regEmail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;

		if(useremail.trim()=="")
		{
			$('#useremail').focus();
			return;
		} else if(!regEmail.test(useremail)) {
            alert('이메일 주소가 유효하지 않습니다');
            $('#useremail').focus();
            return false;
        }


	 	$.ajax({
			type:'post',
			url:'emailCheck.do',
			data:{"useremail":useremail},
		
			success:function(res)
			{
				var count=res.trim();
				 if(count==0)
				{
					alert("사용가능한 이메일 입니다.");
					$("#emailcheckBtn").prop('class', 'btn btn-success');
				 	$("#emailcheckBtn").text('사용가능');
				}
				else
				{
					alert("사용불가능한 이메일 입니다.");
					$("#emailcheckBtn").prop('class', 'btn btn-warning');
					$("#emailcheckBtn").text('사용불가');
					
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

<!-- 동의 버튼 -->
<script type="text/javascript">
$(function(){
	$('.ya').click(function(){
		$(".ya").prop('class', 'btn btn-success');
	});
	$('#update').click(function(){
		
		var Mpassword=$('#Mpassword').val();
		var Hpassword=$('#Hpassword').val();
		var Cpassword=$('#Cpassword').val();
		if(Mpassword.trim()=="")
		{
			alert("비밀번호를 입력하세요");
			$('#Mpassword').focus();
			return;
		}else if(Mpassword!=Hpassword){
			alert("비밀번호가 일치하지 않습니다!")
			$('#Mpassword').focus();
			return;
		}
		else{
			alert("수정이 완료되었습니다.")
			$('#form').submit();
		}  
		
		
	});
});
</script>

</head>
<body>
<div class="bodybody">
<article class="container">
        <div class="page-header">
          <h1 class="text-center">마이페이지</h1>
        </div>
        <div class="col-md-6 col-md-offset-3">
          
         
          <form method="post" action="memberUpdate.do" id="form">
          <!--  이름 닉네임 입력 부분 -->
           <div class="name form-group">
              <label for="username">이름(닉네임)</label>
              <div class="input-group"> 
              
                <input type="text" class="form-control" name="id" id="id" value="${sessionScope.name }">
              
                <span class="input-group-btn">
        
                  <a href="#" class="btn btn-info" onClick="emailCheckfunction();" id="checkBtn">중복확인</a>
                </span>
             </div>
            </div>
            
            <!-- 이메일 입력 -->
            <div class="email form-group">
              <label for="username">이메일</label>
              <div class="input-group">

             	<p>
                <input type="text" class="form-control" name="email" id="useremail" value="${sessionScope.email }" readonly/>
             	</p>
               
             
             

              </div>
            </div>
            
            <!-- 비밀번호 입력 -->
            <div class="form-group">
              <label for="password">비밀번호</label>
              
              <input type="password" name="Mpassword" class="form-control" id="Mpassword">
      		<input type="hidden" id="Hpassword" value="${sessionScope.pwd }">
      		
            </div>
           
            
            <!-- 휴대폰 번호 입력  -->
            <div class="form-group">
              <label for="telnumber">휴대폰 번호</label>
              <div class="input-group">
          
                <input type="tel" class="form-control" name="telnumber" id="telnumber" value="${sessionScope.phone }">
         	
              </div>
            </div>
         <!-- 생년월일 입력 -->
            <label for="">
                생년월일</label>
            <div class="row">
                <div class="col-xs-4 col-md-4">
                
                <!-- 년도 옵션 박스 -->
              
                    <select class="form-control" name="year" id="year">
                    <option>${fn:substring(sessionScope.birthday,0,4) }</option>
          			 <c:forEach var="i" begin="1950" end="2020" step="1" >
						
                        <option value="${i}" <c:if test="${i == (now.year + 1900)}">selected</c:if> >${i}년</option>
						
                 	  </c:forEach>

                    </select>
                    
                </div>
                <!-- 월 옵션 박스 -->
                <div class="col-xs-4 col-md-4">
                    <select class="form-control" name="month" id="month">
                        <option >${fn:substring(sessionScope.birthday,5,7) }</option>
                         <c:forEach var="i" begin="1" end="12" step="1" >
                         
                        <option value="${i}">${i}월</option>
                        
                 	  </c:forEach>
                    </select>
                </div>
                
                <!-- 일 옵션 박스 -->
                <div class="col-xs-4 col-md-4">
                    <select class="form-control" name="day" id="day">
                        <option>${fn:substring(sessionScope.birthday,8,10) }</option>
                         <c:forEach var="i" begin="1" end="31" step="1" >
                         
                        <option value="${i}">${i}일</option>
                        
                        </c:forEach>
                    </select>
                </div>
            </div>
         
       
           
            <div><label>
                
                
                </label></div>
                <br>
             
            
            <!-- 회원가입, 취소 버튼 -->
            <div class="form-group text-center">
           
              <input type="button" class="btn btn-info" id="update" value="수정확인"/>
            	
              <a href="main.do" type="submit" class="btn btn-default" >수정취소</a>
            
              </form>
        </div>
		
      </article>
      </div>
</body>
</html>