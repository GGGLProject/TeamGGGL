<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Event - GG GL</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/eventList.css" rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<h2 class="text-center">
					<strong>EVENT</strong>
				</h2>
				<br>
				<table class="table table-hover">
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
					
					<c:forEach var="vo" items="${list }">
						<c:if test="${vo.event_day<today }">
						<tr class="text-link" style="background-color: rgba(0,0,0,0.9); color:gray; opacity:0.5;">
							<td class="text-center td-top">${vo.event_no }</td>
							<td class="text-center td-top">종료</td>
							<td class="text-center"><a href="event_content.do"><img
									src="${vo.event_image }" width=100 height=50></a></td>
							<td class="text-center td-top"><a href="event_content.do?no=${vo.event_no }" style="background-color: rgba(0,0,0,0.9); color:gray;">${vo.event_title }</a></td>
							<td class="text-center td-top"><%-- <fmt:parseDate var="parsedDate" value="${vo.event_day }" pattern="yyy-MM-dd" />
							<fmt:formatDate var="newFormattedDateString" value="${parseDate }" pattern="yyy-MM-dd" /> --%>
							<fmt:formatDate value="${vo.event_day}" pattern="yyyy.MM.dd(E)" />
							</td>
							<!--<fmt:formatDate	value="${vo.event_day }"  type="date" dateStyle="full" /></td>-->
							<td class="text-center td-top">${vo.event_place }</td>
							<td class="text-center td-top">${vo.event_id }</td>
							<td class="text-center td-top">${vo.event_hit }</td>
						</tr>
						
						</c:if>
						<c:if test="${vo.event_day>=today }">
						<tr class="text-link">
							<td class="text-center td-top">${vo.event_no }</td>
							<td class="text-center td-top">${vo.event_category }</td>
							<td class="text-center"><a href="event_content.do"><img
									src="${vo.event_image }" width=100 height=50></a></td>
							<td class="text-center td-top"><a href="event_content.do?no=${vo.event_no }">${vo.event_title }</a></td>
							<td class="text-center td-top"><%-- <fmt:parseDate var="parsedDate" value="${vo.event_day }" pattern="yyy-MM-dd" />
							<fmt:formatDate var="newFormattedDateString" value="${parseDate }" pattern="yyy-MM-dd" /> --%>
							<fmt:formatDate value="${vo.event_day}" pattern="yyyy.MM.dd(E)" />
							</td>
							<!--<fmt:formatDate	value="${vo.event_day }"  type="date" dateStyle="full" /></td>-->
							<td class="text-center td-top">${vo.event_place }</td>
							<td class="text-center td-top">${vo.event_id }</td>
							<td class="text-center td-top">${vo.event_hit }</td>
						</tr>
						</c:if>
					</c:forEach>
				</table>
	
						
				
				
					<%-- 								<!-- 페이징ver백업 -->
			
      <span>
             <a href="event_list.do?page=${curpage<11?curpage:curpage-10 }" class="btn btn-warning btn-sm">◀◀</a>&nbsp;&nbsp;&nbsp;
             <a href="event_list.do?page==${curpage<2?curpage:curpage-1 }" class="btn btn-warning btn-sm">◀</a>&nbsp;&nbsp;&nbsp;
                   
             <fmt:parseNumber var="num" value="${curpage/10}" integerOnly="true"/>
             <c:set var="num" value="${num<=0?1:num*10}"/>  
             <c:forEach var="i"  begin="${num}" end="${num==1?num+8:num+9}">
                <c:choose>
                   <c:when test="${i > totalpage }"></c:when>
                   <c:when test="${i==curpage}">
                   <a href="event_list.do?page=${i}">
                      <b style="color:black;font-size:40px">${i}</b>
                      </a>
                   </c:when>
                   <c:when test="${i <= totalpage}">
                      <a href="event_list.do?page=${i }">
                         <b style="color:gray;font-size:25px">${i}</b>
                      </a>
                   </c:when>
                </c:choose>
             </c:forEach>
             &nbsp; &nbsp;
             <a href="event_list.do?page=${curpage<totalpage?curpage+1:curpage}" class="btn btn-warning btn-sm">▶</a> &nbsp;&nbsp;&nbsp;&nbsp;
            <a href="event_list.do?page=${curpage<=totalpage-10?curpage+10:curpage}" class="btn btn-warning btn-sm">▶▶</a>&nbsp;
     
     	<a href="event_write.do" style="float:right;" class="btn btn-danger btn-nm">등록</a></span>
      </span>

   <!-- 페이징ver2 end --> --%>
					<!-- 페이징ver2 -->
				

					<!-- 페이징ver2 end -->
					<%-- 			<!-- 페이징 sg-->
			<table>
			
			<tr>
			<td class="text-left"></td>
			
			
			<td class="text-right">
			<a href="event_list.do?page=${curpage>1?curpage-1:curpage }" class="btn btn-primary">◀</a>&nbsp;
			<c:forEach var="i" begin="1" end="${totalpage }">
			<a href="event_list.do?page=${i }" class="btn btn-primary">${i }</a>&nbsp;
			</c:forEach>
			<a href="event_list.do?page=${curpage<totalpage?curpage+1:curpage }" class="btn btn-primary">▶</a>&nbsp;&nbsp;
			${curpage }page / ${totalpage } pages
			</td>
		
			</tr>
			
			</table>
			<!-- 페이징끝  --> --%>
	
			</div>



		</div>
		<center>
	<ul class="pagination pagination-centered">
							<li><a href="event_list.do?page=${curpage<11?curpage:curpage-10}">&laquo;</a></li>
							<fmt:parseNumber var="num" value="${curpage/10}"
								integerOnly="true" />
							<c:set var="num" value="${num<=0?1:num*10}" />
							<c:forEach var="i" begin="${num}" end="${num==1?num+8:num+9}">
								<c:choose>
									<c:when test="${i > totalpage }"></c:when>
									<c:when test="${i==curpage}">
										<li class="active"><a href="event_list.do?page=${i}">${i}</a></li>
									</c:when>
									<c:when test="${i <= totalpage}">
										<li><a href="event_list.do?page=${i }">${i}</a></li>
									</c:when>
								</c:choose>
							</c:forEach>

							<li><a href="event_list.do?page=${curpage<=totalpage-10?curpage+10:curpage}">&raquo;</a></li>
						</ul>
						<a href="event_write.do" style="float: right;"
						class="btn btn-danger btn-nm btn-sub">등록</a>
						
						</center>
						
			</div>
			

</body>
</html>