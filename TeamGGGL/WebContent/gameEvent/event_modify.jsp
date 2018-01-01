<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Event 글쓰기 - GG GL</title>
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
		var subject=$('#upload').val();
		if(subject.trim()=="")
		{
			$('#upload').focus();
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
		$('#frm').submit();
	});
});
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<h2 class="text-center"><strong>이벤트 게시판</strong></h2>
			<br>
			
			<div class="col">
			<form method="post" action="event_modify_ok.do" id=frm>
				<div class="col-lg-6">
					 
					<table class="table table-hover">
						<tr>
							<td class="text-center" colspan=2>이벤트 / 대회</td>
						</tr>
						<tr>
							<td width=20% class="text-center">이벤트 일자</td>
							<td width=30% class="text-center">
							<input class="input" type=date name=day id=day size=30 value="${vo.event_day } "></td>
						</tr>
						<tr>
							<td width=20% class="text-center">이벤트 장소</td>
							<td width=30% class="text-right"><input type=text
								name=place size=50 id="place" class="input" value="${vo.event_place }"></td>
						</tr>
						<tr>
							<td class="text-center" colspan=2>대표 포스터</td>
						</tr>

						<tr>
							<td class="text-center" colspan=2><img src="${vo.event_image }"
								 id="img" class="event-img" height=320></td>
						</tr>
						<tr>
							<td class="text-center" colspan=2>
								<center><input type="file" name=upload id="upload"
											onchange="document.getElementById('img').src = window.URL.createObjectURL(this.files[0])"></center>
							</td>
						</tr>
					</table>
				</div>

				<div class="col-lg-6">
					<table class="table event-table table-hover">
						<tr>
							<td width=10% class="text-right">분류</td>
							<td class="category" width=40% class="text-left">
								<select name=category id="category">
									<option value="일반" <c:if test="${vo.event_category == 일반}">selected="selected"</c:if>>일반</option>
									<option value="PC방" <c:if test="${vo.event_category == PC방}">selected="selected"</c:if>>PC방</option>
									<option value="공식" <c:if test="${vo.event_category == 공식}">selected="selected"</c:if>>공식</option>
									<option value="개인" <c:if test="${vo.event_category == 개인}">selected="selected"</c:if>>개인</option>
									<option value="이벤트" <c:if test="${vo.event_category == 이벤트}">selected="selected"</c:if>>이벤트</option>
								</select>
							</td>
						</tr>
						<tr>
							<td width=10% class="text-right">지역</td>
							<td class="category" width=40% class="text-left" >
								<select name=city id="city">
									<option value="서울" <c:if test="${vo.event_city == 서울}">selected="selected"</c:if>>서울</option>
									<option value="경기" <c:if test="${vo.event_city == 경기}">selected="selected"</c:if> >경기</option>
									<option value="인천" <c:if test="${vo.event_city == 인천}">selected="selected"</c:if>>인천</option>
									<option value="강원" <c:if test="${vo.event_city == 강원}">selected="selected"</c:if>>강원</option>
									<option value="충북" <c:if test="${vo.event_city == 충북}">selected="selected"</c:if>>충북</option>
									<option value="충남" <c:if test="${vo.event_city == 충남}">selected="selected"</c:if>>충남</option>
									<option value="전북" <c:if test="${vo.event_city == 전북}">selected="selected"</c:if>>전북</option>
									<option value="전남" <c:if test="${vo.event_city == 전남}">selected="selected"</c:if>>전남</option>
									<option value="경북" <c:if test="${vo.event_city == 경북}">selected="selected"</c:if>>경북</option>
									<option value="경남" <c:if test="${vo.event_city == 경남}">selected="selected"</c:if>>경남</option>
									<option value="제주" <c:if test="${vo.event_city == 제주}">selected="selected"</c:if>>제주</option>
									<option value="기타" <c:if test="${vo.event_city == 기타}">selected="selected"</c:if>>기타</option>		
								</select>
							</td>
						</tr>
						<tr>
							<td width=10% class="text-right qna-td">제목</td>
							<td width=90% class="text-left qna-td"><input class="input" type=text
								name=subject size=65 id="subject" value="${vo.event_title }"></td>
						</tr>
						<tr>
							<td width=10% class="text-right qna-td" valign="top">내용</td>
							<td width=90% class="text-left qna-td">
								<textarea class="input" rows="20" cols="65" name=content id="content">
								${vo.event_content }
								</textarea>
							</td>
						</tr>
					</table>
					</form>
				</div>
				<div class="text-right">
					<input type="button" value="등록" class="btn btn-nm btn-danger" id="writeBtn">
					<input type="button" class="btn btn-nm btn-success" value="취소"
						onclick="javascript:history.back()">
				</div>
			</div>
		</div>
	</div>
</body>
</html>