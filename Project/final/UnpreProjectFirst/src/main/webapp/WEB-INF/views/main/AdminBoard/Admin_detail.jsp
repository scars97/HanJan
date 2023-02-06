<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<!-- CLOUDTURING 챗봇 -->
<script>
    window.dyc = {
        chatbotUid: "b3979c0b019058cb"
    };
</script>
<script async src="https://cloudturing.chat/v1.0/chat.js"></script>
<!-- End CLOUDTURING -->

<head>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
	
<meta charset="UTF-8">
<title>${addata.adb_title}</title>

</head>
<body> 

	<!-- upper navbar here -->
	<jsp:include page="../common/navbar.jsp"/>
	<br>
	<div class="container" style="width:70%">
	<h3>${addata.ad_category}</h3>
	&nbsp;
	&nbsp;
	<hr>
	&nbsp;${addata.adb_title }
	<span style="float: right;">&nbsp;
	<fmt:formatDate value="${addata.ad_cdate}" pattern="yyyy.MM.dd.hh.mm.ss" />&nbsp;</span>
	<hr>
	
	
	<div style=" height: 10cm; width:100%;
	padding:9px;">
	${addata.adb_content}
	</div>
	
	<hr><!-- 가로 선 -->
	
	<div></div>
	<input type="button" value="목록" onclick="location.href='http://localhost:8081/adlist'" class="btn btn-secondary"></input>
	<c:if test="${signIn.user_id == '관리자'}">
	<input type="button" value="수정" onclick="location.href='http://localhost:8081/adupdate?adbNum=${adbNum}'" class="btn btn-secondary"></input>
	<form method="POST" action="/addelete" style=" display: inline-block; float: right;">
		<input type="hidden" name="adbNum" value="${adbNum}" />
		<input class="btn btn-secondary" type="submit" value="삭제" style=" background-color: #455889; border-color: #455889;">
	</form>
	</c:if>
	</div>
	<br>
	
	<!-- footer here -->
	<footer class="fixed-bottom">
	<jsp:include page="../common/footer.jsp" />
</footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
</body>
</html>