<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
body {
	background-image: url('image/backimg3.jpg');
	background-attachment: fixed;
}

h2 {
	padding-top: 40px;
	padding-bottom: 20px; text-align : center;
	color: white;
	text-align: center;
}

.gametable .table tr th, .gametable .table tr td {
	height: 40px;
	font-size: 16px; vertical-align : middle;
	color: white;
	vertical-align: middle;
}

.container .nav-tabs li {
	text-align: center;
}

.container .nav-tabs .nonselected a:hover {
	background-color: rgba(255, 255, 255, 0.2);
}

.tab-content .tab-pane .row {
	padding-top: 5px;
	padding-left: 20px;
	padding-right: 20px;
	color: white;
}

.tab-content .tab-pane .row .col-md-3 {
	height: 228px;
	border: 1px solid rgb(215, 215, 215);
	background-color: rgba(0, 0, 0, 0.5);
	text-align: center;
	line-height: 230px;
	padding-top: 10px;
}

.tab-content .tab-pane .row .col-md-3:hover {
	background-color: rgba(0, 0, 0, 0.1);
}

.tab-content .tab-pane .row .col-md-3 .detail_button {
	text-align: center;
	transition: all 0.8s, color 0.3s 0.3s;
	cursor: pointer;
	color: white;
}

.tab-content .tab-pane .row .col-md-3 .detail_button:hover {
	box-shadow: 400px 0 0 0 rgba(0, 0, 0, 0.80) inset, -400px 0 0 0
		rgba(0, 0, 0, 0.80) inset;
	font-size: 18px;
	color: #fff;
}

.container ul li a {
	color: white;
	font-size: 16px;
}

/* 게임시작전 */
.tab-content .tab-pane .row .gameready .gamelogo img {
	height: 38px;
}

.tab-content .tab-pane .row .gameready .firstteam_logo {
	width: 40px;
	margin-top: 30px;
	position: relative;
}

.tab-content .tab-pane .row .gameready .firstteam_logo img {
	width: 100px;
}

.tab-content .tab-pane .row .gameready .firstteam_name {
	width: 100px;
	height: 30px;
	line-height: 30px;
	font-size: 20px;
	margin-top: 10px;
	margin-left: 0px;
	text-align: center;
	position: relative;
}

.tab-content .tab-pane .row .gameready .vsvs {
	width: 40px;
	height: 30px;
	line-height: 30px;
	font-size: 28px;
	font-weight: bold;
	margin-top: -80px;
	padding-left: 110px;
	color: rgb(220, 220, 220);
	position: relative;
}

.tab-content .tab-pane .row .gameready .lastteam_logo {
	width: 40px;
	margin-top: -40px;
	padding-left: 160px;
	position: relative;
}

.tab-content .tab-pane .row .gameready .lastteam_logo img {
	width: 100px;
}

.tab-content .tab-pane .row .gameready .lastteam_name {
	width: 40px;
	height: 30px;
	line-height: 30px;
	font-size: 20px;
	margin-top: 10px;
	padding-left: 190px;
	position: relative;
}

.tab-content .tab-pane .row .gameready .game_time {
	width: 42px;
	height: 20px;
	line-height: 20px;
	margin-top: -40px;
	margin-left: 109px;
	border-radius: 20px;
	border: 1px solid rgb(190, 190, 190);
	font-size: 11px;
	position: relative;
}

.tab-content .tab-pane .row .gameready .detail_button {
	width: 280px;
	height: 45px;
	line-height: 45px;
	border-top: 1px solid rgb(215, 215, 215);
	margin-top: 35px;
	margin-left: -15px;
	font-size: 15px;
	color: white;
	text-align: center;
	position: relative;
}

.tab-content .tab-pane .row .gameready a {
	text-decoration: none;
}

/* 게임종료후 */
.tab-content .tab-pane .row .gameover .gamelogo img {
	height: 38px;
}

.tab-content .tab-pane .row .gameover .firstteam_logo {
	width: 40px;
	margin-top: 30px;
	position: relative;
}

.tab-content .tab-pane .row .gameover .firstteam_logo img {
	width: 100px;
}

.tab-content .tab-pane .row .gameover .firstteam_name {
	width: 100px;
	height: 30px;
	line-height: 30px;
	font-size: 20px;
	margin-top: 10px;
	margin-left: 0px;
	text-align: center;
	position: relative;
}

