<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숙소 숙박 예약은 쌍용비앤비 - 숙소 보기</title>
</head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- header -->
<link rel="stylesheet" href="res/css/header.css">
<!-- scroll moving sidebar -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
<script>
//scroll moving sidebar
	$(document).ready(function () {  
        var top = $('#adside').offset().top - parseFloat($('#adside').css('marginTop').replace(/auto/, 0));
        $(window).scroll(function (event) {
        	var y = $(this).scrollTop();
       		if (y >= top) {      		
        	    $('#adside').addClass('fixed');
        	} else {
           		$('#adside').removeClass('fixed');
        	}
  		});
	});
</script>
<style>
#adside.fixed {
	position:fixed;
	width: 13.5%;
	top: 0;
	margin-top:30px;
}
.previewImg{
	margin-bottom: 2%;
}
.form-control{
	padding:20px;
	margin: inherit;
	width: 84%;
}
.form-group{
	border: 1px solid gray;
}
.form-group .btn-success{
    margin-top: 10%;
    margin-bottom: 10%;
    width: 84%;
}
.info{
	text-align: center;
	margin-bottom: 2%;
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
   
	
	<!-- body: 숙소리스트 -->
	<section>
		<div class="container">
			<hr>
			<h3>숙소  리스트</h3>
			  <div class="col-md-9 homeList">
			    <div class="homeImg">
			      <a href="05.html"><img class="col-md-4 previewImg" width="200" height="350"></a>
			    </div>
			    <div class="homeImg">
			      <a href="05.html"><img class="col-md-4 previewImg" width="200" height="350"></a>
			    </div>
			    <div class="homeImg">
			      <a href="05.html"><img class="col-md-4 previewImg" width="200" height="350"></a>
			    </div>
			    <div class="info col-md-4">
			      <p>방 1개 침대 1개</p>
			      <p class="text-danger"><b>★ 4.8</b></p>
			      <label>Jerry's house</label>
			    </div>
			    <div class="info col-md-4">
			      <p>방 1개 침대 2개</p>
			      <p class="text-danger"><b>★ 4.6</b></p>
			      <label>경복궁 5분거리 100년 넘은 한옥</label>
			    </div>
				<div class="info col-md-4">
			      <p>방 2개 침대 2개</p>
			      <p class="text-danger"><b>★ 4.5</b></p>
			      <label>[INSADONG] Hyunhee's house</label>
			    </div>
			  </div>
			  <div class="col-md-3">
			    <div id="adsideWrapper">
		  		  <div id="adside">
				    <form method="post" name="">
				      <div class="form-group" align="center">
				   	    <h3><span class="glyphicon glyphicon-search"></span> 상세 검색</h3>
				        <input type="text" class="form-control" id="location" placeholder="목적지">
				        <input type="date" class="form-control" id="checkIn" placeholder="체크인 날짜">
				        <input type="date" class="form-control" id="checkOut" placeholder="체크아웃 날짜">
				        <input type="number" class="form-control" id="guests" placeholder="인원 수" min="1">
				        <button type="submit" class="btn btn-lg btn-success btn-block">검색</button>
				      </div>	   
				    </form>
				  </div>
				</div>
			  </div>
			  <div class="col-md-9 homeList">
			    <div class="homeImg">
			      <a href="05.html"><img class="col-md-4 previewImg" width="200" height="350"></a>
			    </div>
			    <div class="homeImg">
			      <a href="05.html"><img class="col-md-4 previewImg" width="200" height="350"></a>
			    </div>
			    <div class="homeImg">
			      <a href="05.html"><img class="col-md-4 previewImg" width="200" height="350"></a>
			    </div>
			    <div class="info col-md-4">
			      <p>방 1개 침대 1개</p>
			      <p class="text-danger"><b>★ 4.8</b></p>
			      <label>Mapo basecamp</label>
			    </div>
			    <div class="info col-md-4">
			      <p>방 1개 침대 2개</p>
			      <p class="text-danger"><b>★ 4.6</b></p>
			      <label>경복궁 5분거리 100년 넘은 한옥</label>
			    </div>
				<div class="info col-md-4">
			      <p>방 2개 침대 2개</p>
			      <p class="text-danger"><b>★ 4.5</b></p>
			      <label>[INSADONG] Hyunhee's house</label>
			    </div>
			  </div>
			  <div class="col-md-9 homeList">
			    <div class="homeImg">
			      <a href="05.html"><img class="col-md-4 previewImg" width="200" height="350"></a>
			    </div>
			    <div class="homeImg">
			      <a href="05.html"><img class="col-md-4 previewImg" width="200" height="350"></a>
			    </div>
			    <div class="homeImg">
			      <a href="05.html"><img class="col-md-4 previewImg" width="200" height="350"></a>
			    </div>
			    <div class="info col-md-4">
			      <p>방 1개 침대 1개</p>
			      <p class="text-danger"><b>★ 4.8</b></p>
			      <label>Mapo basecamp</label>
			    </div>
			    <div class="info col-md-4">
			      <p>방 1개 침대 2개</p>
			      <p class="text-danger"><b>★ 4.6</b></p>
			      <label>경복궁 5분거리 100년 넘은 한옥</label>
			    </div>
				<div class="info col-md-4">
			      <p>방 2개 침대 2개</p>
			      <p class="text-danger"><b>★ 4.5</b></p>
			      <label>[INSADONG] Hyunhee's house</label>
			    </div>
			  </div>
			  <br>
   		</div>
	    <br>
	</section>
	<!-- body: 숙소리스트 end -->
	
</body>
</html>