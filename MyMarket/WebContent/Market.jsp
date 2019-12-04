<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="style.css">
<script type="text/javascript" src="./resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>승팡!!!!!!!!!!!!</title>
</head>
<body>
	<%@ include file="menu.jsp"%>

	<div id="carouselExampleFade" class="carousel slide carousel-fade"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="image/image1.jpg" class="d-block w-100" alt="First slide">
			</div>
			<div class="carousel-item">
				<img src="image/image2.jpg" class="d-block w-100" alt="Second slide">
			</div>
			<div class="carousel-item">
				<img src="image/image3.jpg" class="d-block w-100" alt="Third slide">
			</div>
			<div class="carousel-item">
				<img src="image/image4.jpg" class="d-block w-100" alt="Fourth slide">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleFade"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleFade"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<div class="product">
		<ul class="main" style="width: 100%; height: 500px;">
			<li class="card"
				style="width: 18rem; float: left; margin: 0px 58px 0px 58px;">
				<img class="card-img-top" src="image/image9.png" alt="Card image cap">
				<div class="card-body">
					<h5 class="card-title">꼰스 프리덤 반집업 맨투맨</h5>
					<p class="card-text">26,000원</p>
				</div>
			</li>
			<li class="card"
				style="width: 18rem; float: left; margin: 0px 58px 0px 58px;">
				<img class="card-img-top" src="image/image10.png"
					alt="Card image cap">
				<div class="card-body">
					<h5 class="card-title">옹브레 체크 오버핏 후드 긴팔 셔츠</h5>
					<p class="card-text">19,800원</p>
				</div>
			</li>
			<li class="card"
				style="width: 18rem; float: left; margin: 0px 58px 0px 58px;">
				<img class="card-img-top" src="./image/image11.png"
					alt="Card image cap">
				<div class="card-body">
					<h5 class="card-title">[루이까또즈] 남성반지갑 SK4AH17KH</h5>
					<p class="card-text">54,000원</p>
				</div>
			</li>
	
		</ul>
	</div>
	
	<div class="image">
		<img src="image/image8.png " style=" width: 400px; float: left;">
		<img src="image/image12.png " style=" width: 400px; float: left;">
		<img src="image/image16.png " style=" width: 400px; float: left;">
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>

