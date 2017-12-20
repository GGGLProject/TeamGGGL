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
               <li><a href="news_main.do">����</a></li>
               <li><a href="game_schedule.do">���� / ���</a></li>
               <li><a href="gallery.do">������</a></li>
               <li><a href="event_list.do">�̺�Ʈ</a></li>
         </ul>
         <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span>
                  ȸ������</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
                  �α���</a></li>
         </ul>
 <!--                <li><a href="reserve.do">��ȭ����</a></li>
                                   <li><a href="recommand.do">��õ��ȭ</a></li> -->
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
   <p>League of Legends�� ���� ���� ����Ʈ �Դϴ�.</p>
   <p>Made by ��ư 6���̼� ����</p>
   </footer>
</body>
</html>


