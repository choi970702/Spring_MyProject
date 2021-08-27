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
	#field
	{
		width: 80%;
		margin: auto;
		margin-top: 2%;
	}
	img
	{
		width: 45%;
	}
	#field_left
	{
		width: 45%;
		float: left;
		margin: auto;
		text-align: center;
	}
	#field_right
	{
		width: 45%;
		margin: auto;
		text-align: center;
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
	<div id="choice">
		<form action="search_ok.do" method="post">
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
			<input type="radio" name="choose" value="별점순" checked="checked">별점이 높은 순
			<input type="submit" value="검색">
		</form>
	</div>
	
	<div>
		<fieldset id="field">
			<legend>가게이름, ${choose }</legend>
			<c:choose>
				<c:when test="${choice == '가게이름' }">
					<c:choose>
						<c:when test="${!empty search}">
							<table>
								<thead>
									<tr>
										<th></th>
										<th></th>
									</tr>
								</thead>
								<tbody>

									<c:choose>
										<c:when test="${choose == '거리순'}">
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
										<c:when test="${choose == '별점순' }">
											<c:forEach var="k" items="${list3}" varStatus="vs">
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
										<c:when test="${choose == '리뷰순' }">
											<c:forEach var="k" items="${list4}" varStatus="vs">
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
				</c:when>
				<c:otherwise>

				</c:otherwise>
			</c:choose>
			<fieldset id="field_left">
				<c:choose>
					<c:when test="${choice == '음식이름'}">

					</c:when>
					<c:otherwise>

					</c:otherwise>
				</c:choose>
				<legend>음식이름, ${choose }</legend>
				<div>
					<img alt="" src="resources/image/pic1.jpg" onclick="imgclick1()">
					<textarea cols="" rows="10">
						~~~~~~~~~~~~~~~~~~~~~~~
					</textarea>
				</div>
				<div>
					<img alt="" src="resources/image/pic2.jpg" onclick="imgclick2()">
					<textarea cols="" rows="10">
						~~~~~~~~~~~~~~~~~~~~~~~
					</textarea>
				</div>
			</fieldset>
			<fieldset id="field_right">
				<div>
					<img alt="" src="resources/image/pic3.jpg" onclick="imgclick3()">
					<textarea cols="" rows="10">
						~~~~~~~~~~~~~~~~~~~~~~~
					</textarea>
				</div>
				<div>
					<img alt="" src="resources/image/pic_trulli.jpg"
						onclick="imgclick4()">
					<textarea cols="" rows="10">
						~~~~~~~~~~~~~~~~~~~~~~~
					</textarea>
				</div>
			</fieldset>
		</fieldset>
	</div>
	
	<div>
		<footer>footer정보</footer>
	</div>
</body>
</html>