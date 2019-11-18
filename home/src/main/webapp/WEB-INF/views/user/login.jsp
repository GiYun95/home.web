<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
	function findIdview() {
		var popupX = (document.body.offsetWidth / 2) - (200 / 2);
		//&nbsp;만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

		var popupY= (document.body.offsetHeight / 2) - (300 / 2);
		//&nbsp;만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
		
		window.open('findId', '아이디 찾기', 'status=no, height=200, width=400, left='+ popupX + ', top='+ popupY);
	}
	function findPasswordview() {
		var popupX = (document.body.offsetWidth / 2) - (200 / 2);
		//&nbsp;만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

		var popupY= (document.body.offsetHeight / 2) - (300 / 2);
		//&nbsp;만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
		
		window.open('findPassword', '아이디 찾기', 'status=no, height=200, width=400, left='+ popupX + ', top='+ popupY);
	}
</script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- header.css -->
<link rel="stylesheet" href="res/css/header.css">
<!-- end header.css -->

<!-- login.css -->

<style>
.white {
	color: #000;
	background-color: #fff;
}
a{
	color: #303030;
	text-decoration: none;
}
.btn-facebook {
	color: #ffffff;
	-webkit-text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
	text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
	background-color: #2b4b90;
	*background-color: #133783;
	background-image: -moz-linear-gradient(top, #3b5998, #133783);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#3b5998),
		to(#133783));
	background-image: -webkit-linear-gradient(top, #3b5998, #133783);
	background-image: -o-linear-gradient(top, #3b5998, #133783);
	background-image: linear-gradient(to bottom, #3b5998, #133783);
	background-repeat: repeat-x;
	border-color: #133783 #133783 #091b40;
	border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff3b5998',
		endColorstr='#ff133783', GradientType=0);
	filter: progid:DXImageTransform.Microsoft.gradient(enabled=false);
}

.btn-facebook:hover, .btn-facebook:focus, .btn-facebook:active,
	.btn-facebook.active, .btn-facebook.disabled, .btn-facebook[disabled] {
	color: #ffffff;
	background-color: #133783 !important;
	*background-color: #102e6d !important;
}

.btn-facebook:active, .btn-facebook.active {
	background-color: #0d2456\9 !important;
}
</style>
<!-- end login.css -->


<meta charset="UTF-8">
<title>Insert title here</title>



</head>
<body>
	<!-- header -->
	<nav class="navbar">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="/home"><img src="res/img/logo.png"></a>
			</div>

			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="login">Login</a></li>
					<li><a href="">House & Room</a></li>
					<li><a href="#">Help</a></li>
				</ul>
			</div>	
		</div>
	</nav>
	<!-- header end -->
	<br><br>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title" style="text-align: center; font-size: 1.3em;"><b>LOGIN</b></h3>
					</div>
					<div class="panel-body">
						<form accept-charset="UTF-8" role="form">
							<fieldset>
								<div class="form-group">
									<input class="form-control" placeholder="아이디" name="text"
										type="text">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="패스워드" name="password"
										type="password" value="">
								</div>
								<div class="checkbox">
									
								</div>
								<input onclick="location.href='userInfo'" class="btn btn-lg btn-success btn-block" type="button"
									value="로그인"><br> </a>
							</fieldset>
						</form>
						<center style="font-size: 0.9em; color: gray;">
							<span> 
								<a href="javascript:void(0);" onclick="findIdview();">아이디 찾기</a> |
								<a href="javascript:void(0);" onclick="findPasswordview();">비밀번호 찾기</a> |
								<a href="join">회원가입</a>
							</span>
						</center>
						<hr />
						<a id="custom-login-btn" href="javascript:loginWithKakao()"> <img
							src="http://mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg"
							width="100%" height="50" />
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>