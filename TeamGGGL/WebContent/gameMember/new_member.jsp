<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="css/newmember.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>



<!-- 이름 닉네임 체크 부분  -->
<script type="text/javascript">
$(function(){
	 $('#checkBtn').click(function(){
	 	var id=$('#id').val();
		if(id.trim()=="")
		{
			$('#id').focus();
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
				}
				else
				{
					
					$("#checkBtn").prop('class', 'btn btn-warning');
					$("#checkBtn").text('사용불가');
					
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
	 	
		if(useremail.trim()=="")
		{
			$('#useremail').focus();
			return;
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
					
					$("#emailcheckBtn").prop('class', 'btn btn-success');
				 	$("#emailcheckBtn").text('사용가능');
				}
				else
				{
					
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

</head>
<body>

<article class="container">
        <div class="page-header">
          <h1>회원가입 <small></small></h1>
        </div>
        <div class="col-md-6 col-md-offset-3">
         <!--  <form role="form">  이색기쓰면 새로운 창으로 바뀜 시발색기임 -->
         
         
          <!--  이름 닉네임 입력 부분 -->
           <div class="name form-group">
              <label for="username">이름(닉네임)</label>
              <div class="input-group"> 
                <input type="text" class="form-control" id="id" placeholder="이름(닉네임)">
                <span class="input-group-btn">
                  <button class="btn btn-primary" id="checkBtn">중복확인</button>
                </span>
             </div>
            </div>
            
            <!-- 이메일 입력 -->
            <div class="email form-group">
              <label for="username">이메일</label>
              <div class="input-group">
                <input type="text" class="form-control" id="useremail" placeholder="ex)admin@GGGL.com">
                <span class="input-group-btn">
                  <button class="btn btn-primary" id="emailcheckBtn">중복확인</button>
                </span>
              </div>
            </div>
            
            <!-- 비밀번호 입력 -->
            <div class="form-group">
              <label for="password">비밀번호</label>
              <input type="password" class="form-control" id="password">
            </div>
            
            <!-- 휴대폰 번호 입력  -->
            <div class="form-group">
              <label for="telnumber">휴대폰 번호</label>
              <div class="input-group">
                <input type="tel" class="form-control" id="telnumber" placeholder="- 삽입하고 입력해 주세요">
         
              </div>
            </div>
            
            
            
            <!-- 생년월일 입력 -->
            <label for="">
                생년월일</label>
            <div class="row">
                <div class="col-xs-4 col-md-4">
                    <select class="form-control">
                        <option value="Month">Month</option>
                    </select>
                </div>
                <div class="col-xs-4 col-md-4">
                    <select class="form-control">
                        <option value="Day">Day</option>
                    </select>
                </div>
                <div class="col-xs-4 col-md-4">
                    <select class="form-control">
                        <option value="Year">Year</option>
                    </select>
                </div>
            </div>
            
            
            
            <!-- 관심리그 입력 -->
            <div><label for="">
                관심리그</label></div>
             <label class="radio-inline">
                <input type="checkbox" name="LCK" id="inlineCheckbox1" value="male" />
                LCK
            </label>
            <label class="radio-inline">
                <input type="checkbox" name="NALCS" id="inlineCheckbox2" value="female" />
                NALCS
            </label>
            <label class="radio-inline">
                <input type="checkbox" name="EULCS" id="inlineCheckbox3" value="female" />
                EULCS
            </label>
            <label class="radio-inline">
                <input type="checkbox" name="CBLOL" id="inlineCheckbox4" value="female" />
                CBLOL
            </label>
            
            
            
            
            <!-- 약관 동의서  -->
            <div class="form-group">
                <label>약관 동의</label>
              <div data-toggle="buttons">
              <label class="btn btn-primary active">
                  <span class="fa fa-check"></span>
                  <input id="agree" type="checkbox" autocomplete="off" checked>
              </label>
              <a href="http://www.law.go.kr/lsInfoP.do?lsiSeq=173223&efYd=20150724#0000">이용약관</a>에 동의합니다.
              </div>
            </div>
            
            
            
            <!-- 회원가입, 취소 버튼 -->
            <div class="form-group text-center">
              <button type="submit" class="btn btn-info">회원가입<i class="fa fa-check spaceLeft"></i></button>
              <button type="submit" class="btn btn-warning">가입취소<i class="fa fa-times spaceLeft"></i></button>
            </div>
          </form>
        </div>
 
      </article>

     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    Include all compiled plugins (below), or include individual files as needed
    <script src="js/bootstrap.min.js"></script>  
</body>
</html>