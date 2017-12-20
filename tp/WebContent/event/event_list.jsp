<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<script type="text/javascript" src="../js/jquery-2.1.3.min.js"></script>	
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<style type="text/css">
.table-hover tbody tr:hover td, .table-hover tbody tr:hover th {
background-color: rgba(0,0,0,0.9);
vertical-align: middle;
}

.table tbody tr td, tbody tr th{
	vertical-align: middle;
}

body {
	background-image: url('image/csgo1.jpg');
	 background-repeat: no-repeat;

	color:white;
}
.table {
	 background-color: rgba(0,0,0,0.9);
}
.text-link td>a {
	color:white;
	text-decoration:none;
	}

</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<h3 class="text-center">이벤트 게시판</h3><br>
				<table class="table table-hover" >
			<tr>
						<th class="text-center" width="5%">번호</th>
						<th class="text-center" width="5%">분류</th>
						<th class="text-center" width="15%">이미지</th>
						<th class="text-center" width="30%">제목</th>
						<th class="text-center" width="15%">이벤트일자</th>
						<th class="text-center" width="10%">장소</th>
						<th class="text-center" width="10%">게시자</th>
						<th class="text-center" width="5%">조회수</th>
					</tr>
				
						<c:forEach var="i" begin="1" end="10">
						<tr class ="text-link">
						
						<td  class="text-center td-top">${i }</td>
						<td class="text-center td-top">PUBG</td>
						<td class="text-center"><a href="event_content.jsp"><img src="image/4.png" width=100 height=50></a></td>
						<td class="text-center td-top"><a href="event_content.jsp">신촌] 신촌역 3POP PC방 배틀그라운드 듀오 대회</a></td>
						<td class="text-center td-top">2017.10.20</td>
						<td class="text-center td-top">신촌 3POP PC방</td>
							<td class="text-center td-top">임도진</td>
						<td class="text-center td-top">hit</td>
				
					</tr>
				</c:forEach>
				</table>
			</div>
			
			</div>
			<div class="text-right">
			<a href="event_write.jsp" class="btn btn-success btn-nm">등록</a>
			</div>
		</div>
	</div>
</body>
</html>