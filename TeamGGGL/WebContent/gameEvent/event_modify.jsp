<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Event �۾��� - GG GL</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/eventWrite.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#writeBtn').click(function(){


/* 		var name=$('#name').val();
		if(name.trim()=="")
		{
			$('#name').focus();
			return;
		} */
		var subject=$('#day').val();
		if(subject.trim()=="")
		{
			$('#day').focus();
			return;
		}
		var subject=$('#place').val();
		if(subject.trim()=="")
		{
			$('#place').focus();
			return;
		}
		var subject=$('#category').val();
		if(subject.trim()=="")
		{
			$('#category').focus();
			return;
		}
		var subject=$('#city').val();
		if(subject.trim()=="")
		{
			$('#city').focus();
			return;
		}
		var subject=$('#subject').val();
		if(subject.trim()=="")
		{
			$('#subject').focus();
			return;
		}
		var content=$('#content').val();
		if(content.trim()=="")
		{
			$('#content').focus();
			return;
		}
		
		var result = confirm('���� ���� �Ͻðڽ��ϱ�?'); 
		if(result) 
		{
			$('#frm').submit();
		} 
		else 
		{ 
			return;
		}

	});
});

/* $(document).ready(function(){

	  $(����Ʈ�ڽ� option).each(function(){

	    if($(this).val()=="${vo.event_category}"){

	      $(this).prop("selected","selected"); // attr����ȵɰ�� prop���� 

	    }

	  });
});
$(document).ready(function(){
	  $(city.option).each(function(){

		    if($(this).val()=="${vo.event_city}"){

		      $(this).attr("selected","selected"); // attr����ȵɰ�� prop���� 

		    }

		  });

	}); */
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<h2 class="text-center"><strong>�̺�Ʈ �Խ���</strong></h2>
			<br>
			
			<div class="col">
			<form method="post" action="event_modify_ok.do" id=frm enctype="multipart/form-data">
				<div class="col-lg-6">
					 
					<table class="table table-hover">
						<tr>
							<td class="text-center" colspan=2>�̺�Ʈ / ��ȸ</td>
						</tr>
						<tr>
							<td width=20% class="text-center">�̺�Ʈ ����</td>
							<td width=30% class="text-center">
							<input class="input" type=date name=day id=day size=30 value="${vo.event_day } ">
							<input type=hidden name=no value="${vo.event_no }">
							</td>
						</tr>
						<tr>
							<td width=20% class="text-center">�̺�Ʈ ���</td>
							<td width=30% class="text-right"><input type=text
								name=place size=50 id="place" class="input" value="${vo.event_place }"></td>
						</tr>
						<tr>
							<td class="text-center" colspan=2>��ǥ ������</td>
						</tr>

						<tr>
							<td class="text-center" colspan=2><img src="${vo.event_image }"
								 id="img" class="event-img" height=320 width=320></td>
						</tr>
						<tr>
							<td class="text-center" colspan=2>
								<center><input type="file" name=upload id="upload"
								 value="${vo.event_image }"	onchange="document.getElementById('img').src = window.URL.createObjectURL(this.files[0])"></center>
							</td>
						</tr>
					</table>
				</div>

				<div class="col-lg-6">
					<table class="table event-table table-hover">
						<tr>
							<td width=10% class="text-right">�з�</td>
							<td class="category" width=40% class="text-left">
								<select name=category id="category">
							<option value="�Ϲ�">�Ϲ�</option>
									<option value="PC��">PC��</option>
									<option value="����">����</option>
									<option value="����">����</option>
									<option value="�̺�Ʈ">�̺�Ʈ</option>
								</select>
							</td>
						</tr>
						<tr>
							<td width=10% class="text-right">����</td>
							<td class="category" width=40% class="text-left" >
								<select name=city id="city">
										<option value="����">����</option>
										<option value="���">���</option>
										<option value="��õ">��õ</option>
										<option value="����">����</option>
										<option value="���">���</option>
										<option value="�泲">�泲</option>
										<option value="����">����</option>
										<option value="����">����</option>
										<option value="���">���</option>
										<option value="�泲">�泲</option>
										<option value="����">����</option>
										<option value="��Ÿ">��Ÿ</option>
								</select>
							</td>
						</tr>
						<tr>
							<td width=10% class="text-right qna-td">����</td>
							<td width=90% class="text-left qna-td"><input class="input" type=text
								name=subject size=65 id="subject" value="${vo.event_title }"></td>
						</tr>
						<tr>
							<td width=10% class="text-right qna-td" valign="top">����</td>
							<td width=90% class="text-left qna-td">
								<textarea class="input" rows="20" cols="65" name=content id="content">${vo.event_content }</textarea>
							</td>
						</tr>
					</table>
					</form>
				</div>
				<div class="text-right">
					<input type="button" value="����" class="btn btn-nm btn-danger" id="writeBtn">
					<input type="button" class="btn btn-nm btn-success" value="���"
						onclick="javascript:history.back()">
				</div>
			</div>
		</div>
	</div>
</body>
</html>