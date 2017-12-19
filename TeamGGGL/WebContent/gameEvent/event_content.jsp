<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Event 상세 내용 - GG GL</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="../css/eventContent.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<h2 class="text-center"><strong>이벤트 게시판</strong></h2>
			<br>
			<div class="col">
				<div class="col-lg-6">
					<table class="table">
						<tr>
							<td class="text-center" colspan=2>이벤트 / 대회</td>
						</tr>
						<tr>
							<td width=20% class="text-center">이벤트 일정</td>
							<td width=30% class="text-center">$2020.12.22 ~ $2020.12.22
						<tr>
							<td width=20% class="text-center">이벤트 장소</td>
							<td width=30% class="text-center">$이벤트장소</td>
						</tr>
						<tr>
							<td class="text-center" colspan=2>대표 포스터</td>
						</tr>
						<tr>
							<td class="text-center" colspan=2>
								<img src="../image/posterImage.png" class="event-img" height=350>
							</td>
						</tr>
						<tr>
							<td class="text-center" colspan=2>
								<center>$대회이름</center>
							</td>
						</tr>
					</table>
				</div>

				<div class="col-lg-6">
					<table class="table event-table">
						<tr>
							<td width=10% class="text-right">분류</td>
							<td class="category" width=40% class="text-left">
								<select name="category">
									<option value="분류" >$분류</option>
								</select>
							</td>
						</tr>
						<tr>
							<td width=10% class="text-right">지역</td>
							<td class="category" width=40% class="text-left" >
								<select name="category">
									<option value="지역">$지역</option>
								</select>
							</td>
						</tr>
						<tr>
							<td width=10% class="text-right qna-td">제목</td>
							<td class="text" width=40% class="text-left qna-td">제목입력칸</td>
						</tr>						
						<tr>
							<td class="text-right qna-td" valign="top">내용</td>
							<td class="input text-left qna-td">
								<pre class="input">
		
		
 타이틀 : 도진상배 스타크래프트 최강전

 대회소개 : 부조장 도진이가 주최하는 도진상배 스타2 개인리그전

 ■ 대회 날짜 : 2017.12.39 18:20

 ■ 지역 안내 : 서울 홍대 쌍용강북교육센터

 ■ 참가 신청 : 도진상에게 개인메일로 참가신청바랍니다.

 ■ 참가 방법 : 메일로 참가의견 제시후 도진상에게 따로 연락


 ■ 대회 상품 : 도진이의 사랑


								</pre>
							</td>
						</tr>
					</table>
				</div>
				<div class="text-right">
					<input type="button" value="수정" class="btn btn-nm btn-info">
					<input type="button" class="btn btn-nm btn-success" value="목록"
						onclick="javascript:history.back()">
						<input type="button" value="삭제" class="btn btn-nm btn-danger">
				</div>
			</div>

		</div>

	</div>
</body>
</html>