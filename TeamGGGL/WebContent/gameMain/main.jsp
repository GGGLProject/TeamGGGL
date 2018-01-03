<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="css/gameMain.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">http://localhost:8080/TeamProject_update/gameMain/image/maingif_1.gif
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script>
    $(function() {
        $(window).scroll(function() {
            if ($(this).scrollTop() > 500) {
                $('#MOVE_TOP_BTN').fadeIn();
            } else {
                $('#MOVE_TOP_BTN').fadeOut();
            }
        });
        
        $("#MOVE_TOP_BTN").click(function() {
            $('html, body').animate({
                scrollTop : 0
            }, 600);
            return false;
        });
    });
</script>
d
<title>Insert title here</title>
</head>
<body class="body-main" data-spy="scroll" data-target=".navbar"
	data-offset="50">
	<!-- navbar -->
	<nav class="navbar navbar-fixed-top navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.do">GGGL</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="news_main.do">뉴스</a></li>
				<li><a href="teaminfo.do">팀/선수 정보</a></li>
				<li><a href="game_schedule.do">일정 / 결과</a></li>
				<li><a href="gallery.do">갤러리</a></li>
				<li><a href="event_list.do">이벤트</a></li>
				<c:if test="${sessionScope.email!=null}">
					<li><a href="MyPage.do">마이페이지</a></li>
				</c:if>
				<c:if test="${sessionScope.email!=null && sessionScope.grade==1 }">
				<li><a href="MyPage.do">회원관리 창</a></li>
				</c:if>
			</ul>
			<c:if test="${sessionScope.email==null }">
				<form method=post action="login.do">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="new_member.do"><span
								class="glyphicon glyphicon-user"></span> 회원가입</a></li>
						<li><a href="login.do"><span
								class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
					</ul>
				</form>
			</c:if>

			<c:if test="${sessionScope.email!=null }">
				<form method=post action="logout.do">
					<div class="log">
						<span style="color: white;"> ${sessionScope.name } 
						<c:if test="${sessionScope.grade==1 }">
						(관리자)님 로그인중입니다.	
						</c:if>
						<c:if test="${sessionScope.grade==2 }">
						(일반사용자)님 로그인중입니다.	
						</c:if>
						<c:if test="${sessionScope.grade==3 }">
						(이벤트등록회원)님 로그인중입니다.	
						</c:if>
						</span> 
						<input type=submit value="로그아웃" >
					</div>
				</form>
			</c:if>
		</div>
	</div>
	</nav>

	<!-- Content -->
	<%-- include --%>
	<jsp:include page="${main_jsp }"></jsp:include>

	<!-- Footer -->
	<footer>
		<div class="text-center arrowdiv">
			<a class="up-arrow text-center" href="#" data-toggle="tooltip" title="TO TOP" id="MOVE_TOP_BTN">
				<span class="glyphicon glyphicon-chevron-up"></span>
			</a>
		</div>
		
		<div class="footer_menu">
			<ul>
				<li><a href="main.do">HOME</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</li>
				<li><a href="news_main.do">NEWS</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</li>
				<li><a href="game_schedule.do">MATCHES</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</li>
				<li><a href="gallery.do">GALLERY</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</li>
				<li><a href="event_list.do">EVENT</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</li>
				<li><a href="#">FREEBOARD</a></li>
			</ul>
		</div>
		<div class="footer_txt">
			<p>주소 : 서울특별시 마포구 월드컵북로 21 풍성빌딩 4층 쌍용강북교육센터 H CLASS | 대표 : 윤승구 | 사업자등록번호 : 123-45-67890</p>
			<p>GGGL <a href="#">1:1 문의</a> | 뉴스상담(무료)010-8661-2704 | 경기상담(무료)010-9482-0971 | 갤러리상담(무료)010-2853-0928 | 가입문의(무료)010-2630-9375</p>
			<p>Copyright 2018 GGGL. Co. Ltd., ALL Right Reserved.</p>
		</div>
		<div class="footer_sns">
			<img src="gameMain/image/sns1.png">&nbsp;&nbsp;
			<img src="gameMain/image/sns2.png">&nbsp;&nbsp;
			<img src="gameMain/image/sns3.png">&nbsp;&nbsp;
			<img src="gameMain/image/sns4.png">&nbsp;&nbsp;
			<img src="gameMain/image/sns5.png">
		</div>
		<div class="footer_aboutus">
			<p class="aboutus">About Us</p>
			<p class="aboutname1">Seunggoo Yoon&nbsp;&nbsp;&nbsp;Jinhyeok Oh&nbsp;&nbsp;&nbsp;Bora Yang</p>
			<p class="aboutname2">Jieun Bae&nbsp;&nbsp;&nbsp;Seungjae Moon&nbsp;&nbsp;&nbsp;Dojin Lim</p>
		</div>
	</footer>
</body>
</html>


