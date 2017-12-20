<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<link href="css/gameMain.css" rel="stylesheet" type="text/css">
<link href="css/gameDetail.css" rel="stylesheet" type="text/css">
<link href="css/gamegallery.css" rel="stylesheet" type="text/css">
<link href="css/gameSchedule.css" rel="stylesheet" type="text/css">
<link href="css/gameDetail.css" rel="stylesheet" type="text/css">
<link href="css/gameMain.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
               <li><a href="game_schedule.do">일정 / 결과</a></li>
               <li><a href="gallery.do">갤러리</a></li>
               <li><a href="event_list.do">이벤트</a></li>
         </ul>
         <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span>
                  회원가입</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
                  로그인</a></li>
         </ul>
 <!--                <li><a href="reserve.do">영화예매</a></li>
                                   <li><a href="recommand.do">추천영화</a></li> -->
      </div>
   </div>
   </nav>

   <!-- Content -->
               <%-- include --%>
              <jsp:include page="${main_jsp }"></jsp:include>
   <!-- Footer -->
   <footer class="text-center"> <a class="up-arrow"
      href="#myPage" data-toggle="tooltip" title="TO TOP"> <span
      class="glyphicon glyphicon-chevron-up"></span>
   </a> <br>
   <br>
   <p>League of Legends에 관한 종합 사이트 입니다.</p>
   <p>Made by 암튼 6명이서 만듬</p>
   </footer>
</body>
</html>


