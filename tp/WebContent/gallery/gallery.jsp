<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Gallery</title>
<style>
@import url(https://fonts.googleapis.com/css?family=Raleway:400,500,800)
	;
body{
      background-image: url('../image/lol.jpg');
      background-attachment: fixed;
   }
.row {
	margin-left: 13%;
}

figure.snip1200 {
	font-family: 'Raleway', Arial, sans-serif;
	position: relative;
	float: left;
	overflow: hidden;
	margin: 10px 1%;
	min-width: 220px;
	max-width: 310px;
	max-height: 310px;
	width: 100%;
	background: #000000;
	color: #ffffff;
	text-align: center;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
	font-size: 16px;
}

figure.snip1200 * {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-transition: all 0.45s ease-in-out;
	transition: all 0.45s ease-in-out;
}

figure.snip1200 img {
	max-width: 100%;
	position: relative;
	opacity: 0.9;
}

figure.snip1200 figcaption {
	position: absolute;
	top: 45%;
	left: 7%;
	right: 7%;
	bottom: 45%;
	border: 1px solid white;
	border-width: 1px 1px 0;
}

figure.snip1200 .heading {
	overflow: hidden;
	-webkit-transform: translateY(50%);
	transform: translateY(50%);
	position: absolute;
	bottom: 0;
	width: 100%;
}

figure.snip1200 h2 {
	display: table;
	margin: 0 auto;
	padding: 0 10px;
	position: relative;
	text-align: center;
	width: auto;
	text-transform: uppercase;
	font-weight: 400;
}

figure.snip1200 h2 span {
	font-weight: 800;
}

figure.snip1200 h2:before, figure.snip1200 h2:after {
	position: absolute;
	display: block;
	width: 1000%;
	height: 1px;
	content: '';
	background: white;
	top: 50%;
}

figure.snip1200 h2:before {
	left: -1000%;
}

figure.snip1200 h2:after {
	right: -1000%;
}

figure.snip1200 p {
	top: 50%;
	-webkit-transform: translateY(-50%);
	transform: translateY(-50%);
	position: absolute;
	width: 100%;
	padding: 0 20px;
	margin: 0;
	opacity: 0;
	line-height: 1.6em;
	font-size: 0.9em;
}

figure.snip1200 a {
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	position: absolute;
	z-index: 1;
}

figure.snip1200:hover img, figure.snip1200.hover img {
	opacity: 0.25;
	-webkit-transform: scale(1.1);
	transform: scale(1.1);
}

figure.snip1200:hover figcaption, figure.snip1200.hover figcaption {
	top: 7%;
	bottom: 7%;
}

figure.snip1200:hover p, figure.snip1200.hover p {
	opacity: 1;
	-webkit-transition-delay: 0.35s;
	transition-delay: 0.35s;
}
/* Demo purposes only */
body {
	background-color: #212121;
}

.title {
	color: white;
}

snip1200 {
	margin-left: 200px;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
	margin: auto;
	display: block;
	width: 80%;
	max-width: 700px;
}

/* Caption of Modal Image */
#caption {
	margin: auto;
	display: block;
	width: 80%;
	max-width: 700px;
	text-align: center;
	color: #ccc;
	padding: 10px 0;
	height: 150px;
}

/* Add Animation */
.modal-content, #caption {
	-webkit-animation-name: zoom;
	-webkit-animation-duration: 0.6s;
	animation-name: zoom;
	animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@keyframes zoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}

/* The Close Button */
.close {
	position: absolute;
	top: 15px;
	right: 35px;
	color: #f1f1f1;
	font-size: 40px;
	font-weight: bold;
	transition: 0.3s;
}

.close:hover, .close:focus {
	color: #bbb;
	text-decoration: none;
	cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px) {
	.modal-content {
		width: 100%;
	}
}
</style>

