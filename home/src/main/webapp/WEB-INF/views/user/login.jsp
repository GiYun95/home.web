<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>	
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- header.css -->
<link rel="stylesheet" href="res/css/header.css">
<!-- end header.css -->

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />


<style>
sweet-size {
	width: 320px;
	height: 200px;
}

.white {
	color: #000;
	background-color: #fff;
}

a {
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

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>

var alert = function(msg, type){
	swal({
		title:'',
		text:msg,
		type:type,
		timer:1000,
		customClass:'sweet-size',
		showConfirmButton:false
	});
}

function login() {
	var userId = $("#userId").val();
	var userPassword = $("#userPassword").val();
	console.log(userId,userPassword);
	
	if( !(userId && userPassword))
		alert('아이디와 패스워드를 입력해주세요.', 'warning');
	else{
		$("#loginForm").submit();	
	}
}

//<![CDATA[
// 사용할 앱의 JavaScript 키를 설정해 주세요.
Kakao.init('cc04d60c858f4436ba8162540e9d46e3');
function loginWithKakao() {
  // 로그인 창을 띄웁니다.
  Kakao.Auth.login({
    success: function(authObj) {
    	console.log(authObj);
      alert(JSON.stringify(authObj));
    },
    fail: function(err) {
      alert(JSON.stringify(err));
    }
  });
};
//]]>
</script>

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
	<br>
	<br>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title"
							style="text-align: center; font-size: 1.3em;">
							<b>LOGIN</b>
						</h3>
					</div>
					<div class="panel-body">
						<form accept-charset="UTF-8" method="POST" action="login.do" id="loginForm" name="loginForm">
							<fieldset>
								<div class="form-group">
									<input class="form-control" placeholder="아이디" name="userId" id="userId"
										type="text">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="패스워드" id="userPassword"
										name="userPassword" type="password" value="">
								</div>
								<div class="checkbox"></div>
								<input onclick="login();"
									class="btn btn-lg btn-success btn-block" type="button"
									value="로그인"><br> </a>
							</fieldset>
						</form>
						<center style="font-size: 0.9em; color: gray;">
							<span> <a href="javascript:void(0);"
								onclick="findIdview();">아이디 찾기</a> | <a
								href="javascript:void(0);" onclick="findPasswordview();">비밀번호
									찾기</a> | <a href="join">회원가입</a>
							</span>
						</center>
						<hr />
						<a id="custom-login-btn" href="javascript:loginWithKakao()" > <img
							src="http://mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg"
							width="100%" height="50" />
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>