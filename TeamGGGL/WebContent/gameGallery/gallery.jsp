<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=EUC-KR">
<title>갤러리</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/gameGallery.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript">
var snum=0;
var modalFlag = false;

function popup(num) {
	var m = num;
	if (modalFlag){
		modalFlag = false;
		return;
	}
	else {
		modalFlag = true;
	    modal[m].style.display = "block";
	    modalImg[m].src = Imggg[m].src;
	    /* captionText.innerHTML = this.alt; */
	setnum(m);
	}
}
	// Get the <span> element that closes the modal


function popclose(a){

	modal[a].style.display = "none";
}


	
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
				<div class="row qnarow gametable">
						<div class="row text-center">
					<c:forEach var="vo" items="${list_all}" varStatus="i">
						<c:set var="myImg" value="myImg${i.index}"/>
						<c:set var="Imgg" value="Imgg${i.index}"/>
						<c:set var="img01" value="img01${i.index}"/>
						<c:set var="myModal" value="myModal${i.index}"/>
						<c:set var="caption" value="caption${i.index}"/>
						<input type=hidden id=num value="${i.index }"/>
						<figure class="snip1200" id=${myImg } onclick="popup(${i.index})"> 
							<img id="${Imgg}" src="gameGallery/image/${vo.gallery_img }.jpg" class="image" > 
							<figcaption>
								<p>${vo.gallery_content }</p>
								<div class="heading"><h2><span>${vo.gallery_title }</span></h2></div>
							</figcaption>
							<a href="#"></a>
						</figure>
						<div id="${myModal}" class="modal">
							<span class="close" onclick="popclose(${i.index})">&times;</span> 
							<img class="modal-content" id="${img01}">
							<div id="${caption}" class="caption">
								<h3>${vo.gallery_title }</h3>
								<p>${vo.gallery_content }</p>
							</div>
						</div>
					</c:forEach>
					
					<!-- 페이지이동 -->
					</div>
					</div>
				</div>
				
				
				<!-- TOP -->
				<div class="middle_tab_content" id="tab2">
					<div class="row qnarow gametable">
						<div class="row text-center"> 
						
					<c:forEach var="vo" items="${list_t}" varStatus="t">
						
 					<c:set var="myImg" value="myImg${t.index+allsize}"/>
						<c:set var="Imgg" value="Imgg${t.index+allsize}"/>
						<c:set var="img01" value="img01${t.index+allsize}"/>
						<c:set var="myModal" value="myModal${t.index+allsize}"/>
						<c:set var="caption" value="caption${t.index+allsize}"/>
						<input type=hidden id=num value="${t.index+allsize}"/>
						<figure class="snip1200" id=${myImg } onclick="popup(${t.index+allsize})"> 
							<img id="${Imgg}" src="gameGallery/image/${vo.gallery_img }.jpg" class="image" > 
							<figcaption>
								<p>${vo.gallery_content }</p>
								<div class="heading"><h2><span>${vo.gallery_title }</span></h2></div>
							</figcaption>
							<a href="#"></a>
						</figure>
						<div id="${myModal}" class="modal"  data-backdrop="static">
							<span class="close" onclick="popclose(${t.index+allsize})">&times;</span> 
							<img class="modal-content" id="${img01}">
							<div id="${caption}" class="caption">
								<h3>${vo.gallery_title }</h3>
								<p>${vo.gallery_content }</p>
							</div>
						</div>
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
							<c:forEach var="vo" items="${list_m}" varStatus="m">
						
 					<c:set var="myImg" value="myImg${m.index+msize}"/>
						<c:set var="Imgg" value="Imgg${m.index+msize}"/>
						<c:set var="img01" value="img01${m.index+msize}"/>
						<c:set var="myModal" value="myModal${m.index+msize}"/>
						<c:set var="caption" value="caption${m.index+msize}"/>
						<input type=hidden id=num value="${m.index+msize}"/>
						<figure class="snip1200" id=${myImg } onclick="popup(${m.index+msize})"> 
							<img id="${Imgg}" src="gameGallery/image/${vo.gallery_img }.jpg" class="image" > 
							<figcaption>
								<p>${vo.gallery_content }</p>
								<div class="heading"><h2><span>${vo.gallery_title }</span></h2></div>
							</figcaption>
							<a href="#"></a>
						</figure>
						<div id="${myModal}" class="modal">
							<span class="close" onclick="popclose(${m.index+msize})">&times;</span> 
							<img class="modal-content" id="${img01}">
							<div id="${caption}" class="caption">
								<h3>${vo.gallery_title }</h3>
								<p>${vo.gallery_content }</p>
							</div>
						</div>
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
							<c:forEach var="vo" items="${list_j}" varStatus="j">
						
 					<c:set var="myImg" value="myImg${j.index+jsize}"/>
						<c:set var="Imgg" value="Imgg${j.index+jsize}"/>
						<c:set var="img01" value="img01${j.index+jsize}"/>
						<c:set var="myModal" value="myModal${j.index+jsize}"/>
						<c:set var="caption" value="caption${j.index+jsize}"/>
						<input type=hidden id=num value="${j.index+jsize}"/>
						<figure class="snip1200" id=${myImg } onclick="popup(${j.index+jsize})"> 
							<img id="${Imgg}" src="gameGallery/image/${vo.gallery_img }.jpg" class="image" > 
							<figcaption>
								<p>${vo.gallery_content }</p>
								<div class="heading"><h2><span>${vo.gallery_title }</span></h2></div>
							</figcaption>
							<a href="#"></a>
						</figure>
						<div id="${myModal}" class="modal">
							<span class="close" onclick="popclose(${j.index+jsize})">&times;</span> 
							<img class="modal-content" id="${img01}">
							<div id="${caption}" class="caption">
								<h3>${vo.gallery_title }</h3>
								<p>${vo.gallery_content }</p>
							</div>
						</div>
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
							<c:forEach var="vo" items="${list_b}" varStatus="b">
						
 					<c:set var="myImg" value="myImg${b.index+bsize}"/>
						<c:set var="Imgg" value="Imgg${b.index+bsize}"/>
						<c:set var="img01" value="img01${b.index+bsize}"/>
						<c:set var="myModal" value="myModal${b.index+bsize}"/>
						<c:set var="caption" value="caption${b.index+bsize}"/>
						<input type=hidden id=num value="${b.index+bsize}"/>
						<figure class="snip1200" id=${myImg } onclick="popup(${b.index+bsize})"> 
							<img id="${Imgg}" src="gameGallery/image/${vo.gallery_img }.jpg" class="image" > 
							<figcaption>
								<p>${vo.gallery_content }</p>
								<div class="heading"><h2><span>${vo.gallery_title }</span></h2></div>
							</figcaption>
							<a href="#"></a>
						</figure>
						<div id="${myModal}" class="modal">
							<span class="close" onclick="popclose(${b.index+bsize})">&times;</span> 
							<img class="modal-content" id="${img01}">
							<div id="${caption}" class="caption">
								<h3>${vo.gallery_title }</h3>
								<p>${vo.gallery_content }</p>
							</div>
						</div>
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
							<c:forEach var="vo" items="${list_s}" varStatus="s">
						
 					<c:set var="myImg" value="myImg${s.index+ssize}"/>
						<c:set var="Imgg" value="Imgg${s.index+ssize}"/>
						<c:set var="img01" value="img01${s.index+ssize}"/>
						<c:set var="myModal" value="myModal${s.index+ssize}"/>
						<c:set var="caption" value="caption${s.index+ssize}"/>
						<input type=hidden id=num value="${s.index+ssize}"/>
						<figure class="snip1200" id=${myImg } onclick="popup(${s.index+ssize})"> 
							<img id="${Imgg}" src="gameGallery/image/${vo.gallery_img }.jpg" class="image" > 
							<figcaption>
								<p>${vo.gallery_content }</p>
								<div class="heading"><h2><span>${vo.gallery_title }</span></h2></div>
							</figcaption>
							<a href="#"></a>
						</figure>
						<div id="${myModal}" class="modal">
							<span class="close" onclick="popclose(${s.index+ssize})">&times;</span> 
							<img class="modal-content" id="${img01}">
							<div id="${caption}" class="caption">
								<h3>${vo.gallery_title }</h3>
								<p>${vo.gallery_content }</p>
							</div>
						</div>
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
	
	
	<%-- 				<c:set var="myImg" value="myImg+${i}"/>
						<c:set var="Imgg" value="Imgg+${i}"/>
						<c:set var="img01" value="img01+${i}"/>
						<c:set var="myModal" value="myModal+${i}"/>
						<c:set var="caption" value="caption+${i}"/> --%>
	<script>
	//Get the modal
var size1 = ${totalsize};

var modal = new Array();
var img = new Array();
var modalImg = new Array();
var Imggg = new Array();
var captionText = new Array();
var span = new Array();
for (var n=0; n<size1; n++)
{
modal[n] = document.getElementById("myModal"+n);


// Get the image and insert it inside the modal - use its "alt" text as a caption
img[n] = document.getElementById("myImg"+n);

modalImg[n] = document.getElementById("img01"+n);

Imggg[n] = document.getElementById("Imgg"+n);

captionText[n] = document.getElementById("caption"+n);
span[n] = document.getElementsByClassName("close")[n];
}


// When the user clicks on <span> (x), close the modal
	
	</script>


</body>
</html>










