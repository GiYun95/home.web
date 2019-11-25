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
<script>
	$(document).ready(function() {
		$(".readMore").click(function() {
			var This = $(this);

			$(this).next().toggle(function() {

			})
		});
	})
</script>
<style>
body{
	width: min-content;
    height: min-content;
}
.notice:first-child {
	margin-top: 10px;
}

.notice {
	padding: 15px;
	background-color: #fafafa;
	border-left: 6px solid #7f7f84;
	margin-bottom: 10px;
	-webkit-box-shadow: 0 5px 8px -6px rgba(0, 0, 0, .2);
	-moz-box-shadow: 0 5px 8px -6px rgba(0, 0, 0, .2);
	box-shadow: 0 5px 8px -6px rgba(0, 0, 0, .2);
	border-radius: 13px;
}

.notice-sm {
	padding: 10px;
	font-size: 80%;
}

.notice-lg {
	padding: 35px;
	font-size: large;
}

.notice-success {
	border-color: #80D651;
}

.notice-success>strong {
	color: #80D651;
}

.notice-info {
	border-color: #45ABCD;
}

.notice-info>strong {
	color: #45ABCD;
}

.notice-warning {
	border-color: #FEAF20;
}

.notice-warning>strong {
	color: #FEAF20;
}

.notice-danger {
	border-color: #d73814;
}

.notice-danger>strong {
	color: #d73814;
}

.notice>.desc {
	display: none;
}

.readMore {
	cursor: pointer;
	width: 1140px;
	padding: 0px;
}

.review-name {
	padding: 0% 10.5% 0% 0%;
	width: 730px;
}

.review-date {
	width: 17%;
}

.review-id {
	width: 14%;
}

.review-title {
	text-align: left;
	font-weight: bold;
}

.review-user {
	text-align: right;
}

.star-score {
	border: 1px solid;
	padding-bottom: 1%;
	border-color: #9e9e9e;
	margin-bottom: 2%;
	border-radius: 13px;
}

.score {
	height: 45px;
}

.star {
	float: left;
	padding: 0.5% 5% 0% 5%;
	width: 30%;
}

