<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:if test="${signIn == null }">
	<script type="text/javascript">
			alert("아이디와 비밀번호를 다시 확인해주세요.");
			history.go(-1);
		</script>
</c:if>


</body>
</html>