.tab-content .tab-pane .row .gameover .firstteam_score {
	width: 40px;
	height: 30px;
	line-height: 30px;
	font-size: 30px;
	font-weight: bold;
	margin-top: -80px;
	padding-left: 99px;
	text-align: center;
	position: relative;
}

.tab-content .tab-pane .row .gameover .vsvs {
	width: 40px;
	height: 30px;
	line-height: 30px;
	font-size: 30px;
	font-weight: bold;
	margin-top: -30px;
	padding-left: 125px;
	text-align: center;
	position: relative;
}

.tab-content .tab-pane .row .gameover .lastteam_logo {
	width: 40px;
	margin-top: -40px;
	padding-left: 160px;
	position: relative;
}

.tab-content .tab-pane .row .gameover .lastteam_logo img {
	width: 100px;
}

.tab-content .tab-pane .row .gameover .lastteam_name {
	width: 100px;
	height: 30px;
	line-height: 30px;
	font-size: 20px;
	margin-top: 10px;
	padding-left: 190px;
	text-align: center;
	position: relative;
}

.tab-content .tab-pane .row .gameover .lastteam_score {
	width: 40px;
	height: 30px;
	line-height: 30px;
	font-size: 30px;
	font-weight: bold;
	margin-top: -30px;
	padding-left: 146px;
	text-align: center;
	position: relative;
}

.tab-content .tab-pane .row .gameover .game_time {
	width: 42px;
	height: 20px;
	line-height: 20px;
	margin-top: -40px;
	margin-left: 109px;
	border-radius: 20px;
	border: 1px solid rgb(130, 130, 130);
	background-color: rgb(130, 130, 130);
	color: white;
	font-size: 11px;
	text-align: center;
	position: relative;
}

.tab-content .tab-pane .row .gameover .detail_button {
	width: 280px;
	height: 45px;
	line-height: 45px;
	border-top: 1px solid rgb(215, 215, 215);
	margin-top: 35px;
	margin-left: -15px;
	font-size: 15px;
	color: white;
	text-align: center;
	position: relative;
}

.tab-content .tab-pane .row .gameover a {
	text-decoration: none;
}

/* 게임없는날  */
.tab-content .tab-pane .row .nogame img {
	width: 20px;
	height: 18px;
	margin-top: 90px;
	margin-left: -100px;
	position: relative;
}

.tab-content .tab-pane .row .nogame p {
	width: 150px;
	height: 30px;
	line-height: 30px;
	margin-left: 70px;
	margin-top: -23px;
	position: relative;
}

.gametable h4 {
	color: white;
	font-size: 20px;
}

.gametable .table tr td {
	text-align: center;
}

.gametable .table tr td a {
	text-decoration: none;
	color: white;
	font-weight: bold;
}

.gametable .table tr td div {
	width: 100px;
	height: 30px;
	line-height: 28px;
	margin-left: 30px;
	border-radius: 20px;
	border: 1px solid rgb(255, 255, 255);
	text-align: center;
	transition: all 0.5s, color 0.1s 0.1s;
	cursor: pointer;
}

.gametable .table tr td div:hover {
	box-shadow: 400px 0 0 0 rgba(0, 0, 0, 0.7) inset;
	border: 1px solid rgb(0, 0, 0);
	color: #fff;
}










ul.middle_nav_tabs {
	margin: 0;
	padding: 0;
	float: left;
	list-style: none;
	height: 60px;
	opacity: 1;
	width: 100%;
	font-size: 16px;
	margin-bottom: 10px;
}

