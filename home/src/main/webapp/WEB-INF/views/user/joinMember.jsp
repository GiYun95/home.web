<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<!-- header -->
<link rel="stylesheet" href="res/css/header.css">
<!-- header end -->

<!-- join.css-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style>
	.well
      {
         padding: 35px;
         padding-left: 30px;
         margin: 2% auto 0;
         width: 450px;
      }
	  .container-fluid{
	  	padding-bottom: 4%;
	  }
	  .form-control{
	  	border: 0px;
	  }
	  
	  p{
	  	background-color: white;
	  	padding: 0px;
	  	margin: 0px;"
	  }

      .input-group-addon
      {
      	background-color: #3c763d6b;
      	color: black;
      }
      .btn btn-secondary{ border: 1px solid; border-radius: 7px;margin-right: 12px; padding: 4px; font-size: small;
	}
</style>
<!-- end join.css -->

<meta charset="UTF-8">
<title>회원가입</title>
<style>

</style>
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
	<!-- header end --
<!-- join -->
<br><br>
<form action="joinMember.do" name="myForm" method="POST" onsubmit="return(validate());">
	<div class="container-fluid"> 
		<div class="row">
			<div class="well center-block">
				<div class="well-header">
					<h3 class="text-center text-success"> 회원가입 </h3>
					<hr>
				</div>

				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-user"></i>
								</div>
								<input type="text" class="form-control" id="id" name="id" placeholder="아이디" oninput="check()">
								<p id="idchk"></p>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-lock"></i>
								</div>
								<input type="password" minlength="6" maxlength="20" placeholder="패스워드" oninput="check()" id="passwd" name="passwd" class="form-control">
								<p id="pwchk"></p>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-lock"></i>
								</div>
								<input type="password" minlength="6" maxlength="20" placeholder="패스워드 확인" oninput="check()" id="passwd2" name="passwd2" class="form-control">
								<p id="pwchk2"></p>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-user"></i>
								</div>
								<input type="text" placeholder="이름" oninput="check()" id="name" name="name" class="form-control">
								<p id="namechk"></p>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-12 col-xs-12 col-sm-12">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-phone"></i>
								</div>
								<input type="number" placeholder="핸드폰 번호  -없이 입력" oninput="check()" minlength="10" maxlength="12" class="form-control" name="phone" id="phone">
								<p id="phonechk"></p>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12 col-xs-12 col-sm-12">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-envelope"></i>
								</div>
								<input type="email" placeholder="이메일" oninput="check()" class="form-control" name="email" id="email">
								<p id="emailchk"></p>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12 col-xs-12 col-sm-12">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-list-alt"></i>
								</div>
								<div class="row">
								  <div class="col-md-12 col-xs-12 col-sm-12">
								    <div class="input-group">
								   	 <div class="col-md-11" style="padding:0px;">
								   	 	<input type="text" class="form-control" name="zipcode" placeholder="우편번호" oninput="check()">
								   	 </div>
								      <span class="input-group-btn">
								        <button class="btn btn-secondary" type="button" onclick="zipCheck()" 
								        style=" border-radius: 7px;margin-right: 12px; padding: 4px; font-size: small;">우편번호 찾기</button>
								      </span>
								    </div>
								  </div>
								</div>
								<input type="text" class="form-control" placeholder="주소" name="address" id="address">
								<p id="addchk"></p>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12 col-xs-12 col-sm-12">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-calendar"></i>
								</div>
								<input type="text" placeholder="생년월일  ex) 19950101" oninput="check()" name="birth" id="birth" class="form-control">
								<p id="birthchk"></p>
							</div>
						</div>
					</div>
				</div>

				<div class="row widget">
					<div class="col-md-12 col-xs-12 col-sm-12">
						<button type="button" onclick="location.href='/home'" class="btn btn-block">회원가입</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>
	
</body>
</html>