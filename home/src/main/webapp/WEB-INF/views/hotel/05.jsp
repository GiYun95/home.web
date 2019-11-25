<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>숙소 숙박 예약은 쌍용비앤비 - 숙소 보기</title>
</head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- header -->
<link rel="stylesheet" href="res/css/header.css">
<!-- icon -->
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<!-- scroll -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script>
    $(window).scroll(function (event) {
        var y = $(this).scrollTop();
        console.log(top)
        console.log(y)
        if ( y <= 1600 && y >=600) {
        	$('#adside').removeClass('stick');
            $('#adside').addClass('fixed');
        }else if(y < 600){
    	   $('#adside').removeClass('fixed');
    	   $('#adside').removeClass('stick');
       }else{
    	   $('#adside').removeClass('fixed');
    	   $('#adside').addClass('stick');
       }
    });
//image big click event
/*     $(document).on("click",".previewImgList img",function(){
		var path = $(this).attr('src')
		showImage(path);
	});
    
	function showImage(fileCallPath){
		$(".bigPictureWrapper").css("display","flex").show();
		$(".bigPicture")
		//.html("<img src='"+fileCallPath+"'>")
	}
		  
	$(".bigPictureWrapper").on("click", function(e){
		$(".bigPicture").animate({opacity: '0'}, 300);
		setTimeout(function(){
		    $('.bigPictureWrapper').hide();
		    $(".bigPicture").animate({opacity: '1'}, 100);
		}, 300);
	}); */
</script>
<style>
.bigPictureWrapper {
	position: absolute;
	display: none;
	justify-content: center;
	align-items: center;
	top:0%;
	width:100%;
	height:100%;
	z-index: 100;
	background:rgba(255,255,255,0.5);
}
.bigPicture {
	position: relative;
	display:flex;
	justify-content: center;
	align-items: center;
}
#adside{
	width: 600px;
}
#adside.fixed {
	position:fixed;
	top: 0;
	margin-top:10px;
}
.stick{
	position:absolute;
	top:1000px;
}
.left{
	margin-top: 2%;
	margin-bottom: 4%;
}
/* .right{

} */
p{
	margin: 3%;
	font-size: larger;
}
.form-control{
	padding:20px;
}
#checkIn{
	float: left;
	width: auto;
}
#checkOut{
	width: auto;
}
.form-group{
	border: 1px solid gray;
	padding: 5%;
    margin: 10%;
}
.form-group .btn-success{
	margin: auto;
    margin-top: 10%;
    margin-bottom: 10%;
}
.svg-inline--fa.fa-w-18 {
    width: 1.25em;
}
.svg-inline--fa.fa-w-16 {
    width: 1.25em;
}
.location label{
	margin-left: 10%;
    margin-top: 3%;
}
.review-title{
   width: 583px;
   margin-bottom: 25px;
   margin-top: 25px;
}

