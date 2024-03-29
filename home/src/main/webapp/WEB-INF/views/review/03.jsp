<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<!-- notice -->
<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<!-- roco-popup -->
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<script>
	$(document).ready(function() {
		$(".readMore").click(function() {
			var This = $(this);

			$(this).next().toggle(function() {

			})
		});
	})
</script>
<script>
	function wrapWindowByMask() {
		//화면의 높이와 너비를 구한다.
		var maskHeight = $(document).height();
		var maskWidth = $(window).width();

		//문서영역의 크기 
		console.log("document 사이즈:" + $(document).width() + "*"
				+ $(document).height());
		//브라우저에서 문서가 보여지는 영역의 크기
		console.log("window 사이즈:" + $(window).width() + "*"
				+ $(window).height());

		//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
		$('#mask').css({
			'width' : maskWidth,
			'height' : maskHeight
		});

		//애니메이션 효과
		//$('#mask').fadeIn(1000);      
		$('#mask').fadeTo("slow", 0.5);
	}

	function popupOpen() {
		$('.layerpop').css("position", "absolute");
		//영역 가운에데 레이어를 뛰우기 위해 위치 계산 
		$('.layerpop').css(
				"top",
				(($(window).height() - $('.layerpop').outerHeight()) / 2)
						+ $(window).scrollTop());
		$('.layerpop').css(
				"left",
				(($(window).width() - $('.layerpop').outerWidth()) / 2)
						+ $(window).scrollLeft());
		//$('.layerpop').draggable();
		$('#layerbox').show();
	}

	function popupClose() {
		$('#layerbox').hide();
		$('#mask').hide();
	}

	function goDetail() {

		/*팝업 오픈전 별도의 작업이 있을경우 구현*/

		popupOpen(); //레이어 팝업창 오픈 
		wrapWindowByMask(); //화면 마스크 효과 
	}
</script>

<style>
.review-name {
	padding: 0% 5% 0% 5%;
}

.review-date {
	width: 17%;
}

.review-id {
	width: 14%;
}

.goreco {
	float: right;
	padding-top: 1%;
	padding-right: 2%;
}

.recolink {
	color: #303030;
}

.mapping {
	border: 1px solid;
	width: 63%;
	height: 100%;
	border-radius: 20px;
	float: left;
}

.place-dtail {
	float: right;
	width: 30%;
	height: 100%;
	margin-right: 5%;
}

.photo {
	border: 1px solid;
	height: 30%;
}

.place-name {
	border: 1px solid;
	height: 13%;
	border-top: white;
	text-align: center;
	padding: 7%;
	font-size: x-large;
	background-color: #9e9e9e63;
}

.place-loc {
	border: 1px solid;
	height: 25%;
	border-top: white;
	padding: 6% 4%;
	background-color: #f8f8f8;
}

.reco-reason {
	border: 1px solid;
	height: 32%;
	padding: 5% 7% 3% 7%;
	border-top: white;
	background-color: #f8f8f8;
}

.reco-dtail {
	padding: 3% 2% 0% 6%;
	height: 100%;
}

.tab-content {
	height: 600px;
}

body {
	font-family: "맑은 고딕"
}

/*-- POPUP common style S ======================================================================================================================== --*/
#mask {
	position: absolute;
	left: 0;
	top: 0;
	z-index: 999;
	background-color: #000000;
	display: none;
}

.mapping1 {
	border: 1px solid;
	width: 63%;
	height: 100%;
	float: left;
}

.place-dtail1 {
	float: right;
	width: 30%;
	height: 80%;
	margin-right: 3%;
}

.photo1 {
	border: 1px solid;
	height: 30%;
}

.place-name1 {
	border: 1px solid;
	height: 19%;
	border-top: white;
	text-align: center;
	padding: 8% 2% 2%;
	font-size: x-large;
	background-color: #9e9e9e63;
}

.place-loc1 {
	border: 1px solid;
	height: 28%;
	border-top: white;
	padding: 6% 4%;
	background-color: #f8f8f8;
}

.reco-reason1 {
	border: 1px solid;
	height: 48%;
	padding: 2% 7% 6% 7%;
	border-top: white;
	background-color: #f8f8f8;
}

.reco-dtail1 {
	padding: 2% 0% 0% 3%;
	height: 92%;
}

.tab-content1 {
	height: 604px;
}

