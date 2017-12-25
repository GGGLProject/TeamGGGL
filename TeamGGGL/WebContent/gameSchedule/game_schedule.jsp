<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, java.text.*"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	 java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("MM.dd(E)");
	 String today = formatter.format(new java.util.Date());
	 out.println(today);
	 
	 Calendar day = Calendar.getInstance();
	 day.add(Calendar.DATE , -1);
	 String onedaybefore = new java.text.SimpleDateFormat("MM.dd(E)").format(day.getTime());
	 
	 day.add(Calendar.DATE , -1);
	 String twodaybefore = new java.text.SimpleDateFormat("MM.dd(E)").format(day.getTime());
	 
	 day.add(Calendar.DATE , -1);
	 String threedaybefore = new java.text.SimpleDateFormat("MM.dd(E)").format(day.getTime());
	 
	 day.add(Calendar.DATE , +4);
	 String onedayafter = new java.text.SimpleDateFormat("MM.dd(E)").format(day.getTime());
	 
	 day.add(Calendar.DATE , +1);
	 String twodayafter = new java.text.SimpleDateFormat("MM.dd(E)").format(day.getTime());
	 
	 day.add(Calendar.DATE , +1);
	 String threedayafter = new java.text.SimpleDateFormat("MM.dd(E)").format(day.getTime());
	 
	//String home_name = request.setAttribute("home_name", "${vo.home_name }");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>일정 / 결과 - GG GL</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/gameSchedule.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function () {

    $(".middle_tab_content").hide();
    $(".middle_tab_content:first").show();

    $("ul.middle_nav_tabs li").click(function () {
        $("ul.middle_nav_tabs li").removeClass("active2");
        $(this).addClass("active2");
        $(".middle_tab_content").hide();
        var activeTab = $(this).attr("rel");
        $("#" + activeTab).fadeIn();
    });
});
</script>
<style type="text/css">
.leaguechoice {
	text-align: center;
	color: white;
}
.tab-content .tab-pane .row .gameready .firstteam_logo {
	margin-top: 10px;
}
.tab-content .tab-pane .row .gameready .firstteam_name {
	font-size: 16px;
	line-height: 20px;
	text-align: center;
}
.tab-content .tab-pane .row .gameready .vsvs {
	padding-left: 113px;
}
.tab-content .tab-pane .row .gameready .lastteam_name {
	width: 100px;
	font-size: 16px;
	line-height: 20px;
	text-align: center;
}
.tab-content .tab-pane .row .gameready .detail_button {
	margin-top: 55px;
}
.tab-content .tab-pane .row .gameover .firstteam_logo img {
	padding-top: -5px;
	width: 65px;
	height: 46px;
	margin-left: 12px;
}
.tab-content .tab-pane .row .gameover .firstteam_logo {
	margin-top: 10px;
}
.tab-content .tab-pane .row .gameover .firstteam_name {
	font-size: 16px;
	line-height: 20px;
	text-align: center;
}
.tab-content .tab-pane .row .gameover .lastteam_logo img {
	width: 65px;
	height: 46px;
	margin-left: 20px;
}
.tab-content .tab-pane .row .gameover .lastteam_name {
	width: 100px;
	font-size: 16px;
	line-height: 20px;
	text-align: center;
}
.tab-content .tab-pane .row .gameover .detail_button {
	margin-top: 55px;
}
</style>
</head>
<body>
	<div class="container">
		<h2><strong>경기 일정 / 결과</strong></h2>
		<br>
		<ul class="nav nav-tabs">
			<li style="width: 14.28%" class="nonselected"><a data-toggle="tab" href="#home"><%=threedaybefore %></a></li>
			<li style="width: 14.28%" class="nonselected"><a data-toggle="tab" href="#menu1"><%=twodaybefore %></a></li>
			<li style="width: 14.28%" class="nonselected"><a data-toggle="tab" href="#menu2"><%=onedaybefore %></a></li>
			<li style="width: 14.28%" class="active"><a data-toggle="tab" href="#menu3"><%=today %></a></li>
			<li style="width: 14.28%" class="nonselected"><a data-toggle="tab" href="#menu4"><%=onedayafter %></a></li>
			<li style="width: 14.28%" class="nonselected"><a data-toggle="tab" href="#menu5"><%=twodayafter %></a></li>
			<li style="width: 14.28%" class="nonselected"><a data-toggle="tab" href="#menu6"><%=threedayafter %></a></li>
		</ul>

		<div class="tab-content">
			<div id="home" class="tab-pane fade">
				<div class="row">
					<c:set var="count" value="1"/>	
					<c:forEach var="vo" items="${list_3}" varStatus="status">
					<div class="col-md-3 gameover">
						<div class="leaguelogo">${vo.match_league }</div>
						<div class="firstteam_logo"><img src="${vo.team_icon }" height="50px"></div>
						<div class="firstteam_name">${vo.home_name }</div>
						<div class="firstteam_score">${vo.home_score }</div>
						<div class="vsvs">:</div>
						<div class="lastteam_score">${vo.away_score }</div>
						<div class="lastteam_logo"><img src="${list_3_[status.index].team_icon }"></div>
						<div class="lastteam_name">${vo.away_name }</div>
						<div class="game_time">종료</div>
						<a href="game_detail.do?match_no=${vo.match_no }"><div class="detail_button">상세보기 ></div></a>
					</div>
					<c:set var="count" value="${status.index+1 }"/>
					</c:forEach>
					<c:if test="${count==3 }">
						<div class="col-md-3 nogame"><img src="gameSchedule/image/excla.png"><p>경기가 없습니다.</p></div>
					</c:if>
					<c:if test="${count==2 }">
						<div class="col-md-3 nogame"><img src="gameSchedule/image/excla.png"><p>경기가 없습니다.</p></div>
						<div class="col-md-3 nogame"><img src="gameSchedule/image/excla.png"><p>경기가 없습니다.</p></div>
					</c:if>
				</div>
			</div>
			<div id="menu1" class="tab-pane fade">
				<div class="row">
					<c:set var="count" value="1"/>
					<c:forEach var="vo" items="${list_2}" varStatus="status">
					<div class="col-md-3 gameover">
						<div class="leaguelogo">${vo.match_league }</div>
						<div class="firstteam_logo"><img src="${vo.team_icon }"></div>
						<div class="firstteam_name">${vo.home_name }</div>
						<div class="firstteam_score">${vo.home_score }</div>
						<div class="vsvs">:</div>
						<div class="lastteam_score">${vo.away_score }</div>
						<div class="lastteam_logo"><img src="${list_2_[status.index].team_icon }"></div>
						<div class="lastteam_name">${vo.away_name }</div>
						<div class="game_time">종료</div>
						<a href="game_detail.do"><div class="detail_button">상세보기 ></div></a>
					</div>
					<c:set var="count" value="${status.index+1 }"/>
					</c:forEach>
					<c:if test="${count==3 }">
						<div class="col-md-3 nogame"><img src="gameSchedule/image/excla.png"><p>경기가 없습니다.</p></div>
					</c:if>
					<c:if test="${count==2 }">
						<div class="col-md-3 nogame"><img src="gameSchedule/image/excla.png"><p>경기가 없습니다.</p></div>
						<div class="col-md-3 nogame"><img src="gameSchedule/image/excla.png"><p>경기가 없습니다.</p></div>
					</c:if>
				</div>
			</div>
			<div id="menu2" class="tab-pane fade">
				<div class="row">
					<c:set var="count" value="1"/>
					<c:forEach var="vo" items="${list_1}" varStatus="status">
					<div class="col-md-3 gameover">
						<div class="leaguelogo">${vo.match_league }</div>
						<div class="firstteam_logo"><img src="${vo.team_icon }"></div>
						<div class="firstteam_name">${vo.home_name }</div>
						<div class="firstteam_score">${vo.home_score }</div>
						<div class="vsvs">:</div>
						<div class="lastteam_score">${vo.away_score }</div>
						<div class="lastteam_logo"><img src="${list_1_[status.index].team_icon }"></div>
						<div class="lastteam_name">${vo.away_name }</div>
						<div class="game_time">종료</div>
						<a href="game_detail.do"><div class="detail_button">상세보기 ></div></a>
					</div>
					<c:set var="count" value="${status.index+1 }"/>
					</c:forEach>
					<c:if test="${count==3 }">
						<div class="col-md-3 nogame"><img src="gameSchedule/image/excla.png"><p>경기가 없습니다.</p></div>
					</c:if>
					<c:if test="${count==2 }">
						<div class="col-md-3 nogame"><img src="gameSchedule/image/excla.png"><p>경기가 없습니다.</p></div>
						<div class="col-md-3 nogame"><img src="gameSchedule/image/excla.png"><p>경기가 없습니다.</p></div>
					</c:if>
				</div>
			</div>
			<div id="menu3" class="tab-pane fade in active">
				<div class="row">
					<c:set var="count" value="1"/>
					<c:forEach var="vo" items="${list}" varStatus="status">
					<div class="col-md-3 gameover">
						<div class="leaguelogo">${vo.match_league }</div>
						<div class="firstteam_logo"><img src="${vo.team_icon }"></div>
						<div class="firstteam_name">${vo.home_name }</div>
						<div class="firstteam_score">${vo.home_score }</div>
						<div class="vsvs">:</div>
						<div class="lastteam_score">${vo.away_score }</div>
						<div class="lastteam_logo"><img src="${list_[status.index].team_icon }"></div>
						<div class="lastteam_name">${vo.away_name }</div>
						<div class="game_time">종료</div>
						<a href="game_detail.do"><div class="detail_button">상세보기 ></div></a>
					</div>
					<%-- <div class="col-md-3 gameready">
						<div class="leaguelogo">${vo.match_league }</div>
						<div class="firstteam_logo"><img src="gameSchedule/image/fnatic.png"></div>
						<div class="firstteam_name">${vo.home_name }</div>
						<div class="vsvs">VS</div>
						<div class="lastteam_logo"><img src="gameSchedule/image/fnatic.png"></div>
						<div class="lastteam_name">${vo.away_name }</div>
						<div class="game_time">${vo.match_time }</div>
						<a href="game_detail.do"><div class="detail_button">상세보기 ></div></a>
					</div> --%>
					<c:set var="count" value="${status.index+1 }"/>
					</c:forEach>
					<c:if test="${count==3 }">
						<div class="col-md-3 nogame"><img src="gameSchedule/image/excla.png"><p>경기가 없습니다.</p></div>
					</c:if>
					<c:if test="${count==2 }">
						<div class="col-md-3 nogame"><img src="gameSchedule/image/excla.png"><p>경기가 없습니다.</p></div>
						<div class="col-md-3 nogame"><img src="gameSchedule/image/excla.png"><p>경기가 없습니다.</p></div>
					</c:if>
				</div>
			</div>
			<div id="menu4" class="tab-pane fade">
				<div class="row">
					<c:set var="count" value="1"/>
					<c:forEach var="vo" items="${list__1}" varStatus="status">
					<div class="col-md-3 gameover">
						<div class="leaguelogo">${vo.match_league }</div>
						<div class="firstteam_logo"><img src="${vo.team_icon }"></div>
						<div class="firstteam_name">${vo.home_name }</div>
						<div class="firstteam_score">${vo.home_score }</div>
						<div class="vsvs">:</div>
						<div class="lastteam_score">${vo.away_score }</div>
						<div class="lastteam_logo"><img src="${list__1_[status.index].team_icon }"></div>
						<div class="lastteam_name">${vo.away_name }</div>
						<div class="game_time">종료</div>
						<a href="game_detail.do"><div class="detail_button">상세보기 ></div></a>
					</div>
					<c:set var="count" value="${status.index+1 }"/>
					</c:forEach>
					<c:if test="${count==3 }">
						<div class="col-md-3 nogame"><img src="gameSchedule/image/excla.png"><p>경기가 없습니다.</p></div>
					</c:if>
					<c:if test="${count==2 }">
						<div class="col-md-3 nogame"><img src="gameSchedule/image/excla.png"><p>경기가 없습니다.</p></div>
						<div class="col-md-3 nogame"><img src="gameSchedule/image/excla.png"><p>경기가 없습니다.</p></div>
					</c:if>
				</div>
			</div>
			<div id="menu5" class="tab-pane fade">
				<div class="row">
					<c:set var="count" value="1"/>
					<c:forEach var="vo" items="${list__2}" varStatus="status">
					<div class="col-md-3 gameover">
						<div class="leaguelogo">${vo.match_league }</div>
						<div class="firstteam_logo"><img src="${vo.team_icon }"></div>
						<div class="firstteam_name">${vo.home_name }</div>
						<div class="firstteam_score">${vo.home_score }</div>
						<div class="vsvs">:</div>
						<div class="lastteam_score">${vo.away_score }</div>
						<div class="lastteam_logo"><img src="${list__2_[status.index].team_icon }"></div>
						<div class="lastteam_name">${vo.away_name }</div>
						<div class="game_time">종료</div>
						<a href="game_detail.do"><div class="detail_button">상세보기 ></div></a>
					</div>
					<c:set var="count" value="${status.index+1 }"/>
					</c:forEach>
					<c:if test="${count==3 }">
						<div class="col-md-3 nogame"><img src="gameSchedule/image/excla.png"><p>경기가 없습니다.</p></div>
					</c:if>
					<c:if test="${count==2 }">
						<div class="col-md-3 nogame"><img src="gameSchedule/image/excla.png"><p>경기가 없습니다.</p></div>
						<div class="col-md-3 nogame"><img src="gameSchedule/image/excla.png"><p>경기가 없습니다.</p></div>
					</c:if>
				</div>
			</div>
			<div id="menu6" class="tab-pane fade">
				<div class="row">
					<c:set var="count" value="1"/>
					<c:forEach var="vo" items="${list__3}" varStatus="status">
					<div class="col-md-3 gameover">
						<div class="leaguelogo">${vo.match_league }</div>
						<div class="firstteam_logo"><img src="${vo.team_icon }"></div>
						<div class="firstteam_name">${vo.home_name }</div>
						<div class="firstteam_score">${vo.home_score }</div>
						<div class="vsvs">:</div>
						<div class="lastteam_score">${vo.away_score }</div>
						<div class="lastteam_logo"><img src="${list__3_[status.index].team_icon }"></div>
						<div class="lastteam_name">${vo.away_name }</div>
						<div class="game_time">종료</div>
						<a href="game_detail.do"><div class="detail_button">상세보기 ></div></a>
					</div>
					<c:set var="count" value="${status.index+1 }"/>
					</c:forEach>
					<c:if test="${count==3 }">
						<div class="col-md-3 nogame"><img src="gameSchedule/image/excla.png"><p>경기가 없습니다.</p></div>
					</c:if>
					<c:if test="${count==2 }">
						<div class="col-md-3 nogame"><img src="gameSchedule/image/excla.png"><p>경기가 없습니다.</p></div>
						<div class="col-md-3 nogame"><img src="gameSchedule/image/excla.png"><p>경기가 없습니다.</p></div>
					</c:if>
				</div>
			</div>
			
		</div>
	
		<br><br><br><br><br>





		<div id="middle_nav_menu">
			<h3 class="leaguechoice">리그별 경기일정</h3><hr>
			<ul class="middle_nav_tabs">
				<li class="active2" rel="tab1">ALL</li>
				<li rel="tab2"><img src="gameSchedule/image/lck.png">LCK</li>
				<li rel="tab3"><img src="gameSchedule/image/na-lcs.png">NA LCS</li>
				<li rel="tab4"><img src="gameSchedule/image/eu-lcs.png">EU LCS</li>
				<li rel="tab5"><img src="gameSchedule/image/wcs.png">Worlds</li>
			</ul>
			<div class="middle_tab_container">
			<!-- All -->
				<div id="tab1" class="middle_tab_content">
					<div class="row qnarow gametable">
						<h4><%=threedaybefore %></h4>	<!-- 12.18(월) -->
				    	<table class="table">
				    		<tr>
				    			<th width=8% class="text-center qna-th">리그</th>
				    			<th width=30% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
				
				    		<c:forEach var="vo" items="${list_3}" varStatus="status">
				    			
				 
				    			<tr>
				    				<td width=8% class="text-center qna-th">${vo.match_league }</td>				    				
				    				<td width=30% class="text-center qna-th">${vo.match_name }</td>				    				
				    				<td width=10% class="text-center qna-th">${vo.match_time }</td>
				    				<td width=37% class="text-center qna-th">${vo.home_name }&nbsp;&nbsp;
				    				<img src="${vo.team_icon }" height="28px">
				    				&nbsp;&nbsp;&nbsp;${vo.home_score }&nbsp;:&nbsp;${vo.away_score }&nbsp;&nbsp;&nbsp;	
				    				<img src="${list_3_[status.index].team_icon }" height="28px">	
				    				&nbsp;&nbsp;${vo.away_name }</td>
				    				<td width=15% class="text-center qna-th"><a href="#"><div>상세보기 ></div></a></td>
				    			</tr>
				    			
				    		</c:forEach>
				    	
				    	</table>
				    	<br>
				    	<h4><%=twodaybefore %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
				    		
		    				<c:forEach var="vo" items="${list_2}" varStatus="status">
				    			<tr>
				    				<td width=8% class="text-center qna-th">${vo.match_league }</td>
				    				<td width=30% class="text-center qna-th">${vo.match_name }</td>
				    				<td width=10% class="text-center qna-th">${vo.match_time }</td>
				    				<td width=37% class="text-center qna-th">${vo.home_name }&nbsp;&nbsp;
				    				<img src="${vo.team_icon }" height="28">
				    				&nbsp;&nbsp;&nbsp;${vo.home_score }&nbsp;:&nbsp;${vo.away_score }&nbsp;&nbsp;&nbsp;
				    				<img src="${list_2_[status.index].team_icon }" height="28">
				    				&nbsp;&nbsp;${vo.away_name }</td>
				    				<td width=15% class="text-center qna-th"><a href="#"><div>상세보기 ></div></a></td>
				    			</tr>
				    		</c:forEach>
				    		
				    		
				    	</table>
						<br>
				    	<h4><%=onedaybefore %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
				    		<c:forEach var="vo" items="${list_1}" varStatus="status">
				    			<tr>
				    				<td width=8% class="text-center qna-th">${vo.match_league }</td>
				    				<td width=30% class="text-center qna-th">${vo.match_name }</td>
				    				<td width=10% class="text-center qna-th">${vo.match_time }</td>
				    				<td width=37% class="text-center qna-th">${vo.home_name }&nbsp;&nbsp;
				    				<img src="${vo.team_icon }" height="28">
				    				&nbsp;&nbsp;&nbsp;${vo.home_score }&nbsp;:&nbsp;${vo.away_score }&nbsp;&nbsp;&nbsp;
				    				<img src="${list_1_[status.index].team_icon }" height="28">
				    				&nbsp;&nbsp;${vo.away_name }</td>
				    				<td width=15% class="text-center qna-th"><a href="#"><div>상세보기 ></div></a></td>
				    			</tr>
				    		</c:forEach>
				    			    		
				    	</table>
				    	<br>
				    	<h4><%=today %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>				    		
		    				<c:forEach var="vo" items="${list}" varStatus="status">
				    			<tr>
				    				<td width=8% class="text-center qna-th">${vo.match_league }</td>
				    				<td width=30% class="text-center qna-th">${vo.match_name }</td>
				    				<td width=10% class="text-center qna-th">${vo.match_time }</td>
				    				<td width=37% class="text-center qna-th">${vo.home_name }&nbsp;&nbsp;
				    				<img src="${vo.team_icon }" height="28">
				    				&nbsp;&nbsp;&nbsp;${vo.home_score }&nbsp;:&nbsp;${vo.away_score }&nbsp;&nbsp;&nbsp;
				    				<img src="${list_[status.index].team_icon }" height="28">
				    				&nbsp;&nbsp;${vo.away_name }</td>
				    				<td width=15% class="text-center qna-th"><a href="#"><div>상세보기 ></div></a></td>
				    			</tr>
				    		</c:forEach>
				    		
				    	</table>
				    	<br>
				    	<h4><%=onedayafter %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
				    		<c:forEach var="vo" items="${list__1}" varStatus="status">
				    			<tr>
				    				<td width=8% class="text-center qna-th">${vo.match_league }</td>
				    				<td width=30% class="text-center qna-th">${vo.match_name }</td>
				    				<td width=10% class="text-center qna-th">${vo.match_time }</td>
				    				<td width=37% class="text-center qna-th">${vo.home_name }&nbsp;&nbsp;
				    				<img src="${vo.team_icon }" height="28">
				    				&nbsp;&nbsp;&nbsp;${vo.home_score }&nbsp;:&nbsp;${vo.away_score }&nbsp;&nbsp;&nbsp;
				    				<img src="${list__1_[status.index].team_icon }" height="28">
				    				&nbsp;&nbsp;${vo.away_name }</td>
				    				<td width=15% class="text-center qna-th"><a href="#"><div>상세보기 ></div></a></td>
				    			</tr>
				    		</c:forEach>
				    			    		
				    	</table>
				    	<br>
				    	<h4><%=twodayafter %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
				    		<c:forEach var="vo" items="${list__2}" varStatus="status">
				    			<tr>
				    				<td width=8% class="text-center qna-th">${vo.match_league }</td>
				    				<td width=30% class="text-center qna-th">${vo.match_name }</td>
				    				<td width=10% class="text-center qna-th">${vo.match_time }</td>
				    				<td width=37% class="text-center qna-th">${vo.home_name }&nbsp;&nbsp;
				    				<img src="${vo.team_icon }" height="28">
				    				&nbsp;&nbsp;&nbsp;${vo.home_score }&nbsp;:&nbsp;${vo.away_score }&nbsp;&nbsp;&nbsp;
				    				<img src="${list__2_[status.index].team_icon }" height="28">
				    				&nbsp;&nbsp;${vo.away_name }</td>
				    				<td width=15% class="text-center qna-th"><a href="#"><div>상세보기 ></div></a></td>
				    			</tr>
				    		</c:forEach>
				    		
				    	</table>
				    	<br>
				    	<h4><%=threedayafter %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
				    		<c:forEach var="vo" items="${list__3}" varStatus="status">
				    			<tr>
				    				<td width=8% class="text-center qna-th">${vo.match_league }</td>
				    				<td width=30% class="text-center qna-th">${vo.match_name }</td>
				    				<td width=10% class="text-center qna-th">${vo.match_time }</td>
				    				<td width=37% class="text-center qna-th">${vo.home_name }&nbsp;&nbsp;
				    				<img src="${vo.team_icon }" height="28">
				    				&nbsp;&nbsp;&nbsp;${vo.home_score }&nbsp;:&nbsp;${vo.away_score }&nbsp;&nbsp;&nbsp;
				    				<img src="${list__3_[status.index].team_icon }" height="28">
				    				&nbsp;&nbsp;${vo.away_name }</td>
				    				<td width=15% class="text-center qna-th"><a href="#"><div>상세보기 ></div></a></td>
				    			</tr>
				    		</c:forEach>
				    			    		
				    	</table>
					</div>
				</div>
				
			<!-- LCK -->
				<div id="tab2" class="middle_tab_content">
					<div class="row qnarow gametable">
						<h4><%=threedaybefore %></h4>
				    	<table class="table table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
				    		
			   				<tr>
				    			<td width=15% class="text-center qna-th"><img src="gameSchedule/image/lck.png" height="32" style="margin-right: 10px">LCK</td>
				    			<td width=23% class="text-center qna-th">LOL World Cup</td>
				    			<td width=10% class="text-center qna-th">18:00</td>
				    			<td width=37% class="text-center qna-th">fnatic<img src="gameSchedule/image/fnatic.png" height="28">VS<img src="gameSchedule/image/faZe.png" height="28">faZe</td>
				    			<td width=15% class="text-center qna-th"><a href="game_detail.do"><div>상세보기 ></div></a></td>
				    		</tr>
				    			    		
				    	</table>
				    	<br>
				    	<h4><%=twodaybefore %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
		    				<tr>
				    			<td colspan="5"><img src="gameSchedule/image/excla.png" height="16">　경기가 없습니다.</td>
				    		</tr>
				    		
				    	</table>
						<br>
				    	<h4><%=onedaybefore %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
				    		
			   				<tr>
				    			<td width=15% class="text-center qna-th"><img src="gameSchedule/image/lck.png" height="32" style="margin-right: 10px">LCK</td>
				    			<td width=23% class="text-center qna-th">LOL World Cup</td>
				    			<td width=10% class="text-center qna-th">18:00</td>
				    			<td width=37% class="text-center qna-th">fnatic<img src="gameSchedule/image/fnatic.png" height="28">VS<img src="gameSchedule/image/faZe.png" height="28">faZe</td>
				    			<td width=15% class="text-center qna-th"><a href="game_detail.do"><div>상세보기 ></div></a></td>
				    		</tr>
				    		
				    	</table>
				    	<br>
				    	<h4><%=today %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
		    				<tr>
				    			<td colspan="5"><img src="gameSchedule/image/excla.png" height="16">　경기가 없습니다.</td>
				    		</tr>
				    		
				    	</table>
				    	<br>
				    	<h4><%=onedayafter %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
				    		
			   				<tr>
				    			<td width=15% class="text-center qna-th"><img src="gameSchedule/image/lck.png" height="32" style="margin-right: 10px">LCK</td>
				    			<td width=23% class="text-center qna-th">LOL World Cup</td>
				    			<td width=10% class="text-center qna-th">18:00</td>
				    			<td width=37% class="text-center qna-th">fnatic<img src="gameSchedule/image/fnatic.png" height="28">VS<img src="gameSchedule/image/faZe.png" height="28">faZe</td>
				    			<td width=15% class="text-center qna-th"><a href="game_detail.do"><div>상세보기 ></div></a></td>
				    		</tr>
				    		
				    	</table>
				    	<br>
				    	<h4><%=twodayafter %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
		    				<tr>
				    			<td colspan="5"><img src="gameSchedule/image/excla.png" height="16">　경기가 없습니다.</td>
				    		</tr>
				    		
				    	</table>
				    	<br>
				    	<h4><%=threedayafter %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
				    		
			   				<tr>
				    			<td width=15% class="text-center qna-th"><img src="gameSchedule/image/lck.png" height="32" style="margin-right: 10px">LCK</td>
				    			<td width=23% class="text-center qna-th">LOL World Cup</td>
				    			<td width=10% class="text-center qna-th">18:00</td>
				    			<td width=37% class="text-center qna-th">fnatic<img src="gameSchedule/image/fnatic.png" height="28">VS<img src="gameSchedule/image/faZe.png" height="28">faZe</td>
				    			<td width=15% class="text-center qna-th"><a href="game_detail.do"><div>상세보기 ></div></a></td>
				    		</tr>
				    		
				    	</table>
					</div>
				</div>
				
			<!-- NA LCS -->
				<div id="tab3" class="middle_tab_content">
					<div class="row qnarow gametable">
						<h4><%=threedaybefore %></h4>
				    	<table class="table table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
				    		
			   				<tr>
				    			<td width=15% class="text-center qna-th"><img src="gameSchedule/image/na-lcs.png" height="32" style="margin-right: 10px">NA LCS</td>
				    			<td width=23% class="text-center qna-th">LOL World Cup</td>
				    			<td width=10% class="text-center qna-th">18:00</td>
				    			<td width=37% class="text-center qna-th">fnatic<img src="gameSchedule/image/fnatic.png" height="28">VS<img src="gameSchedule/image/faZe.png" height="28">faZe</td>
				    			<td width=15% class="text-center qna-th"><a href="game_detail.do"><div>상세보기 ></div></a></td>
				    		</tr>
				    			    		
				    	</table>
				    	<br>
				    	<h4><%=twodaybefore %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
		    				<tr>
				    			<td colspan="5"><img src="gameSchedule/image/excla.png" height="16">　경기가 없습니다.</td>
				    		</tr>
				    		
				    	</table>
						<br>
				    	<h4><%=onedaybefore %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
				    		
			   				<tr>
				    			<td width=15% class="text-center qna-th"><img src="gameSchedule/image/na-lcs.png" height="32" style="margin-right: 10px">NA LCS</td>
				    			<td width=23% class="text-center qna-th">LOL World Cup</td>
				    			<td width=10% class="text-center qna-th">18:00</td>
				    			<td width=37% class="text-center qna-th">fnatic<img src="gameSchedule/image/fnatic.png" height="28">VS<img src="gameSchedule/image/faZe.png" height="28">faZe</td>
				    			<td width=15% class="text-center qna-th"><a href="game_detail.do"><div>상세보기 ></div></a></td>
				    		</tr>
				    		
				    	</table>
				    	<br>
				    	<h4><%=today %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
		    				<tr>
				    			<td colspan="5"><img src="gameSchedule/image/excla.png" height="16">　경기가 없습니다.</td>
				    		</tr>
				    		
				    	</table>
				    	<br>
				    	<h4><%=onedayafter %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
				    		
			   				<tr>
				    			<td width=15% class="text-center qna-th"><img src="gameSchedule/image/na-lcs.png" height="32" style="margin-right: 10px">NA LCS</td>
				    			<td width=23% class="text-center qna-th">LOL World Cup</td>
				    			<td width=10% class="text-center qna-th">18:00</td>
				    			<td width=37% class="text-center qna-th">fnatic<img src="gameSchedule/image/fnatic.png" height="28">VS<img src="gameSchedule/image/faZe.png" height="28">faZe</td>
				    			<td width=15% class="text-center qna-th"><a href="game_detail.do"><div>상세보기 ></div></a></td>
				    		</tr>
				    		
				    	</table>
				    	<br>
				    	<h4><%=twodayafter %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
		    				<tr>
				    			<td colspan="5"><img src="gameSchedule/image/excla.png" height="16">　경기가 없습니다.</td>
				    		</tr>
				    		
				    	</table>
				    	<br>
				    	<h4><%=threedayafter %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
				    		
			   				<tr>
				    			<td width=15% class="text-center qna-th"><img src="gameSchedule/image/na-lcs.png" height="32" style="margin-right: 10px">NA LCS</td>
				    			<td width=23% class="text-center qna-th">LOL World Cup</td>
				    			<td width=10% class="text-center qna-th">18:00</td>
				    			<td width=37% class="text-center qna-th">fnatic<img src="gameSchedule/image/fnatic.png" height="28">VS<img src="gameSchedule/image/faZe.png" height="28">faZe</td>
				    			<td width=15% class="text-center qna-th"><a href="game_detail.do"><div>상세보기 ></div></a></td>
				    		</tr>
				    		
				    	</table>
					</div>
				</div>
				
			<!-- EU LCS -->
				<div id="tab4" class="middle_tab_content">
					<div class="row qnarow gametable">
						<h4><%=threedaybefore %></h4>
				    	<table class="table table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
				    		
			   				<tr>
				    			<td width=15% class="text-center qna-th"><img src="gameSchedule/image/eu-lcs.png" height="32" style="margin-right: 10px">EU LCS</td>
				    			<td width=23% class="text-center qna-th">LOL World Cup</td>
				    			<td width=10% class="text-center qna-th">18:00</td>
				    			<td width=37% class="text-center qna-th">fnatic<img src="gameSchedule/image/fnatic.png" height="28">VS<img src="gameSchedule/image/faZe.png" height="28">faZe</td>
				    			<td width=15% class="text-center qna-th"><a href="game_detail.do"><div>상세보기 ></div></a></td>
				    		</tr>
				    			    		
				    	</table>
				    	<br>
				    	<h4><%=twodaybefore %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
		    				<tr>
				    			<td colspan="5"><img src="gameSchedule/image/excla.png" height="16">　경기가 없습니다.</td>
				    		</tr>
				    		
				    	</table>
						<br>
				    	<h4><%=onedaybefore %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
				    		
			   				<tr>
				    			<td width=15% class="text-center qna-th"><img src="gameSchedule/image/eu-lcs.png" height="32" style="margin-right: 10px">EU LCS</td>
				    			<td width=23% class="text-center qna-th">LOL World Cup</td>
				    			<td width=10% class="text-center qna-th">18:00</td>
				    			<td width=37% class="text-center qna-th">fnatic<img src="gameSchedule/image/fnatic.png" height="28">VS<img src="gameSchedule/image/faZe.png" height="28">faZe</td>
				    			<td width=15% class="text-center qna-th"><a href="game_detail.do"><div>상세보기 ></div></a></td>
				    		</tr>
				    		
				    	</table>
				    	<br>
				    	<h4><%=today %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
		    				<tr>
				    			<td colspan="5"><img src="gameSchedule/image/excla.png" height="16">　경기가 없습니다.</td>
				    		</tr>
				    		
				    	</table>
				    	<br>
				    	<h4><%=onedayafter %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
				    		
			   				<tr>
				    			<td width=15% class="text-center qna-th"><img src="gameSchedule/image/eu-lcs.png" height="32" style="margin-right: 10px">EU LCS</td>
				    			<td width=23% class="text-center qna-th">LOL World Cup</td>
				    			<td width=10% class="text-center qna-th">18:00</td>
				    			<td width=37% class="text-center qna-th">fnatic<img src="gameSchedule/image/fnatic.png" height="28">VS<img src="gameSchedule/image/faZe.png" height="28">faZe</td>
				    			<td width=15% class="text-center qna-th"><a href="game_detail.do"><div>상세보기 ></div></a></td>
				    		</tr>
				    		
				    	</table>
				    	<br>
				    	<h4><%=twodayafter %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
		    				<tr>
				    			<td colspan="5"><img src="gameSchedule/image/excla.png" height="16">　경기가 없습니다.</td>
				    		</tr>
				    		
				    	</table>
				    	<br>
				    	<h4><%=threedayafter %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
				    		
			   				<tr>
				    			<td width=15% class="text-center qna-th"><img src="gameSchedule/image/eu-lcs.png" height="32" style="margin-right: 10px">EU LCS</td>
				    			<td width=23% class="text-center qna-th">LOL World Cup</td>
				    			<td width=10% class="text-center qna-th">18:00</td>
				    			<td width=37% class="text-center qna-th">fnatic<img src="gameSchedule/image/fnatic.png" height="28">VS<img src="gameSchedule/image/faZe.png" height="28">faZe</td>
				    			<td width=15% class="text-center qna-th"><a href="game_detail.do"><div>상세보기 ></div></a></td>
				    		</tr>
				    		
				    	</table>
					</div>
				</div>
				
			<!-- CBLOL -->
				<div id="tab5" class="middle_tab_content">
					<div class="row qnarow gametable">
						<h4><%=threedaybefore %></h4>
				    	<table class="table table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
				    		
			   				<tr>
				    			<td width=15% class="text-center qna-th"><img src="gameSchedule/image/cblol.png" height="32" style="margin-right: 10px">CBLOL</td>
				    			<td width=23% class="text-center qna-th">LOL World Cup</td>
				    			<td width=10% class="text-center qna-th">18:00</td>
				    			<td width=37% class="text-center qna-th">fnatic<img src="gameSchedule/image/fnatic.png" height="28">VS<img src="gameSchedule/image/faZe.png" height="28">faZe</td>
				    			<td width=15% class="text-center qna-th"><a href="game_detail.do"><div>상세보기 ></div></a></td>
				    		</tr>
				    			    		
				    	</table>
				    	<br>
				    	<h4><%=twodaybefore %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
		    				<tr>
				    			<td colspan="5"><img src="gameSchedule/image/excla.png" height="16">　경기가 없습니다.</td>
				    		</tr>
				    		
				    	</table>
						<br>
				    	<h4><%=onedaybefore %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
				    		
			   				<tr>
				    			<td width=15% class="text-center qna-th"><img src="gameSchedule/image/cblol.png" height="32" style="margin-right: 10px">CBLOL</td>
				    			<td width=23% class="text-center qna-th">LOL World Cup</td>
				    			<td width=10% class="text-center qna-th">18:00</td>
				    			<td width=37% class="text-center qna-th">fnatic<img src="gameSchedule/image/fnatic.png" height="28">VS<img src="gameSchedule/image/faZe.png" height="28">faZe</td>
				    			<td width=15% class="text-center qna-th"><a href="game_detail.do"><div>상세보기 ></div></a></td>
				    		</tr>
				    		
				    	</table>
				    	<br>
				    	<h4><%=today %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
		    				<tr>
				    			<td colspan="5"><img src="gameSchedule/image/excla.png" height="16">　경기가 없습니다.</td>
				    		</tr>
				    		
				    	</table>
				    	<br>
				    	<h4><%=onedayafter %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
				    		
			   				<tr>
				    			<td width=15% class="text-center qna-th"><img src="gameSchedule/image/cblol.png" height="32" style="margin-right: 10px">CBLOL</td>
				    			<td width=23% class="text-center qna-th">LOL World Cup</td>
				    			<td width=10% class="text-center qna-th">18:00</td>
				    			<td width=37% class="text-center qna-th">fnatic<img src="gameSchedule/image/fnatic.png" height="28">VS<img src="gameSchedule/image/faZe.png" height="28">faZe</td>
				    			<td width=15% class="text-center qna-th"><a href="game_detail.do"><div>상세보기 ></div></a></td>
				    		</tr>
				    		
				    	</table>
				    	<br>
				    	<h4><%=twodayafter %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
		    				<tr>
				    			<td colspan="5"><img src="gameSchedule/image/excla.png" height="16">　경기가 없습니다.</td>
				    		</tr>
				    		
				    	</table>
				    	<br>
				    	<h4><%=threedayafter %></h4>
				    	<table class="table">
				    		<tr>
				    			<th width=15% class="text-center qna-th">리그</th>
				    			<th width=23% class="text-center qna-th">대회명</th>
				    			<th width=10% class="text-center qna-th">시간</th>
				    			<th width=37% class="text-center qna-th">경기일정 및 결과</th>
				    			<th width=15% class="text-center qna-th">상세보기</th>
				    		</tr>
				    		
			   				<tr>
				    			<td width=15% class="text-center qna-th"><img src="gameSchedule/image/cblol.png" height="32" style="margin-right: 10px">CBLOL</td>
				    			<td width=23% class="text-center qna-th">LOL World Cup</td>
				    			<td width=10% class="text-center qna-th">18:00</td>
				    			<td width=37% class="text-center qna-th">fnatic<img src="gameSchedule/image/fnatic.png" height="28">VS<img src="gameSchedule/image/faZe.png" height="28">faZe</td>
				    			<td width=15% class="text-center qna-th"><a href="game_detail.do"><div>상세보기 ></div></a></td>
				    		</tr>
				    		
				    	</table>
					</div>
				</div>
			</div>
		</div>





		
		
	</div>
</body>
</html>

