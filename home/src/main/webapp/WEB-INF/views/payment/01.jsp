<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="/namgiyun.home/res/css/header.css">
<style>
html, body, .wrapper {
}

.steps {
	margin-top: -41px;
	display: inline-block;
	float: right;
	font-size: 16px
}

.step {
	float: left;
	background: white;
	padding: 7px 13px;
	border-radius: 1px;
	text-align: center;
	width: 100px;
	position: relative
}

.step_line {
	margin: 0;
	width: 0;
	height: 0;
	border-left: 16px solid #fff;
	border-top: 16px solid transparent;
	border-bottom: 16px solid transparent;
	z-index: 1008;
	position: absolute;
	left: 99px;
	top: 1px
}

.step_line.backline {
	border-left: 20px solid #f7f7f7;
	border-top: 20px solid transparent;
	border-bottom: 20px solid transparent;
	z-index: 1006;
	position: absolute;
	left: 99px;
	top: -3px
}

.step_complete {
	background: #357ebd
}

.step_complete a.check-bc, .step_complete a.check-bc:hover, .afix-1,
	.afix-1:hover {
	color: #eee;
}

.step_line.step_complete {
	background: 0;
	border-left: 16px solid #357ebd
}

.step_thankyou {
	float: left;
	background: white;
	padding: 7px 13px;
	border-radius: 1px;
	text-align: center;
	width: 100px;
}

.step.check_step {
	margin-left: 5px;
}

.ch_pp {
	text-decoration: underline;
}

.ch_pp.sip {
	margin-left: 10px;
}

.check-bc, .check-bc:hover {
	color: #222;
}

.SuccessField {
	border-color: #458845 !important;
	-webkit-box-shadow: 0 0 7px #9acc9a !important;
	-moz-box-shadow: 0 0 7px #9acc9a !important;
	box-shadow: 0 0 7px #9acc9a !important;
	background: #f9f9f9 url(../images/valid.png) no-repeat 98% center
		!important
}

.btn-xs {
	line-height: 28px;
}

/*login form*/
.login-container {
	margin-top: 30px;
}

.login-container input[type=submit] {
	width: 100%;
	display: block;
	margin-bottom: 10px;
	position: relative;
}

.login-container input[type=text], input[type=password] {
	height: 44px;
	font-size: 16px;
	width: 100%;
	margin-bottom: 10px;
	-webkit-appearance: none;
	background: #fff;
	border: 1px solid #d9d9d9;
	border-top: 1px solid #c0c0c0;
	/* border-radius: 2px; */
	padding: 0 8px;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
}

.login-container input[type=text]:hover, input[type=password]:hover {
	border: 1px solid #b9b9b9;
	border-top: 1px solid #a0a0a0;
	-moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
	-webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
}

.login-container-submit {
	/* border: 1px solid #3079ed; */
	border: 0px;
	color: #fff;
	text-shadow: 0 1px rgba(0, 0, 0, 0.1);
	background-color: #357ebd; /*#4d90fe;*/
	padding: 17px 0px;
	font-family: roboto;
	font-size: 14px;
	/* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#4787ed)); */
}

.login-container-submit:hover {
	/* border: 1px solid #2f5bb7; */
	border: 0px;
	text-shadow: 0 1px rgba(0, 0, 0, 0.3);
	background-color: #357ae8;
	/* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#357ae8)); */
}

.login-help {
	font-size: 12px;
}

.asterix {
	background: #f9f9f9 url(../images/red_asterisk.png) no-repeat 98% center
		!important;
}

/* images*/
ol, ul {
	list-style: none;
}

.hand {
	cursor: pointer;
	cursor: pointer;
}

.cards {
	padding-left: 0;
}

.cards li {
	-webkit-transition: all .2s;
	-moz-transition: all .2s;
	-ms-transition: all .2s;
	-o-transition: all .2s;
	transition: all .2s;
	background-image:
		url('//c2.staticflickr.com/4/3713/20116660060_f1e51a5248_m.jpg');
	background-position: 0 0;
	float: left;
	height: 32px;
	margin-right: 8px;
	text-indent: -9999px;
	width: 51px;
}

.cards .mastercard {
	background-position: -51px 0;
}

.cards li {
	-webkit-transition: all .2s;
	-moz-transition: all .2s;
	-ms-transition: all .2s;
	-o-transition: all .2s;
	transition: all .2s;
	background-image:
		url('//c2.staticflickr.com/4/3713/20116660060_f1e51a5248_m.jpg');
	background-position: 0 0;
	float: left;
	height: 32px;
	margin-right: 8px;
	text-indent: -9999px;
	width: 51px;
}

.cards .amex {
	background-position: -102px 0;
}

.cards li {
	-webkit-transition: all .2s;
	-moz-transition: all .2s;
	-ms-transition: all .2s;
	-o-transition: all .2s;
	transition: all .2s;
	background-image:
		url('//c2.staticflickr.com/4/3713/20116660060_f1e51a5248_m.jpg');
	background-position: 0 0;
	float: left;
	height: 32px;
	margin-right: 8px;
	text-indent: -9999px;
	width: 51px;
}

.cards li:last-child {
	margin-right: 0;
}
/* images end */

/*
 * BOOTSTRAP
 */
.container {
	border: none;
}

.panel-footer {
	background: #fff;
}

.btn {
	border-radius: 1px;
}

.btn-sm, .btn-group-sm>.btn {
	border-radius: 1px;
}

.input-sm, .form-horizontal .form-group-sm .form-control {
	border-radius: 1px;
}

.panel-info {
	border-color: #999;
}

.panel-heading {
	border-top-left-radius: 1px;
	border-top-right-radius: 1px;
}

