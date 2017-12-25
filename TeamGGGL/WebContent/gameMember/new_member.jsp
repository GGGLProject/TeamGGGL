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



<!-- �̸� �г��� üũ �κ�  -->
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
				 	$("#checkBtn").text('��밡��');
				}
				else
				{
					
					$("#checkBtn").prop('class', 'btn btn-warning');
					$("#checkBtn").text('���Ұ�');
					
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
<!-- �̸��� üũ �κ�  -->
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
				 	$("#emailcheckBtn").text('��밡��');
				}
				else
				{
					
					$("#emailcheckBtn").prop('class', 'btn btn-warning');
					$("#emailcheckBtn").text('���Ұ�');
					
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
          <h1>ȸ������ <small></small></h1>
        </div>
        <div class="col-md-6 col-md-offset-3">
         <!--  <form role="form">  �̻��⾲�� ���ο� â���� �ٲ� �ù߻����� -->
         
         
          <!--  �̸� �г��� �Է� �κ� -->
           <div class="name form-group">
              <label for="username">�̸�(�г���)</label>
              <div class="input-group"> 
                <input type="text" class="form-control" id="id" placeholder="�̸�(�г���)">
                <span class="input-group-btn">
                  <button class="btn btn-primary" id="checkBtn">�ߺ�Ȯ��</button>
                </span>
             </div>
            </div>
            
            <!-- �̸��� �Է� -->
            <div class="email form-group">
              <label for="username">�̸���</label>
              <div class="input-group">
                <input type="text" class="form-control" id="useremail" placeholder="ex)admin@GGGL.com">
                <span class="input-group-btn">
                  <button class="btn btn-primary" id="emailcheckBtn">�ߺ�Ȯ��</button>
                </span>
              </div>
            </div>
            
            <!-- ��й�ȣ �Է� -->
            <div class="form-group">
              <label for="password">��й�ȣ</label>
              <input type="password" class="form-control" id="password">
            </div>
            
            <!-- �޴��� ��ȣ �Է�  -->
            <div class="form-group">
              <label for="telnumber">�޴��� ��ȣ</label>
              <div class="input-group">
                <input type="tel" class="form-control" id="telnumber" placeholder="- �����ϰ� �Է��� �ּ���">
         
              </div>
            </div>
            
            
            
            <!-- ������� �Է� -->
            <label for="">
                �������</label>
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
            
            
            
            <!-- ���ɸ��� �Է� -->
            <div><label for="">
                ���ɸ���</label></div>
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
            
            
            
            
            <!-- ��� ���Ǽ�  -->
            <div class="form-group">
                <label>��� ����</label>
              <div data-toggle="buttons">
              <label class="btn btn-primary active">
                  <span class="fa fa-check"></span>
                  <input id="agree" type="checkbox" autocomplete="off" checked>
              </label>
              <a href="http://www.law.go.kr/lsInfoP.do?lsiSeq=173223&efYd=20150724#0000">�̿���</a>�� �����մϴ�.
              </div>
            </div>
            
            
            
            <!-- ȸ������, ��� ��ư -->
            <div class="form-group text-center">
              <button type="submit" class="btn btn-info">ȸ������<i class="fa fa-check spaceLeft"></i></button>
              <button type="submit" class="btn btn-warning">�������<i class="fa fa-times spaceLeft"></i></button>
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