<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>갤러리</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/gameGallery.css" rel="stylesheet" type="text/css">
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
</head>

<body>
	<div class="title" align="center">
		<h1>
			<strong>Gallery</strong>
		</h1>
	</div>
	<div class="container-fluid">
		<div id="middle_nav_menu">
			<ul class="middle_nav_tabs">
				<li class="active2" rel="tab1">ALL</li>
				<li rel="tab2">TOP</li>
				<li rel="tab3">MID</li>
				<li rel="tab4">JUNGLE</li>
				<li rel="tab5">BOTTOM</li>
				<li rel="tab6">SUPPORT</li>
			</ul>
			<div class="middle_tab_container">

				<!-- All -->
				<div class="middle_tab_content" id="tab1">
					<c:forEach var="vo" items="${list_all}">
						<figure class="snip1200" id="myImg"> 
							<img id="Imgg" src="gameGallery/image/${vo.gallery_img }.jpg" > 
							<figcaption>
								<p>${vo.gallery_content }</p>
								<div class="heading"><h2><span>${vo.gallery_title }</span></h2></div>
							</figcaption>
							<a href="#"></a>
						</figure>
						<div id="myModal" class="modal">
							<span class="close">&times;</span> 
							<img class="modal-content" id="img01">
							<div id="caption">
								<h3>${vo.gallery_title }</h3>
								<p>${vo.gallery_content }</p>
							</div>
						</div>
					</c:forEach>
					<!-- 페이지이동 -->
					<ul class="pagination pagination-centered">
						<li><a href="gallery.do?page=${curpage<11?curpage:curpage-10}">&laquo;</a></li>
						<fmt:parseNumber var="num" value="${curpage/10}" integerOnly="true" />
						<c:set var="num" value="${num<=0?1:num*10}" />
						<c:forEach var="i" begin="${num}" end="${num==1?num+8:num+9}">
							<c:choose>
								<c:when test="${i > totalpage }"></c:when>
								<c:when test="${i==curpage}">
									<li class="active"><a href="gallery.do?page=${i}">${i}</a></li>
								</c:when>
								<c:when test="${i <= totalpage}">
									<li><a href="gallery.do?page=${i }">${i}</a></li>
								</c:when>
							</c:choose>
						</c:forEach>
						<li><a href="gallery.do?page=${curpage<=totalpage-10?curpage+10:curpage}">&raquo;</a></li>
					</ul>
				</div>
				
				
				<!-- TOP -->
				<div class="middle_tab_content" id="tab2">
					<div class="row qnarow gametable">
						<div class="row text-center">
							<c:forEach var="vo" items="${list_t}">
								<figure class="snip1200" id="myImg1"> <img id="modal1"
									src="gameGallery/image/${vo.gallery_img }.jpg" alt="lol" /> <figcaption>
								<p>${vo.gallery_content }</p>
								<div class="heading">
									<h2>
										<span>${vo.gallery_title }</span>
									</h2>
								</div>
								</figcaption> <a href="#"></a> </figure>
							</c:forEach>
						</div>
						<!-- //row text-center -->
					</div>
					<!-- //row qnarow gametable -->
					
				</div>
				<!-- middle_tab_content -->
				
				<!-- MID -->
				<div class="middle_tab_content" id="tab3">
					<div class="row qnarow gametable">
						<div class="row text-center">
							<c:forEach var="vo" items="${list_m}">
								<figure class="snip1200" id="myImg1"> <img id="modal1"
									src="gameGallery/image/${vo.gallery_img }.jpg" alt="lol" /> <figcaption>
								<p>${vo.gallery_content }</p>
								<div class="heading">
									<h2>
										<span>${vo.gallery_title }</span>
									</h2>
								</div>
								</figcaption> <a href="#"></a> </figure>
							</c:forEach>
						</div>
						<!-- //row text-center -->
					</div>
					<!-- //row qnarow gametable -->
					
				</div>
				<!-- middle_tab_content -->
				
				<!-- JUNGLE -->
				<div class="middle_tab_content" id="tab4">
					<div class="row qnarow gametable">
						<div class="row text-center">
							<c:forEach var="vo" items="${list_j}">
								<figure class="snip1200" id="myImg1"> <img id="modal1"
									src="gameGallery/image/${vo.gallery_img }.jpg" alt="lol" /> <figcaption>
								<p>${vo.gallery_content }</p>
								<div class="heading">
									<h2>
										<span>${vo.gallery_title }</span>
									</h2>
								</div>
								</figcaption> <a href="#"></a> </figure>
							</c:forEach>
						</div>
						<!-- //row text-center -->
					</div>
					<!-- //row qnarow gametable -->
					
				</div>
				<!-- middle_tab_content -->
				
				
				<!-- BOTTOM -->
				<div class="middle_tab_content" id="tab5">
					<div class="row qnarow gametable">
						<div class="row text-center">
							<c:forEach var="vo" items="${list_b}">
								<figure class="snip1200" id="myImg1"> <img id="modal1"
									src="gameGallery/image/${vo.gallery_img }.jpg" alt="lol" /> <figcaption>
								<p>${vo.gallery_content }</p>
								<div class="heading">
									<h2>
										<span>${vo.gallery_title }</span>
									</h2>
								</div>
								</figcaption> <a href="#"></a> </figure>
							</c:forEach>
						</div>
						<!-- //row text-center -->
					</div>
					<!-- //row qnarow gametable -->
					
				</div>
				<!-- middle_tab_content -->
				
				
				<!-- SUPPORT -->
				<div class="middle_tab_content" id="tab6">
					<div class="row qnarow gametable">
						<div class="row text-center">
							<c:forEach var="vo" items="${list_s}">
								<figure class="snip1200" id="myImg1"> <img id="modal1"
									src="gameGallery/image/${vo.gallery_img }.jpg" alt="lol" /> <figcaption>
								<p>${vo.gallery_content }</p>
								<div class="heading">
									<h2>
										<span>${vo.gallery_title }</span>
									</h2>
								</div>
								</figcaption> <a href="#"></a> </figure>
							</c:forEach>
						</div>
						<!-- //row text-center -->
					</div>
					<!-- //row qnarow gametable -->
					
				</div>
				<!-- middle_tab_content -->
			</div>
		</div>

		<!-- //middle_nav_menu -->
	</div>
	
	


	<script>
	//Get the modal
	var modal = document.getElementById('myModal');
	
	// Get the image and insert it inside the modal - use its "alt" text as a caption
	var img = document.getElementById('myImg');
	var modalImg = document.getElementById("img01");
	var Imggg = document.getElementById('Imgg');
	var captionText = document.getElementById("caption");
	img.onclick = function(){
	    modal.style.display = "block";
	    modalImg.src = Imggg.src;
	    /* captionText.innerHTML = this.alt; */
	}
	
	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];
	
	// When the user clicks on <span> (x), close the modal
	span.onclick = function() { 
	  modal.style.display = "none";
	}
	</script>


</body>
</html>










