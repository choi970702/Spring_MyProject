<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#top_addr
	{
		width: 60%;
		margin-left: 2%;
		height: 2%;
		text-align: left;
		float: left;
		border: 2px solid black;
	}
	.btn
	{
		text-align: center;
		height: 2%;
		border: 2px solid black;
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
	#menu_id
	{
		width: 80%;
		text-align: center;
		margin-top: 3%;
		margin-left: 10%;
	}
	
	#menu_id > div
	{
		width: 23%;
		height: 40px;
		display: inline-block;
		text-align: center;
		cursor: pointer;
		line-height: 40px;
		margin: auto;	
		background-color: gray;
	}
	#menu_id > div > a
	{
		display: block;
	}
	a
	{
		text-decoration: none;
		color: black;
	}
	footer
	{
		background-color: gray;
		width: 100%;
		height: 60px;
		font-size: 10px;
		margin-top: 40%;
		padding: 10px;
	}
	a:hover
	{
		color: silver;
		cursor: pointer;
	}
	#menu_id > div:hover
	{
		background-color: black;
	}
	#choice
	{
		background-color: darkgray;
		width: 90%;
		margin: 20px auto;
		padding: 5px;
	}
	select
	{
		width: 30%;
		margin-right: 5%;
	}
	#search
	{
		width: 20%;
	}
</style>
<script type="text/javascript">
	function boardlist() 
	{
		location.href="board.do?cPage=${cPage}";
	}
</script>
</head>
<body>
	<div>
		<!-- 위치 검색, 로그인 회원가입 태그 -->
		<div>
			<form action="addr_search.do" method="post">
				<input type="text" id="top_addr" placeholder="위치를 쓰세요." name="addr_search" required>
				<input type="submit" id="top_btn" class="btn"  value="검색" >
			</form>
		</div>
		<div>
			<div class="a_div" style="margin-right: 2%;">
				<a href="main.do">home</a>
			</div>
			<div class="a_div">
				<a href="login.do">로그인 </a> &nbsp;|&nbsp;
				<a href="join.do">회원가입</a>
			</div>
		</div>
	</div><br>
	<!-- 메뉴바 -->
	<div>
		<div id="menu_id">
			<div><a href="search.do?search=">검색</a></div>
			<div><a href="food_restaurant.do">음식 및 음식점 추천</a></div>
			<div><a onclick="boardlist()">게시판</a></div>
			<div><a href="mypage.do?cPage=${cPage}">마이페이지</a></div>
		</div>
	</div>
	<div id="choice">
		<form action="search2.do" method="post">
			<c:choose>
				<c:when test="${empty choice}">
					<select name="choice">
						<option value="음식이름">음식이름으로 검색</option>
						<option value="가게이름">가게 이름으로 검색</option>
					</select>
				</c:when>
				<c:otherwise>
					<select name="choice">
						<option value="${choice }"> ${choice}으로 검색</option>
					</select>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${empty search}">
					<input id="search" type="text" name="search" placeholder="음식이나 가게이름을 쓰세요.">
				</c:when>
				<c:otherwise>
					<input id="search" type="text" name="search" placeholder="${search }">
				</c:otherwise>
			</c:choose>
			<input type="radio" name="choose" value="거리순">거리순
			<input type="radio" name="choose" value="리뷰순">리뷰순
			<input type="radio" name="choose" value="별점순">별점이 높은 순
			<input type="submit" value="검색">
		</form>
	</div>
	<div>
		<footer>footer정보</footer>
	</div>
</body>
</html>