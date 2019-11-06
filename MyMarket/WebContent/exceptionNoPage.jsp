<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image/x-icon" href="https://static.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico">
<link rel="mask-icon" type="" href="https://static.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111">
<title>상품 아이디 오류</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<style>
  @import url("https://fonts.googleapis.com/css?family=Arima+Madurai:300");
*,
*::before,
*::after {
  box-sizing: border-box;
}

h1 {
  font-family: 'Arima Madurai', cursive;
  color: black;
  font-size: 4rem;
  letter-spacing: -3px;
  text-shadow: 0px 1px 1px rgba(255, 255, 255, 0.6);
  position: relative;
  z-index: 3;
}

.container {
  z-index: 1;
  position: relative;
  overflow: hidden;
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 35rem;
  background-image: linear-gradient(to bottom, rgba(255, 168, 76, 0.6) 0%, rgba(255, 123, 13, 0.6) 100%), url("https://images.unsplash.com/photo-1446824505046-e43605ffb17f");
  background-blend-mode: soft-light;
  background-size: cover;
  background-position: center center;
  padding: 2rem;
}

.bird {
  background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/174479/bird-cells.svg);
  background-size: auto 100%;
  width: 88px;
  height: 125px;
  will-change: background-position;
  -webkit-animation-name: fly-cycle;
          animation-name: fly-cycle;
  -webkit-animation-timing-function: steps(10);
          animation-timing-function: steps(10);
  -webkit-animation-iteration-count: infinite;
          animation-iteration-count: infinite;
}
.bird--one {
  -webkit-animation-duration: 1s;
          animation-duration: 1s;
  -webkit-animation-delay: -0.5s;
          animation-delay: -0.5s;
}
.bird--two {
  -webkit-animation-duration: 0.9s;
          animation-duration: 0.9s;
  -webkit-animation-delay: -0.75s;
          animation-delay: -0.75s;
}
.bird--three {
  -webkit-animation-duration: 1.25s;
          animation-duration: 1.25s;
  -webkit-animation-delay: -0.25s;
          animation-delay: -0.25s;
}
.bird--four {
  -webkit-animation-duration: 1.1s;
          animation-duration: 1.1s;
  -webkit-animation-delay: -0.5s;
          animation-delay: -0.5s;
}

.bird-container {
  position: absolute;
  top: 20%;
  left: -10%;
  -webkit-transform: scale(0) translateX(-10vw);
          transform: scale(0) translateX(-10vw);
  will-change: transform;
  -webkit-animation-name: fly-right-one;
          animation-name: fly-right-one;
  -webkit-animation-timing-function: linear;
          animation-timing-function: linear;
  -webkit-animation-iteration-count: infinite;
          animation-iteration-count: infinite;
}
.bird-container--one {
  -webkit-animation-duration: 15s;
          animation-duration: 15s;
  -webkit-animation-delay: 0;
          animation-delay: 0;
}
.bird-container--two {
  -webkit-animation-duration: 16s;
          animation-duration: 16s;
  -webkit-animation-delay: 1s;
          animation-delay: 1s;
}
.bird-container--three {
  -webkit-animation-duration: 14.6s;
          animation-duration: 14.6s;
  -webkit-animation-delay: 9.5s;
          animation-delay: 9.5s;
}
.bird-container--four {
  -webkit-animation-duration: 16s;
          animation-duration: 16s;
  -webkit-animation-delay: 10.25s;
          animation-delay: 10.25s;
}

@-webkit-keyframes fly-cycle {
  100% {
    background-position: -900px 0;
  }
}