.layerpop {
	display: none;
	z-index: 1000;
	border: 2px solid #ccc;
	background: #fff;
	cursor: pointer;
}

.layerpop_area .title {
	padding: 10px 10px 10px 10px;
	border: 0px solid #aaaaaa;
	background: #f1f1f1;
	color: #3eb0ce;
	font-size: 1.3em;
	font-weight: bold;
	line-height: 24px;
}

.layerpop_area .layerpop_close {
	display: block;
	top: 20px;
	right: 20px;
	float: right;
	background: transparent url(btn_exit_off.png) no-repeat;
	padding-top: 2%;
	color: #303030;
}

.layerpop_area .layerpop_close:hover {
	background: transparent url('btn_exit_on.png') no-repeat;
	cursor: pointer;
}

.pop-reason1 {
	margin: 8.48438px 0px 0px;
	border-radius: 7px;
	background-color: rgb(248, 248, 248);
	border: 0px;
	padding: 1% 0% 0% 1%;
	width: 274px;
	height: 108px;
	resize: none;
}

.layerpop_area .content {
	width: 96%;
	margin: 2%;
	color: #828282;
}

.place-search1 {
	padding: 3% 0% 2% 5%;
	float: left;
	width: 97%;
}
</style>
<body>

	<div class="container">

		<!-- tab menu -->
		<div class="tabbable">
			<ul class="nav nav-tabs" id="mytab" style="margin: 40px 0% 2%;">
				<li><a href="02"
					style="color: #303030; font-size: medium;"><b>후기</b></a></li>
				<li class="active"><a href="03" data-toggle="tab"
					aria-expanded="true" style="font-size: medium;"><b>맛집&관광지
							추천</b></a></li>
				<label class="goreco"><a
					onClick="javascript:goDetail('테스트');" class="recolink">추천하러가기☞</a></label>
			</ul>
			<div class="tab-content">
				<div class="reco-dtail">
					<div class="mapping">이미지가 들어갈 자리</div>
					<div class="place-dtail">
						<div class="photo">가게 이미지</div>
						<div class="place-name">
							<b>홍대 야도란</b>
						</div>
						<div class="place-loc">
							주소 : 서울특별시 마포구 올림픽대로 14길 휴먼 빌라 2층 <br>영업시간 : 11:00 ~ 23:00 <br>전화번호
							: 02 - 712 - 9354
						</div>
						<div class="reco-reason">
							<b>추천인 아이디: </b>
							<p class="reson-dtail"></p>
						</div>
					</div>
				</div>

			</div>
			<!-- tab-content end -->
		</div>
		<!-- tabbabble end -->

	</div>

	<!-- 팝업뜰때 배경 -->
	<div id="mask"></div>

	<!--Popup Start -->
	<div id="layerbox" class="layerpop"
		style="width: 1140px; height: 700px;">
		<article class="layerpop_area">
			<div class="tab-content1">
				<div class="place-search1">
					<input type="text" id="serchbox" placeholder="   검색어를 입력하세요."
						style="width: 35%; height: 36px; border-radius: 5px">
					<button type="button" value="search" class="btn btn-secondary"
						style="padding: 8px 4%; margin-bottom: 6px;">검색</button>
					<a href="javascript:popupClose();" class="layerpop_close"
						id="layerbox_close" style="padding: 0px;"> <i
						class="glyphicon glyphicon-remove"></i></a>
				</div>
				<div class="reco-dtail1">
					<div class="mapping1">이미지가 들어갈 자리</div>
					<div class="place-dtail1">
						<div class="photo1">가게 이미지</div>
						<div class="place-name1">
							<b>홍대 야도란</b>
						</div>
						<div class="place-loc1">
							주소 : 서울특별시 마포구 올림픽대로 14길 휴먼 빌라 2층 <br>영업시간 : 11:00 ~ 23:00 <br>전화번호
							: 02 - 712 - 9354
						</div>
						<div class="reco-reason1">
							<b>추천 이유</b> <br>
							<textarea rows="7" cols="37"
								placeholder="추천하시는 이유를 50자 이내로 적어주세요" class="pop-reason1"></textarea>
							<br> <a href="javascript:popupClose();"
								class="layerpop_close" id="layerbox_close">
								<button value="submit" type="button" class="btn btn-secondary">등록</button>
							</a>
						</div>
					</div>
				</div>

			</div>
			<!-- tab-content end -->
		</article>
	</div>
	<!--Popup End -->

</body>
</html>