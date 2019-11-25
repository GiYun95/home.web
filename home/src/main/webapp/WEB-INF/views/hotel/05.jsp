<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숙소 숙박 예약은 쌍용비앤비 - 숙소 검색</title>

<!-- Main -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- Main -->

<!-- header -->
<link rel="stylesheet" href="res/css/header.css">
<!-- end header -->
<style>
.jumbotron{
	height: 400px;
}
.form-inline{
	margin-top: 15%;
}
</style>
</head>
<body>
	<!-- body: 배너+숙소검색 -->
	<section class="jumbotron text-center">
		<form class="form-inline">
			<div class="form-group">
				<label for="location">목적지 </label>&nbsp; <input type="text"
					class="form-control" id="location" placeholder="목적지">
			</div>
			&nbsp;&nbsp;
			<div class="form-group">
				<label for="date">날짜 </label>&nbsp; <input type="date"
					class="form-control" id="date" placeholder="YYYY/MM/DD"> -
				<input type="date" class="form-control" id="date"
					placeholder="YYYY/MM/DD">
			</div>
			&nbsp;&nbsp;
			<div class="form-group">
				<label for="number">인원 수 </label>&nbsp; <input type="number"
					class="form-control" id="number">
			</div>
			&nbsp;&nbsp;&nbsp;
			<button type="submit" class="btn btn-outline-dark">
				<b>CHECK</b>
			</button>
		</form>
	</section>
	<!-- body: 배너+숙소검색 end -->
</body>
</html>