@keyframes fly-cycle {
  100% {
    background-position: -900px 0;
  }
}
@-webkit-keyframes fly-right-one {
  0% {
    -webkit-transform: scale(0.3) translateX(-10vw);
            transform: scale(0.3) translateX(-10vw);
  }
  10% {
    -webkit-transform: translateY(2vh) translateX(10vw) scale(0.4);
            transform: translateY(2vh) translateX(10vw) scale(0.4);
  }
  20% {
    -webkit-transform: translateY(0vh) translateX(30vw) scale(0.5);
            transform: translateY(0vh) translateX(30vw) scale(0.5);
  }
  30% {
    -webkit-transform: translateY(4vh) translateX(50vw) scale(0.6);
            transform: translateY(4vh) translateX(50vw) scale(0.6);
  }
  40% {
    -webkit-transform: translateY(2vh) translateX(70vw) scale(0.6);
            transform: translateY(2vh) translateX(70vw) scale(0.6);
  }
  50% {
    -webkit-transform: translateY(0vh) translateX(90vw) scale(0.6);
            transform: translateY(0vh) translateX(90vw) scale(0.6);
  }
  60% {
    -webkit-transform: translateY(0vh) translateX(110vw) scale(0.6);
            transform: translateY(0vh) translateX(110vw) scale(0.6);
  }
  100% {
    -webkit-transform: translateY(0vh) translateX(110vw) scale(0.6);
            transform: translateY(0vh) translateX(110vw) scale(0.6);
  }
}
@keyframes fly-right-one {
  0% {
    -webkit-transform: scale(0.3) translateX(-10vw);
            transform: scale(0.3) translateX(-10vw);
  }
  10% {
    -webkit-transform: translateY(2vh) translateX(10vw) scale(0.4);
            transform: translateY(2vh) translateX(10vw) scale(0.4);
  }
  20% {
    -webkit-transform: translateY(0vh) translateX(30vw) scale(0.5);
            transform: translateY(0vh) translateX(30vw) scale(0.5);
  }
  30% {
    -webkit-transform: translateY(4vh) translateX(50vw) scale(0.6);
            transform: translateY(4vh) translateX(50vw) scale(0.6);
  }
  40% {
    -webkit-transform: translateY(2vh) translateX(70vw) scale(0.6);
            transform: translateY(2vh) translateX(70vw) scale(0.6);
  }
  50% {
    -webkit-transform: translateY(0vh) translateX(90vw) scale(0.6);
            transform: translateY(0vh) translateX(90vw) scale(0.6);
  }
  60% {
    -webkit-transform: translateY(0vh) translateX(110vw) scale(0.6);
            transform: translateY(0vh) translateX(110vw) scale(0.6);
  }
  100% {
    -webkit-transform: translateY(0vh) translateX(110vw) scale(0.6);
            transform: translateY(0vh) translateX(110vw) scale(0.6);
  }
}
@-webkit-keyframes fly-right-two {
  0% {
    -webkit-transform: translateY(-2vh) translateX(-10vw) scale(0.5);
            transform: translateY(-2vh) translateX(-10vw) scale(0.5);
  }
  10% {
    -webkit-transform: translateY(0vh) translateX(10vw) scale(0.4);
            transform: translateY(0vh) translateX(10vw) scale(0.4);
  }
  20% {
    -webkit-transform: translateY(-4vh) translateX(30vw) scale(0.6);
            transform: translateY(-4vh) translateX(30vw) scale(0.6);
  }
  30% {
    -webkit-transform: translateY(1vh) translateX(50vw) scale(0.45);
            transform: translateY(1vh) translateX(50vw) scale(0.45);
  }
  40% {
    -webkit-transform: translateY(-2.5vh) translateX(70vw) scale(0.5);
            transform: translateY(-2.5vh) translateX(70vw) scale(0.5);
  }
  50% {
    -webkit-transform: translateY(0vh) translateX(90vw) scale(0.45);
            transform: translateY(0vh) translateX(90vw) scale(0.45);
  }
  51% {
    -webkit-transform: translateY(0vh) translateX(110vw) scale(0.45);
            transform: translateY(0vh) translateX(110vw) scale(0.45);
  }
  100% {
    -webkit-transform: translateY(0vh) translateX(110vw) scale(0.45);
            transform: translateY(0vh) translateX(110vw) scale(0.45);
  }
}
@keyframes fly-right-two {
  0% {
    -webkit-transform: translateY(-2vh) translateX(-10vw) scale(0.5);
            transform: translateY(-2vh) translateX(-10vw) scale(0.5);
  }
  10% {
    -webkit-transform: translateY(0vh) translateX(10vw) scale(0.4);
            transform: translateY(0vh) translateX(10vw) scale(0.4);
  }
  20% {
    -webkit-transform: translateY(-4vh) translateX(30vw) scale(0.6);
            transform: translateY(-4vh) translateX(30vw) scale(0.6);
  }
  30% {
    -webkit-transform: translateY(1vh) translateX(50vw) scale(0.45);
            transform: translateY(1vh) translateX(50vw) scale(0.45);
  }
  40% {
    -webkit-transform: translateY(-2.5vh) translateX(70vw) scale(0.5);
            transform: translateY(-2.5vh) translateX(70vw) scale(0.5);
  }
  50% {
    -webkit-transform: translateY(0vh) translateX(90vw) scale(0.45);
            transform: translateY(0vh) translateX(90vw) scale(0.45);
  }
  51% {
    -webkit-transform: translateY(0vh) translateX(110vw) scale(0.45);
            transform: translateY(0vh) translateX(110vw) scale(0.45);
  }
  100% {
    -webkit-transform: translateY(0vh) translateX(110vw) scale(0.45);
            transform: translateY(0vh) translateX(110vw) scale(0.45);
  }
}
</style>
<script>
  window.console = window.console || function(t) {};
</script>
<script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>
</head>
<body translate="no">
<div class="container">
<h1>요청하신 페이지를 찾을 수 없습니다.</h1>
<div class="bird-container bird-container--one">
<div class="bird bird--one"></div>
</div>
<div class="bird-container bird-container--two">
<div class="bird bird--two"></div>
</div>
<div class="bird-container bird-container--three">
<div class="bird bird--three"></div>
</div>
<div class="bird-container bird-container--four">
<div class="bird bird--four"></div>
</div>
</div>
<div class="lee" style="margin-left:200px">
		<p><%=request.getRequestURL()%>
		<p>
			<a href="Market.jsp"><button>메인 페이지&raquo;</button></a>
	</div>

</body>
</html>