.search {
	padding: 1% 0% 1% 5%;
	float: right;
	width: 39%;
}
.review-ctr{
	text-align: right;
    padding-right: 7%;
}
.dtail-dtail{
	float: left;
    margin-left: 5.2%;
}
.dtail-id{
	float: right;
  	margin-right: 49px;
}
</style>
<body>

	<div class="container">

		<!-- tab menu -->
		<div class="tabbable">
			<ul class="nav nav-tabs" id="mytab" style="margin: 40px 0% 2%;">
				<li class="active"><a href="02" style="font-size: medium;"><b>후기</b></a></li>
				<li><a href="03" data-toggle="tab"
					aria-expanded="true" style="color:#303030; font-size: medium;"><b>맛집&관광지 추천</b></a></li>
			</ul>
			<div class="star-score">
				<div class="score">
					<div class="star">
						<img><span
							style="font-size: xx-large; padding: 0% 15%; padding: 5% 15% 0%;">3.8</span>
					</div>
					<div class="search">
						<input type="text" id="serchbox" placeholder="   검색어를 입력하세요."
							style="width: 80%; height: 36px; border-radius: 5px; padding: 3% 2% 2% 2%;">
						<button type="button" value="search" class="btn btn-secondary"
							style="padding: 8px 4%; margin-bottom: 6px;">검색</button>
					</div>
				</div>
			</div>
			<div class="tab-content">
				<div class="main-title">
					<table class="table table-hover"
						style="text-align: center; margin: 0px;">
						<tbody>
							<tr>
								<td class="review-title" style="padding-left: 7%;">글 제목</td>
								<td class="review-user"
									style="padding-left: 11%; font-weight: bold;">글쓴이</td>
								<td style="width: 24%; font-weight: bold;">작성일자</td>
							</tr>
							<tr>

							</tr>
						</tbody>
					</table>
				</div>
				<div class="tab-pane active" id="tab2">

					<div class="review-con">
						<div class="notice">
							<table class="readMore">
								<tr>
									<td class="glyphicon glyphicon-chevron-down"></td>
									<td class="review-name"><b>개조아여</b></td>
									<td class="review-id">shw9612</td>
									<td class="review-date">2019.02.09</td>
								</tr>
							</table>
							<div class="desc">
								<br>
								<p class="dtail-dtail">
									<strong>개조아여</strong>
								</p>
								<span class="dtail-id">작성자 아이디 : shw9612</span>
								<br><hr>
								<p class="dtail-dtail">끝장나는 숙소</p>
								<div class="review-ctr">
								<a onClick="#" style="color:#303030"><b> > 수정  </b> </a>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<a onClick="#" style="color:#303030"><b> > 삭제  </b> </a>
								</div>
							</div>
						</div>
						<div class="notice">
							<table class="readMore">
								<tr>
								<td class="glyphicon glyphicon-chevron-down"></td>
									<td class="review-name"><b>개조아여</b></td>
									<td class="review-id">shw9612</td>
									<td class="review-date">2019.02.09</td>
								</tr>
							</table>
							<div class="desc">
								<br>
								<p class="dtail-dtail">
									<strong>개조아여</strong>
								</p>
								<span class="dtail-id">작성자 아이디 : </span>
								<br><hr>
								<p class="dtail-dtail">끝장나는 숙소</p>
								<div class="review-ctr">
								<a onClick="#" style="color:#303030"><b> > 수정  </b> </a>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<a onClick="#" style="color:#303030"><b> > 삭제  </b> </a>
								</div>
							</div>
						</div>
						<div class="notice">
							<table class="readMore">
								<tr>
								<td class="glyphicon glyphicon-chevron-down"></td>
									<td class="review-name"><b>개조아여</b></td>
									<td class="review-id">shw9612</td>
									<td class="review-date">2019.02.09</td>
								</tr>
							</table>
							<div class="desc">
								<br>
								<p class="dtail-dtail">
									<strong>개조아여</strong>
								</p>
								<span class="dtail-id">작성자 아이디 : </span>
								<br><hr>
								<p class="dtail-dtail">끝장나는 숙소</p>
								<div class="review-ctr">
								<a onClick="#" style="color:#303030"><b> > 수정  </b> </a>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<a onClick="#" style="color:#303030"><b> > 삭제  </b> </a>
								</div>
							</div>
						</div>
						<div class="notice">
							<table class="readMore">
								<tr>
								<td class="glyphicon glyphicon-chevron-down"></td>
									<td class="review-name"><b>개조아여</b></td>
									<td class="review-id">shw9612</td>
									<td class="review-date">2019.02.09</td>
								</tr>
							</table>
							<div class="desc">
								<br>
								<p class="dtail-dtail">
									<strong>개조아여</strong>
								</p>
								<span class="dtail-id">작성자 아이디 : </span>
								<br><hr>
								<p class="dtail-dtail">끝장나는 숙소</p>
								<div class="review-ctr">
								<a onClick="#" style="color:#303030"><b> > 수정  </b> </a>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<a onClick="#" style="color:#303030"><b> > 삭제  </b> </a>
								</div>
							</div>
						</div>
						<div class="notice">
							<table class="readMore">
								<tr>
								<td class="glyphicon glyphicon-chevron-down"></td>
									<td class="review-name"><b>개조아여</b></td>
									<td class="review-id">shw9612</td>
									<td class="review-date">2019.02.09</td>
								</tr>
							</table>
							<div class="desc">
								<br>
								<p class="dtail-dtail">
									<strong>개조아여</strong>
								</p>
								<span class="dtail-id">작성자 아이디 : </span>
								<br><hr>
								<p class="dtail-dtail">끝장나는 숙소</p>
								<div class="review-ctr">
								<a onClick="#" style="color:#303030"><b> > 수정  </b> </a>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<a onClick="#" style="color:#303030"><b> > 삭제  </b> </a>
								</div>
							</div>
						</div>
						<div class="notice">
							<table class="readMore">
								<tr>
								<td class="glyphicon glyphicon-chevron-down"></td>
									<td class="review-name"><b>개조아여</b></td>
									<td class="review-id">shw9612</td>
									<td class="review-date">2019.02.09</td>
								</tr>
							</table>
							<div class="desc">
								<br>
								<p class="dtail-dtail">
									<strong>개조아여</strong>
								</p>
								<span class="dtail-id">작성자 아이디 : </span>
								<br><hr>
								<p class="dtail-dtail">끝장나는 숙소</p>
								<div class="review-ctr">
								<a onClick="#" style="color:#303030"><b> > 수정  </b> </a>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<a onClick="#" style="color:#303030"><b> > 삭제  </b> </a>
								</div>
							</div>
						</div>
						<div class="notice">
							<table class="readMore">
								<tr>
								<td class="glyphicon glyphicon-chevron-down"></td>
									<td class="review-name"><b>개조아여</b></td>
									<td class="review-id">shw9612</td>
									<td class="review-date">2019.02.09</td>
								</tr>
							</table>
							<div class="desc">
								<br>
								<p class="dtail-dtail">
									<strong>개조아여</strong>
								</p>
								<span class="dtail-id">작성자 아이디 : </span>
								<br><hr>
								<p class="dtail-dtail">끝장나는 숙소</p>
								<div class="review-ctr">
								<a onClick="#" style="color:#303030"><b> > 수정  </b> </a>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<a onClick="#" style="color:#303030"><b> > 삭제  </b> </a>
								</div>
							</div>
						</div>
					</div>
					<!-- q&a end -->
					
				</div>
				<!-- tab2 end -->
				
				<!-- paging -->
				<div class="text-center">
					<ul class="pagination pagination-lg">
						<!--부트스트랩에서 제공하는 페이징 마법사(?)-->
						<li ><a href="#" style="color:#303030">Pre</a></li>
						<li ><a href="#" style="color:#303030">1</a></li>
						<li ><a href="#" style="color:#303030">2</a></li>
						<li ><a href="#" style="color:#303030">3</a></li>
						<li ><a href="#" style="color:#303030">4</a></li>
						<li ><a href="#" style="color:#303030">5</a></li>
						<li ><a href="#" style="color:#303030">Next</a></li>
					</ul>
				</div>
				<!-- paging -->
				
			</div>
			<!-- tab-content end -->
			
		</div>
		<!-- tabbabble end -->

	</div>

</body>
</html>