.panel {
	border-radius: 1px;
}

.panel-info>.panel-heading {
	color: #eee;
	border-color: #999;
}

.panel-info>.panel-heading {
	background-image: linear-gradient(to bottom, #555 0px, #888 100%);
}

hr {
	border-color: #999 -moz-use-text-color -moz-use-text-color;
}

.panel-footer {
	border-bottom-left-radius: 1px;
	border-bottom-right-radius: 1px;
	border-top: 1px solid #999;
}

.btn-link {
	color: #888;
}

hr {
	margin-bottom: 10px;
	margin-top: 10px;
}

/** MEDIA QUERIES **/
@media only screen and (max-width: 989px) {
	.span1 {
		margin-bottom: 15px;
		clear: both;
	}
}

@media only screen and (max-width: 764px) {
	.inverse-1 {
		float: right;
	}
}

@media only screen and (max-width: 586px) {
	.cart-titles {
		display: none;
	}
	.panel {
		margin-bottom: 1px;
	}
}

.form-control {
	border-radius: 1px;
}

@media only screen and (max-width: 486px) {
	.col-xss-12 {
		width: 100%;
	}
	.cart-img-show {
		display: none;
	}
	.btn-submit-fix {
		width: 100%;
	}
}
/*
@media only screen and (max-width: 777px){
    .container{
        overflow-x: hidden;
    }
}*/
</style>

<!-- header -->
<link rel="stylesheet" href="res/css/header.css">
<!-- end header -->

<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<body>


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
              		<li><a href="/home/04">House & Room</a></li>
                <c:if test="${null ne user.userName}">
             	    <li><a href="/namgiyun.home/01">Mypage</a></li>
               </c:if>
               <li><a href="/namgiyun.home/customerservice/04">Help</a></li>     
            </ul>
         </div>
      </div>
   </nav>
   <!-- header end -->
   

	<div class="container wrapper" style="height: 900px; margin-top: 3%;">
	<div><h2>결제 정보 입력</h2></div>
		<hr>
		<div class="row cart-body" style="width: 990px; margin-top: 9%;">
			<form class="form-horizontal" method="post" action="">
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-md-pull-6 col-sm-pull-6" style="float: right;position: unset;width: 90%;">
					<!--SHIPPING METHOD-->
					<div class="panel panel-info" style="border-radius: 1px; border: none; webkit box-shadow: unset;">
						<div class="panel-body">
							<div class="form-group">
								<div class="col-md-12">
									<strong>결제 수단</strong>
								</div>
								<div class="col-md-12">
									<select id="CreditCardType" name="CreditCardType"
										class="form-control">
										<option value="5">결제수단을 입력해주세요.</option>
										<option value="6">체크/신용 카드&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Check card</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-6 col-xs-12">
									<strong>이름</strong> <input type="text"
										name="first_name" class="form-control" value="" placeholder="길동"/>
								</div>
								<div class="span1"></div>
								<div class="col-md-6 col-xs-12">
									<strong>성</strong> <input type="text" name="last_name"
										class="form-control" value="" placeholder="홍"/>
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-6 col-xs-12">
									<strong>카드번호</strong> <input type="text"
										name="first_name" class="form-control"  name="car_number" value="" placeholder="카드번호 16자리를 '-'없이 입력해주세요"/>
								</div>
								<div class="span1"></div>
								<div class="col-md-6 col-xs-12">
									<strong>CVV</strong> <input type="text" name="last_name"
										class="form-control" value="" placeholder="카드 뒤 세자리를 입력해주세요."/>
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-12">
									<strong>만료일</strong>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
									<select class="form-control" name="">
										<option value="">Month</option>
										<option value="01">01</option>
										<option value="02">02</option>
										<option value="03">03</option>
										<option value="04">04</option>
										<option value="05">05</option>
										<option value="06">06</option>
										<option value="07">07</option>
										<option value="08">08</option>
										<option value="09">09</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
									</select>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
									<select class="form-control" name="">
										<option value="">Year</option>
										<option value="2015">2019</option>
										<option value="2016">2020</option>
										<option value="2017">2021</option>
										<option value="2018">2022</option>
										<option value="2019">2023</option>
										<option value="2020">2024</option>
										<option value="2021">2025</option>
										<option value="2022">2026</option>
										<option value="2023">2027</option>
										<option value="2024">2028</option>
										<option value="2025">2029</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-6 col-xs-12">
									<strong>청구지 정보</strong> <input type="text"
										name="first_name" class="form-control" value="" placeholder="우편번호"/>
								</div>
								<div class="span1"></div>
								<div class="col-md-6 col-xs-12">
									<strong>국가/지역</strong> <input type="text" name="last_name"
										class="form-control" value="" placeholder="한국"/>
								</div>
							</div>

							<div class="form-group">
								<div class="col-md-12">
									<span>숙소 이용규칙, 환불정책, 게스트 환불정책, 및 분할 결제 약관에 동의하며, 
									숙박세 및 서비스 <br>수수료를 포함하여 표시된 총액을 결제하는 데 동의합니다.
									 이제 쌍용비앤비는 본 지역에서 <br>정부가 부과하는 숙박세를 징수하고 납부합니다.</span>
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-6 col-sm-6 col-xs-12">
									<button type="button" class="btn btn-primary btn-submit-fix" onclick="location.href='/namgiyun.home/userReservation'"
									style="padding: 20px;padding: 20px;font-size: larger; 
									color: #303030; background-color: #3c763d6b;  border: none;">예약 요청하기</button>
								</div>
							</div>
						</div>
					</div>
					<!--SHIPPING METHOD END-->
					</div>
			</form>
		</div>
	</div>
</body>
</html>