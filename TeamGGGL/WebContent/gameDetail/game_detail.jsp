<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>경기 기록 - GG GL</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/gameDetail.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
ul.comment_nav_tabs {
	margin: 0;
	padding: 0;
	float: left;
	list-style: none;
	height: 60px;
	opacity: 1;
	width: 80%;
	font-size: 16px;
	margin-top: 30px;
	margin-bottom: 50px;
}

ul.comment_nav_tabs li {
	float: inherit;
	text-align: center;
	cursor: pointer;
	width: 19%;
	height: 60px;
	border: 1px solid white;
	margin: 0 5.7px 0px 5.7px;
	color: white;
	line-height: 60px;
	font-weight: bold;
	overflow: hidden;
	position: relative;
}

ul.comment_nav_tabs li img {
	height: 42px;
	margin-right: 20px;
}

ul.comment_nav_tabs li.active2 {
	border: 1px solid white;
	color: black;
	background-color: white;
	opacity: 0.9;
}

.comment_tab_content {
	height: auto;
	display: none;
}
</style>
<script type="text/javascript">
$(function () {
    $(".comment_tab_content").hide();
    $(".comment_tab_content:first").show();
    $("ul.comment_nav_tabs li").click(function () {
        $("ul.comment_nav_tabs li").removeClass("active2");
        $(this).addClass("active2");
        $(".comment_tab_content").hide();
        var activeTab = $(this).attr("rel");
        $("#" + activeTab).fadeIn();
    });
});
</script>
</head>
<body class="body">
	<!-- Container (The Match Section) -->
	<div id="band" class="container">
		<h1 class="text-center"><strong>THE BIG MATCH WILL START</strong></h1>
		<p class="text-center"><em>Coming soon...</em></p>
		<br>
		<div class="team_vs">
			<div class="row">
				<div class="col-sm-4 text-center">
					<p>
						<strong class="h_teamName">FNATIC</strong><br>HOME TEAM
					</p>
					<br>
					<a href="#demo" data-toggle="collapse">
						<img src="gameDetail/image/team.png" alt="Random Name" width="255" height="255">
					</a>
				</div>
				<div class="col-sm-4 text-center">
					<h4>
						<p>
							<strong> 12월 5일 17시 30분</strong>
						</p>
					</h4>
					<br>

					<div>
						<h2 style="margin:15px 0">종료된 경기 입니다.</h2>
					</div>
					<img src="gameDetail/image/vs_icon.png" alt="Random Name" width="155" height="155">
				</div>
				<div class="col-sm-4 text-center">
					<p>
						<strong class="a_teamName">Complexity</strong><br>AWAY TEAM
					</p>
					<br>
					<a href="#demo3" data-toggle="collapse">
						<img src="gameDetail/image/team.png" Random Name" width="255" height="255">
					</a>
				</div>
			</div>
		</div>
		
		<div class="player_vs text-center">	
			<div class="row">
				<div class="col-sm-2">
					<img src="gameDetail/image/player.png">
				</div>

				<div class="h_player1name col-sm-2">
					<div class="player1name">
						<img src="gameDetail/image/nicname.png"> 도진상 <br>
					</div>
				</div>

				<div class="col-sm-2"></div>
				<div class="col-sm-2"></div>
				<div class="col-sm-2">
					<div class="a_player1name">
						<img src="gameDetail/image/nicname.png"> 도진상 <br>
					</div>
				</div>
				<div class="col-sm-2">
					<img src="gameDetail/image/player.png">
				</div>
			</div>

			<div class="row">
				<div class="col-sm-2">
					<img src="gameDetail/image/player.png">
				</div>

				<div class="h_player1name col-sm-2">
					<div class="player1name">
						<img src="gameDetail/image/nicname.png"> 도진상 <br>
					</div>
				</div>
				<div class="vs col-sm-4">
					<img src="gameDetail/image/vs_icon.png" style="height: 130px;">
				</div>
				<div class="col-sm-2">
					<div class="a_player1name">
						<img src="gameDetail/image/nicname.png"> 도진상 <br>
					</div>
				</div>
				<div class="col-sm-2">
					<img src="gameDetail/image/player.png">
				</div>
			</div>

			<div class="row">
				<div class="col-sm-2">
					<img src="gameDetail/image/player.png">
				</div>

				<div class="h_player1name col-sm-2">
					<div class="player1name">
						<img src="gameDetail/image/nicname.png"> 도진상 <br>
					</div>
				</div>

				<div class="col-sm-2"></div>
				<div class="col-sm-2"></div>
				<div class="col-sm-2">
					<div class="a_player1name">
						<img src="gameDetail/image/nicname.png"> 도진상 <br>
					</div>
				</div>
				<div class="col-sm-2">
					<img src="gameDetail/image/player.png">
				</div>
			</div>
		</div>

			<h3 class="text-center"><strong>경기 영상</strong></h3>
			<hr>
			<div class="col-lg-6 text-center">
				<div class="hi">
					<iframe width="460" height="315"
						src="https://www.youtube.com/embed/m2OEEfkIYgg" frameborder="0"
						gesture="media" allow="encrypted-media" allowfullscreen></iframe>
				</div>
			</div>

			<div class="col-lg-6 text-center">
				<div class="hi">
					<iframe class="hi2" width="460" height="315"
						src="https://www.youtube.com/embed/m2OEEfkIYgg" frameborder="0"
						gesture="media" allow="encrypted-media" allowfullscreen></iframe>
				</div>
			</div>

		<div class="container-fluid-news container-fluid col-md-12 ">
			<div class="comment_Total col-md-12">
				<h4>
					<span class="com_title"><b>Comment</b></span>
				</h4>
				<div class="reply_write">
					<textarea class="com_2 form-control text-left"
						placeholder="내용을 입력하세요." rows="3"></textarea>
				</div>
				<div class="reply_writer">
					<button class="btn btn-primary btn-sm pull-right" type="submit">댓글 달기</button>
				</div>
			</div>
		</div>

		<div id="comment_nav_menu">
			<ul class="comment_nav_tabs">
				<li class="active2" rel="tab1">추천순</li>
				<li rel="tab2">최신순</li>
				<li rel="tab3">과거순</li>
			</ul>
			
			<div class="comment_tab_container">
			<div id="tab1" class="comment_tab_content">
				<div class="row commentrow">
					<div class="comment_list col-md-12">
						<c:forEach var="i" begin="1" end="4">
							<div class="comment_form">
								<div class="writer_img pull-left">
									<img src="image/co_user.png">
								</div>
								<div class="comment_content">
									<div class="writer_info">
										<div class="w_nickName">
											<strong>ybr0971</strong>
										</div>
										<div class="w_time" style="font-size: 12px; color: #9f9fa0">2017.09.21
											00:27</div>
									</div>
									<div class="comment_body">
										<p>
											<br>추천순입니다. :-) <br> 감사합니다. 잘 쓰겠습니다. :-) <br>감사합니다.
											잘 쓰겠습니다. :-)
										</p>
									</div>
								</div>
							</div>
						</c:forEach>
						<center>
							<button class="btn btn-primary btn-block moreBtn" type="button">더보기
								▼</button>
						</center>
						<div style="height: 40px"></div>
					</div>
					<br>
				</div>
			</div>
			
			<div id="tab2" class="comment_tab_content">
				<div class="row commentrow">
					<div class="comment_list col-md-12">
						<c:forEach var="i" begin="1" end="4">
							<div class="comment_form">
								<div class="writer_img pull-left">
									<img src="image/co_user.png">
								</div>
								<div class="comment_content">
									<div class="writer_info">
										<div class="w_nickName">
											<strong>ybr0971</strong>
										</div>
										<div class="w_time" style="font-size: 12px; color: #9f9fa0">2017.09.21
											00:27</div>
									</div>
									<div class="comment_body">
										<p>
											<br>최신순입니다. <br> 감사합니다. 잘 쓰겠습니다. :-) <br>감사합니다.
											잘 쓰겠습니다. :-)
										</p>
									</div>
								</div>
							</div>
						</c:forEach>
						<center>
							<button class="btn btn-primary btn-block moreBtn" type="button">더보기
								▼</button>
						</center>
						<div style="height: 40px"></div>
					</div>
					<br>
				</div>
			</div>
			
			<div id="tab3" class="comment_tab_content">
				<div class="row commentrow">
					<div class="comment_list col-md-12">
						<c:forEach var="i" begin="1" end="4">
							<div class="comment_form">
								<div class="writer_img pull-left">
									<img src="image/co_user.png">
								</div>
								<div class="comment_content">
									<div class="writer_info">
										<div class="w_nickName">
											<strong>ybr0971</strong>
										</div>
										<div class="w_time" style="font-size: 12px; color: #9f9fa0">2017.09.21
											00:27</div>
									</div>
									<div class="comment_body">
										<p>
											<br>과거순입니다. <br> 감사합니다. 잘 쓰겠습니다. :-) <br>감사합니다.
											잘 쓰겠습니다. :-)
										</p>
									</div>
								</div>
							</div> 
						</c:forEach>
						<center>
							<button class="btn btn-primary btn-block moreBtn" type="button">더보기
								▼</button>
						</center>
						<div style="height: 40px"></div>
					</div>
					<br>
				</div>
			</div>
			</div>
		</div>
	</div>
</body>
</html>