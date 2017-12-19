<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Event 글쓰기 - GG GL</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="../css/eventWrite.css" rel="stylesheet" type="text/css">
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
					<table class="table table-hover">
						<tr>
							<td class="text-center" colspan=2>이벤트 / 대회</td>
						</tr>
						<tr>
							<td width=20% class="text-center">이벤트 일정</td>
							<td width=30% class="text-center"><input class="input" type=date name="day" size=30>~<input class="input" type=date name="day" size=30></td>
						</tr>
						<tr>
							<td width=20% class="text-center">이벤트 장소</td>
							<td width=30% class="text-right"><input type=text
								name=place size=50 id="place" class="input"></td>
						</tr>
						<tr>
							<td class="text-center" colspan=2>대표 포스터</td>
						</tr>

						<tr>
							<td class="text-center" colspan=2><img src="../image/posterImage.png"
								class="event-img" height=350></td>
						</tr>
						<tr>
							<td class="text-center" colspan=2>
								<center><input type=file name=upload size=50 id="upload"></center>
							</td>
						</tr>
					</table>
				</div>

				<div class="col-lg-6">
					<table class="table event-table table-hover">
						<tr>
							<td width=10% class="text-right">분류</td>
							<td class="category" width=40% class="text-left">
								<select name="category">
									<option value="general">일반</option>
									<option value="schedule">일정</option>
									<option value="result">결과</option>
								</select>
							</td>
						</tr>
						<tr>
							<td width=10% class="text-right">지역</td>
							<td class="category" width=40% class="text-left" >
								<select name="category">
									<option value="서울">서울</option>
									<option value="경기">경기</option>
									<option value="인천">인천</option>
									<option value="강원">강원</option>
									<option value="충북">충북</option>
									<option value="충남">충남</option>
									<option value="전북">전북</option>
									<option value="전남">전남</option>
									<option value="경북">경북</option>
									<option value="경남">경남</option>
									<option value="제주">제주</option>
									<option value="기타">기타</option>		
								</select>
							</td>
						</tr>
						<tr>
							<td width=10% class="text-right qna-td">제목</td>
							<td width=90% class="text-left qna-td"><input class="input" type=text
								name=subject size=65 id="subject" ></td>
						</tr>
						<tr>
							<td width=10% class="text-right qna-td" valign="top">내용</td>
							<td width=90% class="text-left qna-td">
								<textarea class="input" rows="20" cols="65" name=content id="content">
								
								
	타이틀 : 

	대회소개 : 

	■ 대회 날짜 :

	■ 지역 안내 :

	■ 참가 신청 :

	■ 참가 방법 :


	■ 대회 상품 :
								</textarea>
							</td>
						</tr>
					</table>
				</div>
				<div class="text-right">
					<input type="submit" value="등록" class="btn btn-nm btn-danger">
					<input type="button" class="btn btn-nm btn-success" value="취소"
						onclick="javascript:history.back()">
				</div>
			</div>
		</div>
	</div>
</body>
</html>