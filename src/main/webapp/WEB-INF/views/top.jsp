<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	a:hover
	{
		color: silver;
		cursor: pointer;
	}
	a
	{
		text-decoration: none;
		color: black;
	}
	#top_btn
	{
		float: left;
	}
	.a_div
	{
		float: right;
		width: 30%;
		text-align: right;
	}
	#top_addr
	{
		width: 60%;
		margin-left: 2%;
		height: 2%;
		text-align: left;
		float: left;
		border: 2px solid black;
	}
</style>
</head>
<body>
	<div>
		<!-- 위치 검색, 로그인 회원가입 태그 -->
		<div>
			<form action="addr_search.do?cPage=${cPage }" method="post">
				<input type="text" id="top_addr" placeholder="위치를 쓰세요." name="addr_search" required>
				<input type="submit" id="top_btn" class="btn"  value="검색" >
			</form>
		</div>
		<div>
			<div class="a_div" style="margin-right: 2%;">
				<a href="main.do?cPage=1">home</a>
			</div>
			<div class="a_div">
			<c:choose>
				<c:when test="${login_ok == '1' }">
					<a href="mypage.do?cPage=${cPage }">${id }님 </a> &nbsp;|&nbsp;
					<a href="logout.do?cPage=1">로그아웃</a>
				</c:when>
				<c:otherwise>
					<a href="login.do?cPage=1">로그인 </a> &nbsp;|&nbsp;
					<a href="join.do?cPage=1">회원가입</a>
				</c:otherwise>
			</c:choose>
			</div>
		</div>
	</div><br>
</body>
</html>