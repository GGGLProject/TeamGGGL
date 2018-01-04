<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<link href="css/adminpage.css" rel="stylesheet" type="text/css">
 
</head>
<body>
	<div id="member_area">
		<center>
		 <h1 style="color:white">예매현황보기</h1>
		 	<table id="table_content" width=900>
		 		<tr>
		 			<th>회원 이메일</th>
		 			<th>회원 번호</th>
		 			<th>회원 닉네임</th>
		 			<th>회원 관심리그</th>
		 			<th>회원 핸드폰번호</th>
		 			<th>회원 등급</th>
		 			<th>회원 가입날짜</th>
		 			<th>회원 생년월일</th>
		 		</tr>
		 		 <c:forEach var="vo" items="${list }">
		 		 	<tr class="dataTr">
		 		 		<td>${vo.member_id }</td>
		 		 		<td>${vo.member_no }</td>
		 		 		<td>${vo.member_nickname }</td>
		 		 		<td>${vo.member_favor }</td>
		 		 		<td>${vo.member_phone }</td>
		 		 		<td>
		 		 			<c:if test="${vo.member_grade.trim()=='1' }">
		 		 				<span style="color:gray">관리자님</span>
		 		 			</c:if>
		 		 			
		 		 			<c:if test="${vo.member_grade.trim()=='2' }">
		 		 				<a href="member_ok.do?no=${vo.member_no }">일반회원</a>
		 		 			</c:if>
		 		 			<c:if test="${vo.member_grade.trim()=='3' }">
		 		 				<a href="member_iok.do?no=${vo.member_no }">우수회원</a>
		 		 			</c:if>
		 		 		</td>
		 		 		<td>
		 		 			<fmt:formatDate value="${vo.member_regdate }" pattern="yyyy-MM-dd"/>
		 		 		</td>
		 		 		<td>${vo.member_birthday }</td>
		 		 	</tr>
		 		 </c:forEach>
		 	</table>
		</center>
	</div>
</body>
</html>