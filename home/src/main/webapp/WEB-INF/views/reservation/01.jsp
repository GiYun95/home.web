<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- header.css -->
<link rel="stylesheet" href="res/css/header.css">
<!-- end header.css -->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>


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
   
	<br><br>

	<div class="content">
		<div class="container">
			<div class="row">

				<div
					class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 mb30 text-center">
					
				</div>
			</div>
			<div class="row">

				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 mb30">
					<div class="tour-booking-form">
						<form>
							<div class="row">
								<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
									<h3 class="tour-form-title">꼬북이 호텔</h3>
									<hr>
								</div>
								<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
									<div class="form-group">
										<label class="control-label required" for="select">체크인</label>
										<div class="input-group">
											<input id="datepicker" name="datepicker" type="Date"
												placeholder="Date" class="form-control" value=""> <span
												class="input-group-addon"><i class="fa fa-calendar"></i></span>
										</div>
									</div>
								</div>
								<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
									<div class="form-group">
										<label class="control-label" for="datepicker">인원수</label>
										<div class="select">
											<select id="select" name="select" class="form-control">
												<option value="">Number of Persons:</option>
												<option value="">1</option>
												<option value="">2</option>
												<option value="">3</option>
											</select>
										</div>
									</div>
								</div>
								<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
									<div class="form-group">
										<label class="control-label required" for="select">체크아웃</label>
										<div class="input-group">
											<input id="datepicker" name="datepicker" type="Date" value=""
												placeholder="Date" class="form-control" required> <span
												class="input-group-addon"><i class="fa fa-calendar"></i></span>
										</div>
									</div>
								</div>

								<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
									<div class="form-group">
										<label class="control-label required" for="select">가격</label>
										<div class="input-group">
											<input id="datepicker" name="datepicker" type="number" placeholder="39,000" class="form-control"> <span
												class="input-group-addon"><i class="fa fa-calendar"></i></span>
										</div>
									</div>
								</div>
		
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt30">
								<br>
									<h3 class="tour-form-title">예약자 정보</h3>
									<hr>
								</div>
								<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
									<div class="form-group">
										<label class="control-label" for="name">이름</label> <input
											id="name" type="text" placeholder="파이리" class="form-control"
											required>
									</div>
								</div>
								<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
									<div class="form-group">
										<label class="control-label" for="email">이메일</label> <input
											id="email" type="text" placeholder="xxxx@xxxx.xxx"
											class="form-control" required>
									</div>
								</div>
								<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
									<div class="form-group">
										<label class="control-label" for="phone">전화번호</label> <input
											id="phone" type="text" placeholder="010-7732-1458"
											class="form-control" required>
									</div>
								</div>
								<br>
								<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
									<div class="form-group">
										<label class="control-label" for="textarea">호스트에게 하고
											싶은 말</label>
										<textarea class="form-control" id="textarea" name="textarea"
											rows="4" placeholder="Write Your Requirements"></textarea>
									</div>
								</div>
								<center>
									<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
										<button type="submit" name="singlebutton"
											class="btn btn-primary" style="width: 70px;" onclick="location.href='payment/01'">다음</button>
									</div>
								</center>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- 
			<div class="row">
				<div
					class="col-lg-12 col-md-12 col-sm-12 col-xs-12  text-center mt20">
					Created for <a href="https://goo.gl/9e2gny" target="_blank">easetemplate</a>
				</div>
			</div>
			 -->
		</div>
	</div>
</body>
</html>