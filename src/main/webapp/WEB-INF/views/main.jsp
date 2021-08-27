<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

	
	.btn
	{
		text-align: center;
		height: 2%;
		border: 2px solid black;
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
	.div_in
	{
		float: left;
		width: 50%;
		text-align: center;
		margin-top: 2%;
		margin-bottom: 2%;
	}
	.in
	{
		border: 2px solid black;
		width: 50%;
	}
	img
	{
		width: 100%;
		height: 100%;
	}
	fieldset
	{
		width: 45%;
		float: left;
		margin-left: 1%;
		margin-right: 1%;
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
		table,th,td
	{
		border: 1px solid gray;
		border-spacing: 0px;
		padding: 1%;
	}
	tr 
	{
		
	    text-align:center;
	    padding:4px 10px;
	    background-color: #F6F6F6;
	    margin: 0px;
	}
	
	th 
	{
		width:120px;
	    text-align:center;
	    padding:4px 10px;
	    background-color: silver;
	    margin: 0px;
	}
	table 
	{
		margin: auto;
		margin-top: 5%;
		width: 80%;
		height: 350px;
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
	<%-- 현재 페이지에서 다른 페이지 가져오기  --%>
	<%@ include file="top.jsp" %>
	<!-- <div>
		위치 검색, 로그인 회원가입 태그
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
	</div><br> -->
	<!-- 메뉴바 -->
	<div>
		<div id="menu_id">
			<div><a href="search.do?cPage=${cPage}&search=">검색</a></div>
			<div><a href="food_restaurant.do?cPage=${cPage}">음식 및 음식점 추천</a></div>
			<div><a onclick="boardlist()">게시판</a></div>
			<div><a href="mypage.do?cPage=${cPage} ">마이페이지</a></div>
		</div>
	</div>
	<div>
		<div class="div_in">
			<form action="search.do">
				<!-- 음식으로 검색하기 -->
				<input class="in" type="text" placeholder="음식이름" name="search" required>
				<input class="btn" type="submit" value="검색">
				<input type="hidden" name="choice" value="음식이름">
				<input type="hidden" name="cPage" value="${cPage }">
			</form>
		</div>
		<div class="div_in">
			<form action="search.do">
				<!-- 음식점으로 검색하기 -->
				<input class="in" type="text" placeholder="가게이름" name="search" required>
				<input class="btn" type="submit" value="검색">
				<input type="hidden" name="choice" value="가게이름">
				<input type="hidden" name="cPage" value="${cPage }">
			</form>
		</div>
		<div>
			<fieldset>
				<legend>먹을거리 추천</legend>
				<table>
					<thead>
						<tr>
							<th></th><th></th>
						</tr>
					</thead>
					<tbody>

						<c:choose>
							<c:when test="${empty list}">
								<tr>
									<td colspan="4"><h2>원하시는 자료가 존재하지 않습니다</h2></td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="k" items="${list}" varStatus="vs">
									<tr>
										<td rowspan="4" style="text-align: left;"><img alt=""
											src="resources/image/${k.file_name }"></td>
										<td>가게이름 : <a
											href="onelist.do?id=${k.id}&cPage=${cPage}&restaurant=${k.restaurant}">${k.restaurant }</a>
										</td>
									</tr>
									<tr>
										<td>주메뉴 : ${k.food_name }</td>
									</tr>
									<tr>
										<td>영업 시간 : ${k.restaurant_time }</td>
									</tr>
									<tr>
										<td>위치 : ${k.place }</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</fieldset>
		</div>
		<div>
			<fieldset>
				<legend>가볼만한 가게 추천</legend>
				<table>
					<thead>
						<tr>
							<th></th><th></th>
						</tr>
					</thead>
					<tbody>

						<c:choose>
							<c:when test="${empty list2}">
								<tr>
									<td colspan="4"><h2>원하시는 자료가 존재하지 않습니다</h2></td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="k" items="${list2}" varStatus="vs">
									<tr>
										<td rowspan="4" style="text-align: left;"><img alt=""
											src="resources/image/${k.file_name }"></td>
										<td>가게이름 : <a
											href="onelist.do?id=${k.id}&cPage=${cPage}&restaurant=${k.restaurant}">${k.restaurant }</a>
										</td>
									</tr>
									<tr>
										<td>주메뉴 : ${k.food_name }</td>
									</tr>
									<tr>
										<td>영업 시간 : ${k.restaurant_time }</td>
									</tr>
									<tr>
										<td>위치 : ${k.place }</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
						<!-- <div>
					<img alt="" src="resources/image/pic1.jpg">
					<textarea>~~~~~~~~~~~</textarea>
				</div>
				<div>
					<img alt="" src="resources/image/pic1.jpg">
					<textarea>~~~~~~~~~~~</textarea>
				</div> -->
					</tbody>
				</table>
			</fieldset>
		</div>
	</div>
	<div>
		<footer>footer정보</footer>
	</div>
	
</body>
</html>