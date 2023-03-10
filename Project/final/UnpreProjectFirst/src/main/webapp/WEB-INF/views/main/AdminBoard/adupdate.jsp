<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
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
	<meta charset="utf-8">
	<title>${addata.adb_title }(수정)</title>
	<script src="${path}/resources/js/adwrite_null.js"}></script>
</head>
<body>

	<!-- upper navbar here -->
	<jsp:include page="../common/navbar.jsp"/>
	<div class="container">
	<h3>게시글 수정</h3>
	&nbsp;
	&nbsp;
	<form method="POST" name="adwriteboard" style="margin-bottom: 2rem;">
			<select name="ad_category" id="adcategory"
			style="width:3cm; height:1cm; border-radius: 4px">
			<option value="">카테고리</option>
			<option value="공지사항">공지사항</option>
			<option value="이벤트">이벤트</option>
		</select>
		
		<div style="display: inline-block;">
		
		<input type="text" placeholder="제목" id="adtitle" name="adb_title"
		style="width: 25.9cm; border-radius: 4px; height:1cm;"
			onclick="titlecheck()" value="${addata.adb_title }">
		</div>
		
		<div>
		
		<br>
			<textarea rows="15" cols="30" style="resize: vertical"
				placeholder="자유롭게 작성해 보세요." name="adb_content"
				class="form-control" style="height: 100px">${addata.adb_content}</textarea>
		</div>
		
		<br> <input class="form-control" type="file" id="formFile">
		
		<hr><!-- 가로 선 -->
		
		<input type="reset" value="초기화" class="btn btn-secondary">
		<input type="button" onclick="history.go(-1)" value="뒤로가기" class="btn btn-secondary">
		<input type="submit" value="저장" onclick="return adcheck()" class="btn btn-primary" style="float: right; background-color: #455889; border-color: #455889;">
	</form>
</div>
	<!-- footer here -->
		<jsp:include page="../common/footer.jsp"/>
</body>

		

</html>