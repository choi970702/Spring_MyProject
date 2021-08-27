<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	a:hover
	{
		color: silver;
		cursor: pointer;
	}
	#menu_id > div:hover
	{
		background-color: black;
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
		margin-top: 2%;
		padding: 10px;
	}
</style>
</head>
<body>
	<div>
		<form action="addr_search.do" method="post">
			<input id="top_addr" type="text" placeholder="위치검색" name="addr_search" required>
			<input id="top_btn" class="btn" type="submit" value="검색">
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
	<!-- * 카카오맵 - 지도퍼가기 -->
	<!-- 1. 지도 노드 -->
	<div id="daumRoughmapContainer1624432839749" class="root_daum_roughmap root_daum_roughmap_landing"></div>

	<!--
		2. 설치 스크립트
		* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
	-->
	<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

	<!-- 3. 실행 스크립트 -->
	<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1624432839749",
		"key" : "26cht",
		"mapWidth" : "900",
		"mapHeight" : "380"
	}).render();
</script>
	<div>
		<footer>footer정보</footer>
	</div>
</body>
</html>