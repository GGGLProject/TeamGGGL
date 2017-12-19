<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Droid+Sans);
body {
  background-color: #f0f0f0;
  font-family: "Droid Sans","Helvetica Neue", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
}

* {
  box-sizing: border-box;
}

.container {
  background: #fdfdfd;
  padding: 1rem;
  margin: 3rem auto;
  border-radius: 0.2rem;
  counter-reset: pagination;
  text-align: center;
}

.container:after {
  clear: both;
  content: "";
  display: table;
}

.container ul {
  width: 100%;
}

.xlarge {
  width: 65rem;
}

ul, li {
  list-style: none;
  display: inline;
  padding-left: 0px;
}

li {
  counter-increment: pagination;
}

li:hover a {
  color: #fdfdfd;
  background-color: #1d1f20;
  border: solid 1px #1d1f20;
}

li.active a {
  color: #fdfdfd;
  background-color: #1d1f20;
  border: solid 1px #1d1f20;
}

li:first-child a:after {
  content: " ";
}

li:nth-child(2) {
  counter-reset: pagination;
}

li:last-child a:after {
  content: " ";
}

li a {
  border: solid 1px #d7d7d7;
  border-radius: 0.2rem;
  color: #7d7d7d;
  text-decoration: none;
  text-transform: uppercase;
  display: inline-block;
  text-align: center;
  padding: 0.5rem 0.9rem;
}

li a:after {
  content: " " counter(pagination) " ";
}

</style>

</head>
<body>

  <div class="container xlarge">
  <div class="pagination">
      <ul class="pagen" id="pagen">
          <li><a href="#">&laquo;</a></li>
          <li><a href="#"></a></li>
          <li class="active"><a href="#"></a></li>
          <li><a href="#"></a></li>
          <li><a href="#"></a></li>
          <li><a href="#"></a></li>
          <li><a href="#"></a></li>
          <li><a href="#"></a></li>
          <li><a href="#"></a></li>
          <li><a href="#">&raquo;</a></li>
      </ul>
  </div>
</div>
</body>
</html>