ul.middle_nav_tabs li {
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

ul.middle_nav_tabs li.active2 {
	border: 1px solid white;
	color: black;
	background-color: white;
	opacity: 0.9;
}

.middle_tab_container {
	border: 1px solid red;
	border-top: none;
	clear: both;
	float: left;
	width: 100%;
	height: 200px;
	background: #FFFFFF;
}

.middle_tab_content {
	padding: 5px;
	font-size: 12px;
	display: none;
}

.middle_tab_container .tab_content ul {
	width: 100%;
	margin: 0px;
	padding: 0px;
}

.middle_tab_container .tab_content ul li {
	padding: 5px;
	list-style: none
}

/* .middle_nav_menu {
	width: 100%;
}
 */


</style>


<script type="text/javascript">
$(function () {

    $(".middle_tab_content").hide();
    $(".middle_tab_content:first").show();

    $("ul.middle_nav_tabs li").click(function () {
        $("ul.middle_nav_tabs li").removeClass("active2");
        //$(this).addClass("active").css({"color": "darkred","font-weight": "bolder"});
        $(this).addClass("active2").css("color", "darkred");
        $(".middle_tab_content").hide();
        var activeTab = $(this).attr("rel");
        $("#" + activeTab).fadeIn();
    });
});x
</script>


</head>
<body>
	<div class="container">
		<h2>경기 일정/결과</h2>
		<br><br>

		<ul class="nav nav-tabs">
			<li style="width: 4%" class="nonselected"><a data-toggle="tab" href="#prev">◀</a></li>
			<li style="width: 14%" class="active"><a data-toggle="tab" href="#home">12.04(월)</a></li>
			<li style="width: 13%" class="nonselected"><a data-toggle="tab" href="#menu1">12.05(화)</a></li>
			<li style="width: 13%" class="nonselected"><a data-toggle="tab" href="#menu2">12.06(수)</a></li>
			<li style="width: 13%" class="nonselected"><a data-toggle="tab" href="#menu3">12.07(목)</a></li>
			<li style="width: 13%" class="nonselected"><a data-toggle="tab" href="#menu4">12.08(금)</a></li>
			<li style="width: 13%" class="nonselected"><a data-toggle="tab" href="#menu5">12.09(토)</a></li>
			<li style="width: 13%" class="nonselected"><a data-toggle="tab" href="#menu6">12.10(일)</a></li>
			<li style="width: 4%" class="nonselected"><a data-toggle="tab" href="#next">▶</a></li>
		</ul>

		<div class="tab-content">
			<div id="home" class="tab-pane fade in active">
				<div class="row">
					<div class="col-md-3 gameover">
						<div class="gamelogo"><img src="image/lol.png"></div>
						<div class="firstteam_logo"><img src="image/fnatic.png"></div>
						<div class="firstteam_name">fnatic</div>
						<div class="firstteam_score">1</div>
						<div class="vsvs">:</div>
						<div class="lastteam_score">2</div>
						<div class="lastteam_logo"><img src="image/faZe.png"></div>
						<div class="lastteam_name">faZe</div>
						<div class="game_time">종료</div>
						<a href="../game/game.html"><div class="detail_button">상세보기 ></div></a>
					</div>
					<div class="col-md-3 gameover">
						<div class="gamelogo"><img src="image/ow3.png"></div>
						<div class="firstteam_logo"><img src="image/fnatic.png"></div>
						<div class="firstteam_name">fnatic</div>
						<div class="firstteam_score">1</div>
						<div class="vsvs">:</div>
						<div class="lastteam_score">1</div>
						<div class="lastteam_logo"><img src="image/faZe.png"></div>
						<div class="lastteam_name">faZe</div>
						<div class="game_time">종료</div>
						<a href="#"><div class="detail_button">상세보기 ></div></a>
					</div>
					<div class="col-md-3 gameready">
						<div class="gamelogo"><img src="image/sc2.png"></div>
						<div class="firstteam_logo"><img src="image/fnatic.png"></div>
						<div class="firstteam_name">fnatic</div>
						<div class="vsvs">VS</div>
						<div class="lastteam_logo"><img src="image/faZe.png"></div>
						<div class="lastteam_name">faZe</div>
						<div class="game_time">18:00</div>
						<a href="#"><div class="detail_button">상세보기 ></div></a>
					</div>
					<div class="col-md-3 gameready">
						<div class="gamelogo"><img src="image/cs2.png"></div>
						<div class="firstteam_logo"><img src="image/fnatic.png"></div>
						<div class="firstteam_name">fnatic</div>
						<div class="vsvs">VS</div>
						<div class="lastteam_logo"><img src="image/faZe.png"></div>
						<div class="lastteam_name">faZe</div>
						<div class="game_time">18:00</div>
						<a href="#"><div class="detail_button">상세보기 ></div></a>
					</div>
				</div>
			</div>
			<div id="menu1" class="tab-pane fade">
				<div class="row">
					<div class="col-md-3 nogame"><img src="image/excla.png"><p>경기가 없습니다.</p></div>
					<div class="col-md-3 nogame"><img src="image/excla.png"><p>경기가 없습니다.</p></div>
					<div class="col-md-3 nogame"><img src="image/excla.png"><p>경기가 없습니다.</p></div>
					<div class="col-md-3 nogame"><img src="image/excla.png"><p>경기가 없습니다.</p></div>
				</div>
			</div>
			<div id="menu2" class="tab-pane fade">
				<div class="row">
					<div class="col-md-3 gameover">
						<div class="gamelogo"><img src="image/lol.png"></div>
						<div class="firstteam_logo"><img src="image/fnatic.png"></div>
						<div class="firstteam_name">fnatic</div>
						<div class="firstteam_score">1</div>
						<div class="vsvs">:</div>
						<div class="lastteam_score">2</div>
						<div class="lastteam_logo"><img src="image/faZe.png"></div>
						<div class="lastteam_name">faZe</div>
						<div class="game_time">종료</div>
						<a href="#"><div class="detail_button">상세보기 ></div></a>
					</div>
					<div class="col-md-3 gameover">
						<div class="gamelogo"><img src="image/ow3.png"></div>
						<div class="firstteam_logo"><img src="image/fnatic.png"></div>
						<div class="firstteam_name">fnatic</div>
						<div class="firstteam_score">1</div>
						<div class="vsvs">:</div>
						<div class="lastteam_score">1</div>
						<div class="lastteam_logo"><img src="image/faZe.png"></div>
						<div class="lastteam_name">faZe</div>
						<div class="game_time">종료</div>
						<a href="#"><div class="detail_button">상세보기 ></div></a>
					</div>
					<div class="col-md-3 gameready">
						<div class="gamelogo"><img src="image/sc2.png"></div>
						<div class="firstteam_logo"><img src="image/fnatic.png"></div>
						<div class="firstteam_name">fnatic</div>
						<div class="vsvs">VS</div>
						<div class="lastteam_logo"><img src="image/faZe.png"></div>
						<div class="lastteam_name">faZe</div>
						<div class="game_time">18:00</div>
						<a href="#"><div class="detail_button">상세보기 ></div></a>
					</div>
					<div class="col-md-3 gameready">
						<div class="gamelogo"><img src="image/cs2.png"></div>
						<div class="firstteam_logo"><img src="image/fnatic.png"></div>
						<div class="firstteam_name">fnatic</div>
						<div class="vsvs">VS</div>
						<div class="lastteam_logo"><img src="image/faZe.png"></div>
						<div class="lastteam_name">faZe</div>
						<div class="game_time">18:00</div>
						<a href="#"><div class="detail_button">상세보기 ></div></a>
					</div>
				</div>
			</div>
			<div id="menu3" class="tab-pane fade">
				<div class="row">
					<div class="col-md-3 nogame"><img src="image/excla.png"><p>경기가 없습니다.</p></div>
					<div class="col-md-3 nogame"><img src="image/excla.png"><p>경기가 없습니다.</p></div>
					<div class="col-md-3 nogame"><img src="image/excla.png"><p>경기가 없습니다.</p></div>
					<div class="col-md-3 nogame"><img src="image/excla.png"><p>경기가 없습니다.</p></div>
				</div>
			</div>
			<div id="menu4" class="tab-pane fade">
				<div class="row">
					<div class="col-md-3 gameover">
						<div class="gamelogo"><img src="image/lol.png"></div>
						<div class="firstteam_logo"><img src="image/fnatic.png"></div>
						<div class="firstteam_name">fnatic</div>
						<div class="firstteam_score">1</div>
						<div class="vsvs">:</div>
						<div class="lastteam_score">2</div>
						<div class="lastteam_logo"><img src="image/faZe.png"></div>
						<div class="lastteam_name">faZe</div>
						<div class="game_time">종료</div>
						<a href="#"><div class="detail_button">상세보기 ></div></a>
					</div>
					<div class="col-md-3 gameover">
						<div class="gamelogo"><img src="image/ow3.png"></div>
						<div class="firstteam_logo"><img src="image/fnatic.png"></div>
						<div class="firstteam_name">fnatic</div>
						<div class="firstteam_score">1</div>
						<div class="vsvs">:</div>
						<div class="lastteam_score">1</div>
						<div class="lastteam_logo"><img src="image/faZe.png"></div>
						<div class="lastteam_name">faZe</div>
						<div class="game_time">종료</div>
						<a href="#"><div class="detail_button">상세보기 ></div></a>
					</div>
					<div class="col-md-3 gameready">
						<div class="gamelogo"><img src="image/sc2.png"></div>
						<div class="firstteam_logo"><img src="image/fnatic.png"></div>
						<div class="firstteam_name">fnatic</div>
						<div class="vsvs">VS</div>
						<div class="lastteam_logo"><img src="image/faZe.png"></div>
						<div class="lastteam_name">faZe</div>
						<div class="game_time">18:00</div>
						<a href="#"><div class="detail_button">상세보기 ></div></a>
					</div>
					<div class="col-md-3 gameready">
						<div class="gamelogo"><img src="image/cs2.png"></div>
						<div class="firstteam_logo"><img src="image/fnatic.png"></div>
						<div class="firstteam_name">fnatic</div>
						<div class="vsvs">VS</div>
						<div class="lastteam_logo"><img src="image/faZe.png"></div>
						<div class="lastteam_name">faZe</div>
						<div class="game_time">18:00</div>
						<a href="#"><div class="detail_button">상세보기 ></div></a>
					</div>
				</div>
			</div>
			<div id="menu5" class="tab-pane fade">
				<div class="row">
					<div class="col-md-3 nogame"><img src="image/excla.png"><p>경기가 없습니다.</p></div>
					<div class="col-md-3 nogame"><img src="image/excla.png"><p>경기가 없습니다.</p></div>
					<div class="col-md-3 nogame"><img src="image/excla.png"><p>경기가 없습니다.</p></div>
					<div class="col-md-3 nogame"><img src="image/excla.png"><p>경기가 없습니다.</p></div>
				</div>
			</div>
			<div id="menu6" class="tab-pane fade">
				<div class="row">
					<div class="col-md-3 gameover">
						<div class="gamelogo"><img src="image/lol.png"></div>
						<div class="firstteam_logo"><img src="image/fnatic.png"></div>
						<div class="firstteam_name">fnatic</div>
						<div class="firstteam_score">1</div>
						<div class="vsvs">:</div>
						<div class="lastteam_score">2</div>
						<div class="lastteam_logo"><img src="image/faZe.png"></div>
						<div class="lastteam_name">faZe</div>
						<div class="game_time">종료</div>
						<a href="#"><div class="detail_button">상세보기 ></div></a>
					</div>
					<div class="col-md-3 gameover">
						<div class="gamelogo"><img src="image/ow3.png"></div>
						<div class="firstteam_logo"><img src="image/fnatic.png"></div>
						<div class="firstteam_name">fnatic</div>
						<div class="firstteam_score">1</div>
						<div class="vsvs">:</div>
						<div class="lastteam_score">1</div>
						<div class="lastteam_logo"><img src="image/faZe.png"></div>
						<div class="lastteam_name">faZe</div>
						<div class="game_time">종료</div>
						<a href="#"><div class="detail_button">상세보기 ></div></a>
					</div>
					<div class="col-md-3 gameready">
						<div class="gamelogo"><img src="image/sc2.png"></div>
						<div class="firstteam_logo"><img src="image/fnatic.png"></div>
						<div class="firstteam_name">fnatic</div>
						<div class="vsvs">VS</div>
						<div class="lastteam_logo"><img src="image/faZe.png"></div>
						<div class="lastteam_name">faZe</div>
						<div class="game_time">18:00</div>
						<a href="#"><div class="detail_button">상세보기 ></div></a>
					</div>
					<div class="col-md-3 gameready">
						<div class="gamelogo"><img src="image/cs2.png"></div>
						<div class="firstteam_logo"><img src="image/fnatic.png"></div>
						<div class="firstteam_name">fnatic</div>
						<div class="vsvs">VS</div>
						<div class="lastteam_logo"><img src="image/faZe.png"></div>
						<div class="lastteam_name">faZe</div>
						<div class="game_time">18:00</div>
						<a href="#"><div class="detail_button">상세보기 ></div></a>
					</div>
				</div>
			</div>
			
		</div>
	
		<br><br><br>









		<div id="middle_nav_menu">
			<ul class="middle_nav_tabs">
				<li class="active2" rel="tab1">ALL</li>
				<li rel="tab2">LEAGUE OF LEGENDS</li>
				<li rel="tab3">OVERWATCH</li>
				<li rel="tab4">STARCRAFT</li>
				<li rel="tab5">COUNTER STRIKE</li>
			</ul>
			<div class="middle_tab_container">
				<div id="tab1" class="middle_tab_content">
					ALL
				</div>
				<div id="tab2" class="middle_tab_content">
					LEAGUE OF LEGENDS
				</div>
				<div id="tab3" class="middle_tab_content">
					OVERWATCH
				</div>
				<div id="tab4" class="middle_tab_content">
					STARCRAFT
				</div>
				<div id="tab5" class="middle_tab_content">
					COUNTER STRIKE
				</div>
			</div>
		</div>








		<br><br><br><br><br><br>
		
		<div class="row qnarow gametable">
			
			<h4>2017.12.10(일)</h4>
	    	<table class="table table">
	    		<tr>
	    			<th width=15% class="text-center qna-th">종목</th>
	    			<th width=10% class="text-center qna-th">시간</th>
	    			<th width=35% class="text-center qna-th">경기</th>
	    			<th width=25% class="text-center qna-th">대회명</th>
	    			<th width=15% class="text-center qna-th">상세보기</th>
	    		</tr>
	    		
   				<tr>
	    			<td width=15% class="text-center qna-th"><img src="image/lol.png" height="32"></td>
	    			<td width=10% class="text-center qna-th">18:00</td>
	    			<td width=35% class="text-center qna-th">fnatic<img src="image/fnatic.png" height="28">VS<img src="image/faZe.png" height="28">faZe</td>
	    			<td width=25% class="text-center qna-th">LOL World Cup</td>
	    			<td width=15% class="text-center qna-th"><a href="#"><div>상세보기 ></div></a></td>
	    		</tr>
	    		<tr>
	    			<td width=15% class="text-center qna-th"><img src="image/ow3.png" height="32"></td>
	    			<td width=10% class="text-center qna-th">13:00</td>
	    			<td width=35% class="text-center qna-th">fnatic<img src="image/fnatic.png" height="28">VS<img src="image/faZe.png" height="28">faZe</td>
	    			<td width=25% class="text-center qna-th">LOL World Cup</td>
	    			<td width=15% class="text-center qna-th"><a href="#"><div>상세보기 ></div></a></td>
	    		</tr>
	    		<tr>
	    			<td width=15% class="text-center qna-th"><img src="image/sc2.png" height="32"></td>
	    			<td width=10% class="text-center qna-th">19:00</td>
	    			<td width=35% class="text-center qna-th">fnatic<img src="image/fnatic.png" height="28">VS<img src="image/faZe.png" height="28">faZe</td>
	    			<td width=25% class="text-center qna-th">LOL World Cup</td>
	    			<td width=15% class="text-center qna-th"><a href="#"><div>상세보기 ></div></a></td>
	    		</tr>
	    		<tr>
	    			<td width=15% class="text-center qna-th"><img src="image/cs2.png" height="32"></td>
	    			<td width=10% class="text-center qna-th">16:00</td>
	    			<td width=35% class="text-center qna-th">fnatic<img src="image/fnatic.png" height="28">VS<img src="image/faZe.png" height="28">faZe</td>
	    			<td width=25% class="text-center qna-th">LOL World Cup</td>
	    			<td width=15% class="text-center qna-th"><a href="#"><div>상세보기 ></div></a></td>
	    		</tr>
	    			    		
	    	</table>
	    	<br>
	    	<h4>2017.12.09(토)</h4>
	    	<table class="table">
	    		<tr>
	    			<th width=15% class="text-center qna-th">종목</th>
	    			<th width=10% class="text-center qna-th">시간</th>
	    			<th width=35% class="text-center qna-th">경기</th>
	    			<th width=25% class="text-center qna-th">이벤트</th>
	    			<th width=15% class="text-center qna-th">상세보기</th>
	    		</tr>
	    		<%
	    			for(int i=1;i<=4;i++) {
	    		%>
	    				<tr>
			    			<td colspan="5"><img src="image/excla.png" height="16">　경기가 없습니다.</td>
			    		</tr>
	    		<%
	    			}
	    		%>
	    		
	    	</table>
			<br>
	    	<h4>2017.12.08(금)</h4>
	    	<table class="table">
	    		<tr>
	    			<th width=15% class="text-center qna-th">종목</th>
	    			<th width=10% class="text-center qna-th">시간</th>
	    			<th width=35% class="text-center qna-th">경기</th>
	    			<th width=25% class="text-center qna-th">이벤트</th>
	    			<th width=15% class="text-center qna-th">상세보기</th>
	    		</tr>
	    		
	    		<tr>
	    			<td width=15% class="text-center qna-th"><img src="image/lol.png" height="32"></td>
	    			<td width=10% class="text-center qna-th">18:00</td>
	    			<td width=35% class="text-center qna-th">fnatic<img src="image/fnatic.png" height="28">VS<img src="image/faZe.png" height="28">faZe</td>
	    			<td width=25% class="text-center qna-th">LOL World Cup</td>
	    			<td width=15% class="text-center qna-th"><a href="#"><div>상세보기 ></div></a></td>
	    		</tr>
	    		<tr>
	    			<td width=15% class="text-center qna-th"><img src="image/ow3.png" height="32"></td>
	    			<td width=10% class="text-center qna-th">13:00</td>
	    			<td width=35% class="text-center qna-th">fnatic<img src="image/fnatic.png" height="28">VS<img src="image/faZe.png" height="28">faZe</td>
	    			<td width=25% class="text-center qna-th">LOL World Cup</td>
	    			<td width=15% class="text-center qna-th"><a href="#"><div>상세보기 ></div></a></td>
	    		</tr>
	    		<tr>
	    			<td width=15% class="text-center qna-th"><img src="image/sc2.png" height="32"></td>
	    			<td width=10% class="text-center qna-th">19:00</td>
	    			<td width=35% class="text-center qna-th">fnatic<img src="image/fnatic.png" height="28">VS<img src="image/faZe.png" height="28">faZe</td>
	    			<td width=25% class="text-center qna-th">LOL World Cup</td>
	    			<td width=15% class="text-center qna-th"><a href="#"><div>상세보기 ></div></a></td>
	    		</tr>
	    		<tr>
	    			<td width=15% class="text-center qna-th"><img src="image/cs2.png" height="32"></td>
	    			<td width=10% class="text-center qna-th">16:00</td>
	    			<td width=35% class="text-center qna-th">fnatic<img src="image/fnatic.png" height="28">VS<img src="image/faZe.png" height="28">faZe</td>
	    			<td width=25% class="text-center qna-th">LOL World Cup</td>
	    			<td width=15% class="text-center qna-th"><a href="#"><div>상세보기 ></div></a></td>
	    		</tr>
	    		
	    	</table>
	    	<br>
	    	<h4>2017.12.07(목)</h4>
	    	<table class="table">
	    		<tr>
	    			<th width=15% class="text-center qna-th">종목</th>
	    			<th width=10% class="text-center qna-th">시간</th>
	    			<th width=35% class="text-center qna-th">경기</th>
	    			<th width=25% class="text-center qna-th">이벤트</th>
	    			<th width=15% class="text-center qna-th">상세보기</th>
	    		</tr>
	    		<%
	    			for(int i=1;i<=4;i++) {
	    		%>
	    				<tr>
			    			<td colspan="5"><img src="image/excla.png" height="16">　경기가 없습니다.</td>
			    		</tr>
	    		<%
	    			}
	    		%>
	    		
	    	</table>
	    	<br>
	    	<h4>2017.12.06(수)</h4>
	    	<table class="table">
	    		<tr>
	    			<th width=15% class="text-center qna-th">종목</th>
	    			<th width=10% class="text-center qna-th">시간</th>
	    			<th width=35% class="text-center qna-th">경기</th>
	    			<th width=25% class="text-center qna-th">이벤트</th>
	    			<th width=15% class="text-center qna-th">상세보기</th>
	    		</tr>
	    		
	    		<tr>
	    			<td width=15% class="text-center qna-th"><img src="image/lol.png" height="32"></td>
	    			<td width=10% class="text-center qna-th">18:00</td>
	    			<td width=35% class="text-center qna-th">fnatic<img src="image/fnatic.png" height="28">VS<img src="image/faZe.png" height="28">faZe</td>
	    			<td width=25% class="text-center qna-th">LOL World Cup</td>
	    			<td width=15% class="text-center qna-th"><a href="#"><div>상세보기 ></div></a></td>
	    		</tr>
	    		<tr>
	    			<td width=15% class="text-center qna-th"><img src="image/ow3.png" height="32"></td>
	    			<td width=10% class="text-center qna-th">13:00</td>
	    			<td width=35% class="text-center qna-th">fnatic<img src="image/fnatic.png" height="28">VS<img src="image/faZe.png" height="28">faZe</td>
	    			<td width=25% class="text-center qna-th">LOL World Cup</td>
	    			<td width=15% class="text-center qna-th"><a href="#"><div>상세보기 ></div></a></td>
	    		</tr>
	    		<tr>
	    			<td width=15% class="text-center qna-th"><img src="image/sc2.png" height="32"></td>
	    			<td width=10% class="text-center qna-th">19:00</td>
	    			<td width=35% class="text-center qna-th">fnatic<img src="image/fnatic.png" height="28">VS<img src="image/faZe.png" height="28">faZe</td>
	    			<td width=25% class="text-center qna-th">LOL World Cup</td>
	    			<td width=15% class="text-center qna-th"><a href="#"><div>상세보기 ></div></a></td>
	    		</tr>
	    		<tr>
	    			<td width=15% class="text-center qna-th"><img src="image/cs2.png" height="32"></td>
	    			<td width=10% class="text-center qna-th">16:00</td>
	    			<td width=35% class="text-center qna-th">fnatic<img src="image/fnatic.png" height="28">VS<img src="image/faZe.png" height="28">faZe</td>
	    			<td width=25% class="text-center qna-th">LOL World Cup</td>
	    			<td width=15% class="text-center qna-th"><a href="#"><div>상세보기 ></div></a></td>
	    		</tr>
	    		
	    	</table>
	    	<br>
	    	<h4>2017.12.05(화)</h4>
	    	<table class="table">
	    		<tr>
	    			<th width=15% class="text-center qna-th">종목</th>
	    			<th width=10% class="text-center qna-th">시간</th>
	    			<th width=35% class="text-center qna-th">경기</th>
	    			<th width=25% class="text-center qna-th">이벤트</th>
	    			<th width=15% class="text-center qna-th">상세보기</th>
	    		</tr>
	    		<%
	    			for(int i=1;i<=4;i++) {
	    		%>
	    				<tr>
			    			<td colspan="5"><img src="image/excla.png" height="16">　경기가 없습니다.</td>
			    		</tr>
	    		<%
	    			}
	    		%>
	    		
	    	</table>
	    	<br>
	    	<h4>2017.12.04(월)</h4>
	    	<table class="table">
	    		<tr>
	    			<th width=15% class="text-center qna-th">종목</th>
	    			<th width=10% class="text-center qna-th">시간</th>
	    			<th width=35% class="text-center qna-th">경기</th>
	    			<th width=25% class="text-center qna-th">이벤트</th>
	    			<th width=15% class="text-center qna-th">상세보기</th>
	    		</tr>
	    		
	    		<tr>
	    			<td width=15% class="text-center qna-th"><img src="image/lol.png" height="32"></td>
	    			<td width=10% class="text-center qna-th">18:00</td>
	    			<td width=35% class="text-center qna-th">fnatic<img src="image/fnatic.png" height="28">VS<img src="image/faZe.png" height="28">faZe</td>
	    			<td width=25% class="text-center qna-th">LOL World Cup</td>
	    			<td width=15% class="text-center qna-th"><a href="#"><div>상세보기 ></div></a></td>
	    		</tr>
	    		<tr>
	    			<td width=15% class="text-center qna-th"><img src="image/ow3.png" height="32"></td>
	    			<td width=10% class="text-center qna-th">13:00</td>
	    			<td width=35% class="text-center qna-th">fnatic<img src="image/fnatic.png" height="28">VS<img src="image/faZe.png" height="28">faZe</td>
	    			<td width=25% class="text-center qna-th">LOL World Cup</td>
	    			<td width=15% class="text-center qna-th"><a href="#"><div>상세보기 ></div></a></td>
	    		</tr>
	    		<tr>
	    			<td width=15% class="text-center qna-th"><img src="image/sc2.png" height="32"></td>
	    			<td width=10% class="text-center qna-th">19:00</td>
	    			<td width=35% class="text-center qna-th">fnatic<img src="image/fnatic.png" height="28">VS<img src="image/faZe.png" height="28">faZe</td>
	    			<td width=25% class="text-center qna-th">LOL World Cup</td>
	    			<td width=15% class="text-center qna-th"><a href="#"><div>상세보기 ></div></a></td>
	    		</tr>
	    		<tr>
	    			<td width=15% class="text-center qna-th"><img src="image/cs2.png" height="32"></td>
	    			<td width=10% class="text-center qna-th">16:00</td>
	    			<td width=35% class="text-center qna-th">fnatic<img src="image/fnatic.png" height="28">VS<img src="image/faZe.png" height="28">faZe</td>
	    			<td width=25% class="text-center qna-th">LOL World Cup</td>
	    			<td width=15% class="text-center qna-th"><a href="#"><div>상세보기 ></div></a></td>
	    		</tr>
	    		
	    	</table>
		</div>
	</div>
</body>
</html>

