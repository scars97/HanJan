<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>




<link rel="stylesheet" href="/resources/css/login.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
<script src="https://kit.fontawesome.com/51db22a717.js"
	crossorigin="anonymous"></script>
	
	<!-- CLOUDTURING 챗봇 -->
<script>
	window.dyc = {
		chatbotUid : "b3979c0b019058cb"
	};
</script>
<script async src="https://cloudturing.chat/v1.0/chat.js"></script>
<!-- End CLOUDTURING -->
	
</head>
<body>
	<jsp:include page="../common/navbar.jsp" />

	<div class="main-container">
		<div class="main-wrap">
			<header>
				<div class="sel-lang-wrap">
					<select class="lang-select">
						<option>한국어</option>
						<option>English</option>
					</select>
				</div>
				<div class="logo-wrap">
					<h1>Unpredictable</h1>
				</div>
			</header>
			
			
			
			
			
			<section class="login-input-section-wrap">
				<form action="userlogin.do" method="post" name="logincheck">
					<div class="login-input-wrap">
						<input placeholder="아이디" type="text" name="user_id" id="userId"></input>
					</div>
					<div class="login-input-wrap password-wrap">
						<input placeholder="비밀번호" type="password" name="pwd" id="userPwd"></input>
					</div>
					<div class="login-button-wrap">
					
						<button type="submit" onclick="return loginCheck()">로그인</button>
					
					</div>
					<div class="login-stay-sign-in">
						<input type="checkbox"><span>로그인 유지</span>
					</div>
				</form>
			</section>
			
			
			
			<section class="Easy-sgin-in-wrap">
				<h2>다른 방법으로 로그인</h2>
				<ul class="sign-button-list">
					<li><button style="margin-right: 30px">
							<i class="fas fa-qrcode"></i><span>QR code로 로그인</span>
						</button></li>
					<li><button style="margin-right: 30px">
							<i class="fab fa-facebook-square"></i><span>페이스북으로 로그인</span>
						</button></li>
				</ul>
				<p class="forget-msg">
					<a href="" style="color: #4e4e4e">아이디 찾기</a>
					&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; <a href=""
						style="color: #4e4e4e">비밀번호 찾기</a>
					&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; <a
						href="agree" style="color: #4e4e4e">회원가입</a>
				</p>
			</section>

		</div>

	</div>
	<div class="container-fluid" style="padding: 0px">
		<jsp:include page="../common/footer.jsp" />
	</div>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>


<script>
   function loginCheck(){
      if(logincheck.userId.value == ""){
         alert( "아이디를 입력하세요.");
         logincheck.userId.focus();
         return false;         
      }else if (logincheck.userPwd.value == ""){
         alert("비밀번호를 입력하세요.");
         logincheck.userPwd.focus();
         return false;                        
      }else if(logincheck.userId.value == "관리자"){
         alert("관리자 아이디로 로그인합니다");
         
      }
      
      return true;
   }
   </script>
	
	
	
</body>

</html>