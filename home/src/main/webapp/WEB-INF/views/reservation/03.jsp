<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- header.css -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
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
               <li><a href="namgiyun.home/customerservice/04">Help</a></li>     
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
				<li class="active"><a href="hostReservation" data-toggle="tab"
					aria-expanded="true" style="color: #303030; font-size: medium;"><b>호스트
							전용 예약내역</b></a></li>
				<li><a href="customerservice/01" data-toggle="tab"
					aria-expanded="true" style="color: #303030; font-size: medium;"><b>문의내역</b></a></li>
				<li><a href="userInfo" data-toggle="tab" aria-expanded="true"
					style="color: #303030; font-size: medium;"><b>회원정보수정</b></a></li>
			</ul>
		</div>
	</div>
	</section>
	<!-- tab menu end -->




		<div class="container">
			<div class="row">
				<h3 style="margin-left: 18px;">
					<b>예약내역</b>
				</h3>
				<hr>
			</div>
			<div class="row">
				<div class="col-12">
					<div class="table-responsive">
						<table class="table table-striped">
							<thead>
								<tr>
									<th scope="col"></th>
									<th scope="col">숙소</th>
									<th scope="col" class="text-center">예약자</th>
									<th scope="col" class="text-center">체크인/체크아웃</th>
									<th scope="col" class="text-center">예약날짜</th>
									<th scope="col" class="text-center">결제금액</th>
									<th scope="col" class="text-center">예약현황</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td style="width: 210px;"><a href="05"><div
												style="width: 180px; height: 120px; border: 1px solid;"></div>
											<img src="" width="180px;"></a></td>
									<td><h3>쌍용게스트하우스</h3>★★★★☆<br>
										<h4>
											호스트:<span style="font-size: 0.9em; color: gray;">
												&nbsp;<a href="#">꼬북이</a>
											</span>
										</h4></td>
									<td style="text-align: center;"><br>
										<h4>유봉이</h4> <b>010-1234-1234</b></td>
									<td style="text-align: center;"><br> <br>
										<h4>2019.11.12 ~ 2019.11.13</h4></td>
									<td style="text-align: center;"><br> <br>
										<h4>2019.11.11</h4></td>
									<td style="text-align: center;"><br> <br>
										<h4>39,800원</h4></td>
									<td style="text-align: center;"><br> <br>
										<h4>승인 대기</h4></td>
									<td class="text-right"><br> <br>
										<button class="glyphicon glyphicon-ok" style="height: 40px;"></button></td>
								</tr>
								<tr>
									<td style="width: 210px;"><a href="05"><div
												style="width: 180px; height: 120px; border: 1px solid;"></div>
											<img src="" width="180px;"></td>
									<td><h3>그랜드하얏트</h3>★★☆☆☆<br>
										<h4>
											호스트:<span style="font-size: 0.9em; color: gray;">
												&nbsp;<a href="#">파이리</a>
											</span>
										</h4></td>
									<td style="text-align: center;"><br>
										<h4>기봉이</h4> <b>010-5959-5959</b></td>
									<td style="text-align: center;"><br> <br>
										<h4>2018.05.26 ~ 2018.05.28</h4></td>
									<td style="text-align: center;"><br> <br>
										<h4>2018.05.05</h4></td>
									<td style="text-align: center;"><br> <br>
										<h4>73,900원</h4></td>
									<td style="text-align: center;"><br> <br>
										<h4>결제 완료</h4></td>
									<td class="text-right"><br> <br>
										<button class="glyphicon glyphicon-ok" style="height: 40px;"></button></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

		<div></div>
		<div class="col-md-12">
			<iframe src="calender" height="810px;" width="100%;" frameborder="0"></iframe>
		</div>
</body>
</html>