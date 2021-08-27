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
	fieldset
	{
		width: 45%;
		float: left;
		margin-left: 1%;
		margin-right: 1%;
	}
	textarea 
	{
		height: 80px;
		width: 50%;
		text-align: center;
	}
	img
	{
		width: 100%;
		height: 100%;
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
	<!-- 메뉴바 -->
	<div>
		<div id="menu_id">
			<div><a href="search.do?cPage=${cPage}&search=">검색</a></div>
			<div><a href="food_restaurant.do?cPage=${cPage}">음식 및 음식점 추천</a></div>
			<div><a onclick="boardlist()">게시판</a></div>
			<div><a href="mypage.do?cPage=${cPage}">마이페이지</a></div>
		</div>
	</div>
	<div>
			<fieldset>
				<legend>이달의 추천 음식</legend>
				<form style="text-align: center;" action="food_restaurant2.do?cPage=${cPage}">
					<input type="radio" name="food_pick" value="추천순">추천이 많은순
					<input type="radio" name="food_pick" checked="checked" value="별점순">별점이 높은순
					<input type="submit" value="검색">
					<input type="hidden" name="cPage" value="${cPage }">
				</form>
				<%-- <div style="text-align: center;">${food_pick }</div> --%>
				<table>
					<thead>
						<tr>
							<th></th><th>${food_pick }</th>
						</tr>
					</thead>
					<tbody>

						<c:choose>
							<c:when test="${food_pick == '추천순'}">
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
				<legend>이달의 추천 가게</legend>
				<form style="text-align: center;" action="food_restaurant2.do?cPage=${cPage}">
					<input type="radio" name="restaurant_pick" value="추천순">추천이 많은순
					<input type="radio" name="restaurant_pick" checked="checked" value="별점순">별점이 높은순
					<input type="submit" value="검색">
					<input type="hidden" name="cPage" value="${cPage }">
				</form>
				<table>
					<thead>
						<tr>
							<th></th><th>${restaurant_pick }</th>
						</tr>
					</thead>
					<tbody>

						<c:choose>
							<c:when test="${restaurant_pick == '추천순'}">
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
		<footer>footer정보</footer>
	</div>
</body>
</html>