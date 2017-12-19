<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.sist.change.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String mode=request.getParameter("mode");
    if(mode==null)
    	mode="0";
    String jsp=JspChange.change(Integer.parseInt(mode));
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>GG GL</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link href="css/main_gallery.css" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

    <nav class="navbar navbar-default navbar-fixed-top" style="margin-right: 20">
        <div>
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
                <a class="navbar-brand" href="#myPage">GG GL</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="index.jsp?mode=1">뉴스</a></li>
                    <li><a href="index.jsp?mode=2">일정 /결과</a></li>
                    <li><a href="index.jsp?mode=3">갤러리</a></li>
                    <li><a href="index.jsp?mode=4">이벤트</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
                </ul>
            </div>
        </div>
    </nav>


<div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="image/overwatch.jpg" alt="New York" width="1200" height="700">
                <div class="carousel-caption">
                    <h1>OVERWATCH</h1>
                    <p>The atmosphere in New York is lorem ipsum.</p>
                </div>
            </div>

            <div class="item">
                <img src="image/overwatch2.jpg" alt="Chicago" width="1200" height="700">
                <div class="carousel-caption">
                    <h1>OVERWATCH</h1>
                    <p>Thank you, Chicago - A night we won't forget.</p>
                </div>
            </div>

            <div class="item">
                <img src="image/overwatch3.jpg" alt="Los Angeles" width="1200" height="700">
                <div class="carousel-caption">
                    <h1>OVERWATCH</h1>
                    <p>Even though the traffic was a mess, we had the best time playing at Venice Beach!</p>
                </div>
            </div>
            <div class="item">
                <img src="image/%EC%87%BC%ED%95%91%EB%AA%B0DB%EB%AA%A8%EB%8D%B8%EB%A7%81.png" alt="Los Angeles" width="1200" height="700">
                <div class="carousel-caption">
                    <h1>OVERWATCH</h1>
                    <p>Even though the traffic was a mess, we had the best time playing at Venice Beach!</p>
                </div>
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
    </div>

    <!-- Container (The Match Section) -->
    <div id="band" class="container text-center">
        <h1>THE BIG MATCH WILL START</h1>
        <p><em>Coming soon...</em></p>
        <br>
        <div class="row">
            <div class="col-sm-4">
                <p class="text-center"><strong>FNATIC</strong><br>HOME TEAM</p><br>
                <a href="#demo" data-toggle="collapse">
        <img src="https://www.fnatic.com/build/images/logos/fnatic.png" alt="Random Name" width="255" height="255">
      </a>
                <div id="demo" class="collapse">
                    <p>Fnatic Gaming</p>
                    <p>언제부터 시작되서 계속 우승했고 어쩌고 저쩌고~~~~~~</p>
                    <p>언제부터 시작되서 계속 우승했고 어쩌고 저쩌고~~~~~~</p>
                    <p>언제부터 시작되서 계속 우승했고 어쩌고 저쩌고~~~~~~</p>
                </div>
            </div>
            <div class="col-sm-4">
                <h5>
                    <p class="text-center"><strong>12월 5일 17시 30분</strong></p>
                </h5><br>
                <div>
                    <p>CSGOROLL Asian Masters</p>
                </div>
                <div>가능하면 여기 시간 카운터가 들어간다면 정말 멋질텐데</div>
                <img src="https://static.comicvine.com/uploads/original/11111/111119495/3299555-kickass12.png" alt="Random Name" width="155" height="155">


            </div>
            <div class="col-sm-4">
                <p class="text-center"><strong>Complexity</strong><br>AWAY TEAM</p><br>
                <a href="#demo3" data-toggle="collapse">
        <img src="http://wiki.teamliquid.net/commons/images/thumb/f/f4/Col_big_logo.png/600px-Col_big_logo.png" alt="Random Name" width="255" height="255">
      </a>
                <div id="demo3" class="collapse">
                    <p>언제부터 시작되서 계속 우승했고 어쩌고 저쩌고~~~~~~</p>
                    <p>언제부터 시작되서 계속 우승했고 어쩌고 저쩌고~~~~~~</p>
                    <p>언제부터 시작되서 계속 우승했고 어쩌고 저쩌고~~~~~~</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Container (TOUR Section) -->
    <div id="tour" class="bg-1">
        <div class="container">
            <h3 class="text-center">이스포츠 뉴스</h3>
            <p class="text-center">Lorem ipsum we'll play you some music.<br> Remember to book your tickets!</p>

            <div class="row text-center">
                <div class="col-sm-3">
                    <div class="thumbnail">
                        <img src="http://file2.nocutnews.co.kr/newsroom/image/2017/05/29/20170529133445781270.jpg" alt="Paris" width="400" height="300">
                        <p><strong>오버워치</strong></p>
                        <p>넷마블, MOBA '펜타스톰' e스포츠 가능성 봤다 - 노컷뉴스</p>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="thumbnail">
                        <img src="http://file2.nocutnews.co.kr/newsroom/image/2017/05/29/20170529133445781270.jpg" alt="Paris" width="400" height="300">
                        <p><strong>오버워치</strong></p>
                        <p>넷마블, MOBA '펜타스톰' e스포츠 가능성 봤다 - 노컷뉴스</p>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="thumbnail">
                        <img src="http://file2.nocutnews.co.kr/newsroom/image/2017/05/29/20170529133445781270.jpg" alt="Paris" width="400" height="300">
                        <p><strong>오버워치</strong></p>
                        <p>넷마블, MOBA '펜타스톰' e스포츠 가능성 봤다 - 노컷뉴스</p>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="thumbnail">
                        <img src="http://file2.nocutnews.co.kr/newsroom/image/2017/05/29/20170529133445781270.jpg" alt="Paris" width="400" height="300">
                        <p><strong>오버워치</strong></p>
                        <p>넷마블, MOBA '펜타스톰' e스포츠 가능성 봤다 - 노컷뉴스</p>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- Video Section -->
    <div class="bg-3 text-center container-fluid">
        <h3 class="margin">Where To Find Me?</h3><br>
        <div class="col-sm-4">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
            <iframe width="560" height="315" src="https://www.youtube.com/embed/zqhU76d690o" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
        </div>
        <div class="col-sm-4">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
            <iframe width="560" height="315" src="https://www.youtube.com/embed/zqhU76d690o" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
        </div>
        <div class="col-sm-4">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
            <iframe width="560" height="315" src="https://www.youtube.com/embed/zqhU76d690o" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
        </div>
    </div>

    <!-- Container (Event Section) -->
    <div id="event" class="container-fluid bg-1">
        <div class="row">
            <h3 class="text-center">Event</h3>
            <p class="text-center"><em>매일 새로운 대회가 업데이트~~~어쩌고저쩌고</em></p>
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">오버워치</a></li>
                <li><a data-toggle="tab" href="#menu1">스타크래프트</a></li>
                <li><a data-toggle="tab" href="#menu2">롤</a></li>
                <li><a data-toggle="tab" href="#menu3">글로벌오팬시브</a></li>
            </ul>

            <div class="tab-content">
                <div id="home" class="tab-pane fade in active">
                    <h2>Mike Ross, Manager</h2>
                    <p>Man, we've been on the road for some time now. Looking forward to lorem ipsum.</p>
                </div>
                <div id="menu1" class="tab-pane fade">
                    <h2>Chandler Bing, Guitarist</h2>
                    <p>Always a pleasure people! Hope you enjoyed it as much as I did. Could I BE.. any more pleased?</p>
                </div>
                <div id="menu2" class="tab-pane fade">
                    <h2>Peter Griffin, Bass player</h2>
                    <p>I mean, sometimes I enjoy the show, but other times I enjoy other things.</p>
                </div>
            </div>
        </div>
    </div>


    <footer id="myFooter">
        <div class="container bg-3">
            <div class="row">
                <div class="col-sm-3">
                    <h2 class="logo"><a href="#"> GG GL </a></h2>
                </div>
                <div class="col-sm-2">
                    <h5>회사 소개</h5>
                    <ul>
                        <h7>GG GL  <br>LOL,오버워치,스타크래프트
                        글로벌 오펜시브 에 대한 뉴스 ,데이터를 제공하는 사이트 입니다.</h7>
                    </ul>
                </div>
                <div class="col-sm-2">
                    <h5>회사 내부</h5>
                    <ul>
                        <li><a href="#">회사 위치</a></li>
                        <li><a href="#">경영진 소개</a></li>
                        
                    </ul>
                </div>
                <div class="col-sm-2">
                    <h5>Support</h5>
                    <ul>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Help desk</a></li>
                    
                    </ul>
                </div>
                <div class="col-sm-3">
                    <div class="social-networks">
                        <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                        <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                        <a href="#" class="google"><i class="fa fa-google-plus"></i></a>
                    </div>
                    <button type="button" class="btn btn-default">Contact us</button>
                </div>
            </div>
        </div>
        <div class="footer-copyright">
            <p>2017-12-05일 회사 창립  </p>
        </div>
    </footer>


    <script>
        $(document).ready(function() {
            // Initialize Tooltip
            $('[data-toggle="tooltip"]').tooltip();

            // Add smooth scrolling to all links in navbar + footer link
            $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

                // Make sure this.hash has a value before overriding default behavior
                if (this.hash !== "") {

                    // Prevent default anchor click behavior
                    event.preventDefault();

                    // Store hash
                    var hash = this.hash;

                    // Using jQuery's animate() method to add smooth page scroll
                    // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
                    $('html, body').animate({
                        scrollTop: $(hash).offset().top
                    }, 900, function() {

                        // Add hash (#) to URL when done scrolling (default click behavior)
                        window.location.hash = hash;
                    });
                } // End if
            });
        })

    </script>


</body>
</html>