.title-detail{
    float: left;
    align-content: center;
    margin: 15px;
    border: 1px solid;
    border-radius: 10px;
    padding: 10px 50px 10px 50px;
    background-color: #4caf5033;
    border-color: #4caf508a;
}
.review-dtail{
   width: 584px;
}
.review-dtail textarea{
   border-radius: 15px;
   padding: 20px;
}
.review-btn{
   width: 32%;
}
.btn-dtail{
   float: right;
   margin-top: 10px;
}
b{
   font-size: large;
}
.review-info{
   width: 40%;
   float:left;
}
</style>

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
				<a class="navbar-brand" href="/home"><i class="glyphicon glyphicon-home"></i></a>
			</div>
			
         <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <c:if test="${null ne user.userName}">
                 	<li><a href="/home/logout.do">${user.userName}님 환영합니다.</a></li>
               	</c:if>
               	<c:if test="${null eq user.userName}">
               		<li><a href="/home/login">Login</a></li>
               	</c:if>
              		<li><a href="/home/04">House & Room</a></li>
                <c:if test="${null ne user.userName}">
             	    <li><a href="/home/01">Mypage</a></li>
               </c:if>
               <li><a href="/home/customerservice/04">Help</a></li>     
            </ul>
         </div>
      </div>
   </nav>
   <!-- header end -->
   
   
   
	<div class='bigPictureWrapper'>
		<div class='bigPicture'>
		</div>
	</div>
	<div class="container">
	  <hr>
	  <div class="previewImgList">
	    <a><img class="col-md-4 previewImg" width="400" height="400"></a>
	    <a><img class="col-md-4 previewImg" width="400" height="400"></a>
	    <a><img class="col-md-4 previewImg" width="400" height="400"></a>
	  </div>
	  <div class="col-md-6 left">
	    <!-- front -->
	    <div class="" id="">
	      <h1><strong>Jerry's house</strong>&nbsp;&nbsp;&nbsp;&nbsp;<small>Jerry</small></h1>
	      <p>서울특별시</p>
	      <p>인원 6명&nbsp; 침실 3개&nbsp; 침대 3개&nbsp; 욕실 2개</p><hr>
	    </div>
		<!-- front end -->
	    <!-- amenities -->
	    <div class="amenities" id="">
	      <h3><strong>편의시설</strong></h3>
	      <p><i class="fas fa-wifi"></i> 무선 인터넷</p>
	      <p><i class="fas fa-bath"></i> 욕조</p>
	      <p><i class="fas fa-dumbbell"></i> 헬스장</p>
	      <p><i class="fas fa-desktop"></i> TV</p>
	      <p><i class="fas fa-swimming-pool"></i> 수영장</p>
	      <p>체크인 전 짐을 미리 숙소에 맡기실 수 있습니다.</p>
	    </div><hr>
	    <!-- amenities end -->
	    <!-- homeInfo -->
	    <div class="homeInfo">
	      <h3><strong>숙소</strong></h3>
	      <p>홍대의 떠들썩한 분위기 사이에서 차분히 쉴 곳을 찾으신다면 저희 집으로 오세요.</p>
	      <p>쇼핑 거리나 유명한 가게들과 매우 가까워요.</p>
	      <p>홍대입구 9번 출구에서 7분 거리에 있습니다.</p>
	      <p>모든 침구는 호스트가 직접 깨끗하게 관리해서 쾌적하고, 문의에 대한 답변은 언제나 빠르게 드리고 있습니다 :)</p>
	    </div><hr>
	    <!-- homeInfo end -->
	    <!-- location -->
	    <div class="location">
	      <h3><strong>지역</strong></h3>
	      <img class="col-md-12 previewImg" hspace="20" width="300" height="300">
	      <label>정확한 위치 정보는 예약이 확정된 후 알려드립니다.</label>
	    </div><hr>
	    <!-- location end -->
	    <!-- review -->
	    <iframe src="review/01" width="600" height="350" frameborder="0"></iframe>
	    <iframe src="review/02" width="1200" height="770" frameborder="0"></iframe>
	    <!-- review end -->
	  </div>
	  <!-- col-md-6 left end -->
	  <!-- col md-6 right -->
	  <div class="col-md-6 right">
	    <div id="adsideWrapper">
		  <div id="adside">
	        <form method="post" name="">
	          <div class="form-group">
	            <h3>가격을 알아보세요</h3><hr>
	            <p>날짜</p>
	            <input type="date" class="form-control" id="checkIn" placeholder="체크인 날짜">
	            <input type="date" class="form-control" id="checkOut" placeholder="체크아웃 날짜">
	            <p>인원 수</p>
	            <input type="number" class="form-control" id="guests" placeholder="게스트 1명" min="1">
	            <button type="button" class="btn btn-lg btn-success btn-block" onclick="location.href='booking'">예약</button>
	          </div>
	        </form>
		  </div>
        </div>
	  </div>
	  <!-- col-md-6 right end -->
	</div>
	<!-- container end -->
</body>
</html>