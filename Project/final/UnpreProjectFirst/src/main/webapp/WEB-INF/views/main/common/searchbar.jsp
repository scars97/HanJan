<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <form method="get" action="search">
<div class="asdf">
<div class="search-box">

	<%-- <form>
			<input class="form-control me-2"
				style="width: 15%; float: left; margin: 0 auto" type="text"
				placeholder="검색" name="keyword" value="${keyword}" /> <input
				class="btn btn-outline-success" type="submit" value="검색" />
		</form> --%>




<!-- <form method="get" action="search"> -->
	<input type="text" class="search-txt" name="keyword" placeholder="Search" value="${keyword}">
	<button class="search-btn" type="submit">
		<i class="fas fa-search"></i>
		</button>
	<!-- </form> -->
	
</div>
</div>
</form>