</head>
<body>
	<div class="title" align="center">
		<h1>Gallery</h1>
	</div>

	<div class="row text-center">
		<figure class="snip1200" id="myImg1"> <img id="modal1"
			src="경리1.jpg" alt="강아지" /> <figcaption>
		<p>I say, if your knees aren't green by the end of the day, you
			ought to seriously re-examine your life.</p>
		<div class="heading">
			<h2>
				My<span> Hobby</span>
			</h2>
		</div>
		</figcaption> <a href="#"></a> </figure>

		<figure class="snip1200" id="myImg2"> <img id="modal2"
			src="../gallery/image/경리3.jpg" alt="경리" /> <figcaption>
		<p>The inside of my head was exploding with fireworks.
			Fortunately, my last thought turned out the lights when it left.</p>
		<div class="heading">
			<h2>
				난<span>경리</span>
			</h2>
		</div>

		</figcaption> <a href="#"></a> </figure>
		<figure class="snip1200" id="myImg3"> <img id="modal3"
			src="경리2.jpg" alt="경리" /> <figcaption>
		<p>That's the difference between me and the rest of the world!
			Happiness isn't good enough for me! I demand euphoria!</p>
		<div class="heading">
			<h2>
				My <span> Dream</span>
			</h2>
		</div>
		</figcaption> <a href="#"></a> </figure>
		<figure class="snip1200" id="myImg4"> <img id="modal4"
			src="아이유2.jpg" alt="아이유" /> <figcaption>
		<p>That's the difference between me and the rest of the world!
			Happiness isn't good enough for me! I demand euphoria!</p>
		<div class="heading">
			<h2>
				My <span> Dream</span>
			</h2>
		</div>
		</figcaption> <a href="#"></a> </figure>
		<figure class="snip1200" id="myImg5"> <img id="modal5"
			src="아이유1.jpg" alt="아잉" /> <figcaption>
		<p>That's the difference between me and the rest of the world!
			Happiness isn't good enough for me! I demand euphoria!</p>
		<div class="heading">
			<h2>
				My <span> Dream</span>
			</h2>
		</div>
		</figcaption> <a href="#"></a> </figure>
		<figure class="snip1200" id="myImg6"> <img id="modal6"
			src="경리2.jpg" alt="경리" /> <figcaption>
		<p>That's the difference between me and the rest of the world!
			Happiness isn't good enough for me! I demand euphoria!</p>
		<div class="heading">
			<h2>
				My <span> Dream</span>
			</h2>
		</div>
		</figcaption> <a href="#"></a> </figure>
		<figure class="snip1200" id="myImg7"> <img id="modal7"
			src="박보검1.jpg" alt="박보검" /> <figcaption>
		<p>That's the difference between me and the rest of the world!
			Happiness isn't good enough for me! I demand euphoria!</p>
		<div class="heading">
			<h2>
				My <span> Dream</span>
			</h2>
		</div>
		</figcaption> <a href="#"></a> </figure>
		<figure class="snip1200" id="myImg8"> <img id="modal8"
			src="전효성1.jpg" alt="전효성" /> <figcaption>
		<p>That's the difference between me and the rest of the world!
			Happiness isn't good enough for me! I demand euphoria!</p>
		<div class="heading">
			<h2>
				My <span> Dream</span>
			</h2>
		</div>
		</figcaption> <a href="#"></a> </figure>
		
	</div>
	<div id="myModal" class="modal">
		<span class="close">&times;</span> <img class="modal-content"
			id="img01">
		<div id="caption"></div>
	</div>

	<script>
		var modalImg = document.getElementById("img01");
		var captionText = document.getElementById("caption");
		// Get the modal
		var modal = document.getElementById('myModal');

		// Get the image and insert it inside the modal - use its "alt" text as a caption
		var img = document.getElementById('myImg1');
		var img2 = document.getElementById('myImg2');
		var img3 = document.getElementById('myImg3');
		var img4 = document.getElementById('myImg4');
		var img5 = document.getElementById('myImg5');
		var img6 = document.getElementById('myImg6');
		var img7 = document.getElementById('myImg7');
		var img8 = document.getElementById('myImg8');
		
		
		var modal1 = document.getElementById("modal1");
		var modal2 = document.getElementById("modal2");
		var modal3 = document.getElementById("modal3");
		var modal4 = document.getElementById("modal4");
		var modal5 = document.getElementById("modal5");
		var modal6 = document.getElementById("modal6");
		var modal7 = document.getElementById("modal7");
		var modal8 = document.getElementById("modal8");
		
		
		img.onclick = function() {
			modal.style.display = "block";
			modalImg.src = modal1.src;
			captionText.innerHTML = this.alt;
		}
		img2.onclick = function() {
			modal.style.display = "block";
			modalImg.src = modal2.src;
			captionText.innerHTML = this.alt;
		}
		img3.onclick = function() {
			modal.style.display = "block";
			modalImg.src = modal3.src;
			captionText.innerHTML = this.alt;
		}
		img4.onclick = function() {
			modal.style.display = "block";
			modalImg.src = modal4.src;
			captionText.innerHTML = this.alt;
		}
		img5.onclick = function() {
			modal.style.display = "block";
			modalImg.src = modal5.src;
			captionText.innerHTML = this.alt;
		}
		img6.onclick = function() {
			modal.style.display = "block";
			modalImg.src = modal6.src;
			captionText.innerHTML = this.alt;
		}
		img7.onclick = function() {
			modal.style.display = "block";
			modalImg.src = modal7.src;
			captionText.innerHTML = this.alt;
		}
		img8.onclick = function() {
			modal.style.display = "block";
			modalImg.src = modal8.src;
			captionText.innerHTML = this.alt;
		}
		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
		}
		/* Demo purposes only */
		$(".hover").mouseleave(function() {
			$(this).removeClass("hover");
		});
	</script>
</body>
</html>