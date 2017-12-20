<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-4 well well-sm">
            <legend><a href="http://www.jquery2dotnet.com"><i class="glyphicon glyphicon-globe"></i></a> 로그인</legend>
            <form action="#" method="post" class="form" role="form">
            <div class="row">
                <div class="col-xs-6 col-md-6">
                    <input class="form-control" name="firstname" placeholder="아이디" type="text"
                        required autofocus />
                </div>
                <div class="col-xs-6 col-md-6">
                    <input class="form-control" name="lastname" placeholder="비밀번호" type="password" required />
                </div>
            </div>
            <input class="form-control" name="youremail" placeholder="이메일" type="email" />
            <input class="form-control" name="reenteremail" placeholder="이름(별명)" type="text" />
            
            <label for="">
                Birth Date</label>
            <div class="row">
                <div class="col-xs-4 col-md-4">
                    <select class="form-control">
                        <option value="Month">년도</option>
                    </select>
                </div>
                <div class="col-xs-4 col-md-4">
                    <select class="form-control">
                        <option value="Day">월</option>
                    </select>
                </div>
                <div class="col-xs-4 col-md-4">
                    <select class="form-control">
                        <option value="Year">일</option>
                    </select>
                </div>
            </div>
            <label class="radio-inline">
                <input type="checkbox" name="team" id="inlineCheckbox1" value="male" />
                LCK
            </label>
            <label class="radio-inline">
                <input type="checkbox" name="team" id="inlineCheckbox2" value="female" />
                NALCS
            </label>
            <label class="radio-inline">
                <input type="checkbox" name="team" id="inlineCheckbox2" value="female" />
                EULCS
            </label>
            <label class="radio-inline">
                <input type="checkbox" name="team" id="inlineCheckbox2" value="female" />
                CBLOL
            </label>
            <br />
            <br />
            <button class="btn btn-lg btn-primary btn-block" type="submit">
                회원가입</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>