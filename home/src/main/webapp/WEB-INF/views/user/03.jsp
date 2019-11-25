<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- header.css -->

<link rel="stylesheet" href="res/css/header.css">
<!-- end header.css -->


<!------ Include the above in your HEAD tag ---------->

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- header -->
	<link rel="stylesheet" href="res/css/header.css">
	<!-- end header -->
<body>
	<!-- header -->
   <nav class="navbar"  style="padding-right:3px;">
      <div class="container">
      <!--  
         <div class="navbar-header">
            <a class="navbar-brand" href="/home"><img src="res/img/logo.png"></a>
         </div>
		-->
		<div class="navbar-header">
				<a class="navbar-brand" href="/namgiyun.home"><i class="glyphicon glyphicon-home"></i></a>
			</div>
			
         <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <c:if test="${null ne user.userName}">
                 	<li><a href="/namgiyun.home/logout.do">${user.userName}님 환영합니다.</a></li>
               	</c:if>
               	<c:if test="${null eq user.userName}">
               		<li><a href="/namgiyun.home/login">Login</a></li>
               	</c:if>
              		<li><a href="/namgiyun.home/04">House & Room</a></li>
                <c:if test="${null ne user.userName}">
             	    <li><a href="/namgiyun.home/01">Mypage</a></li>
               </c:if>
               <li><a href="/namgiyun.home/customerservice/04">Help</a></li>     
            </ul>
         </div>
      </div>
   </nav>
   <!-- header end -->
	
	<!-- menu -->
	<section>
	<div class="container">

		<!-- tab menu -->
		<div class="tabbable">
			<ul class="nav nav-tabs" id="mytab" style="margin: 40px 0% 2%;">
				<li><a href="01" style="font-size: medium;"><b>내 숙소 등록</b></a></li>
				<li><a href="02" data-toggle="tab" aria-expanded="true"
					style="color: #303030; font-size: medium;"><b>내 숙소 보기</b></a></li>
				<li><a href="userReservation" data-toggle="tab"
					aria-expanded="true" style="color: #303030; font-size: medium;"><b>예약
							확인</b></a></li>
				<li><a href="hostReservation" data-toggle="tab"
					aria-expanded="true" style="color: #303030; font-size: medium;"><b>호스트
							전용 예약내역</b></a></li>
				<li><a href="customerservice/01"
					data-toggle="tab" aria-expanded="true"
					style="color: #303030; font-size: medium;"><b>문의내역</b></a></li>
				<li class="active"><a href="userInfo" data-toggle="tab" aria-expanded="true"
					style="color: #303030; font-size: medium;"><b>회원정보수정</b></a></li>
			</ul>
		</div>
		<!-- tab menu end -->
		
		
		<div style="width: 520px; float: left;"></div><br><br>
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<section>
					<h3 class="" style="text-align: left;">
						<span style="margin-left: 0px;">회원정보</span>
					</h3>
					<hr>
					<form class="form-horizontal" method="post" name="signup"
						id="signup" enctype="multipart/form-data">

						<div class="form-group">
							<label class="control-label col-sm-2">이름</label>
							<div class="col-md-5 col-sm-8">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-user"></i></span> <input type="text"
										class="form-control" name="name" id="name" value="">
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2">비밀번호</label>
							<div class="col-md-5 col-sm-8">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-lock"></i></span> <input type="password"
										class="form-control" name="password" id="password" value="">
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2">이메일</label>
							<div class="col-md-8 col-sm-9">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-envelope"></i></span> <input type="email"
										class="form-control" name="emailid" id="emailid" value="">
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2">휴대폰 번호</label>
							<div class="col-md-8 col-sm-9">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-phone"></i></span> <input type="number"
										class="form-control" name="phone" id="phone" value="">
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2">생년월일</label>
							<div class="col-md-8 col-sm-9">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-phone"></i></span> <input type="number"
										class="form-control" name="phone" id="phone" value=""
										readonly="readonly">
								</div>
							</div>
						</div>
						<!-- 
						<div class="form-group">
							<label class="control-label col-sm-2">주소</label>
							<div class="col-md-8 col-sm-9">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-list-alt"></i></span> <input type="text"
										readonly="readonly" class="form-control" name="zipcode"
										oninput="check()"><span class="input-group-btn">
										<button class="btn btn-secondary" type="button"
											onclick="zipCheck()"
											style="border-radius: 7px; margin-left: 12px; padding: 4px; font-size: small;">우편번호
											찾기</button>
									</span>
								</div>
								<input type="text" class="form-control" name="address"
									id="address" readonly="readonly">
								<p id="addchk">
							</div>
							 -->
						</div>
					</form>
					<center>
						<button class="btn btn-secondary" type="button" onclick="location.href='/namgiyun.home'"
							style="border-radius: 7px; margin-left: 12px; padding: 4px; font-size: small; width: 60px;">
							<b>취 소</b></b>
						</button>
						<button class="btn btn-secondary" type="button" onclick="location.href='/namgiyun.home'"
							style="border-radius: 7px; margin-left: 18px; padding: 4px; font-size: small; width: 60px;">
							<b>수 정</b>
						</button>
					</center>
				</div>
			</div>
		</div>
</body>
</html>