<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		margin-top: 45%;
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
	#t1
	{
		width: 50%;
		float: left;
	}
	#t2
	{
		width: 50%;
		float: left;
	}
	img
	{
		width: 100%;
	}
	textarea 
	{
		width: 80%;
		height: 80%;
	}
	fieldset 
	{
		height: 400px;
		margin-bottom: 5%;
		background-color: gray;
	}
</style>
<script type="text/javascript">
	function write1() 
	{
		location.href="write1.do?cPage=${cPage}";
	}
	function write2() 
	{
		location.href="write2.do?cPage=${cPage}";
	}
	function boardlist() 
	{
		location.href="board.do?cPage=${cPage}";
	}
	function image_click(f) {
		location.href="image_board.do?cPage=${cPage}&idx="+f;
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
	<div id="t1">
		<fieldset>
			<legend>게시판 및 문의</legend>
			<table>
				<thead>
					<tr>
						<th>번호</th>
						<th>글쓴이</th>
						<th>제목</th>
						<th>날짜</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
					<c:when test="${empty list}">
				 	  <tr><td colspan="4"><h2>원하시는 자료가 존재하지 않습니다</h2></td></tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="k" items="${list}" varStatus="vs">
							<tr>
								<td>${pvo.totalRecord-((pvo.nowPage-1)*pvo.numPerPage+vs.index)}</td>
								<td style="text-align: left;">
								<a href="board_onelist.do?idx=${k.idx}&cPage=${pvo.nowPage}">${k.writer }</a>
								</td>
								<td>${k.title }</td>
								<td>${k.regdate.substring(0,10)}</td>
							</tr>
						</c:forEach>
					</c:otherwise>
					</c:choose>
					<tr>
						<td colspan="4">
							<button onclick="write1()">작성</button>
						</td>
					</tr>
				</tbody>
				<tfoot>
				<tr>
					<td colspan="4">
						
						<c:choose>
							<c:when test="${pvo.beginBlock <= pvo.pagePerBlock }">
								<span style="color: gray; padding: 5px; border: 1px solid gray">이전으로</span>
							</c:when>
							<c:otherwise>
								<span style="color: tomato; padding: 5px; border: 1px solid tomato">
									<a href="board.do?cPage=${pvo.beginBlock-pvo.pagePerBlock}">이전으로</a>
								</span>
							</c:otherwise>
						</c:choose>
						&nbsp;&nbsp;
						
				  	 <c:forEach begin="${pvo.beginBlock }" end="${pvo.endBlock }" step="1" var="k">
						   	<c:choose>
									<c:when test="${k==pvo.nowPage}">
										<span style="background-color: tomato; padding: 5px;">${k}</span></c:when>
									<c:otherwise>
										<span style="color: tomato; padding: 5px;">
											<a href="board.do?cPage=${k}">${k}</</a>
										</span>
									</c:otherwise>
								</c:choose>
					   </c:forEach>
						&nbsp;&nbsp;
						
						<c:choose>
							<c:when test="${pvo.endBlock >= pvo.totalPage }">
								<span style="color: gray; padding: 5px; border: 1px solid gray">다음으로</span>
							</c:when>
							<c:otherwise>
								<span style="color: tomato; padding: 5px; border: 1px solid tomato">
									<a href="board.do?cPage=${pvo.beginBlock+pvo.pagePerBlock}">다음으로</a>
								</span>
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</tfoot>
			</table>
		</fieldset>
	</div>
	<div id="t2">
		<fieldset>
			<legend>리뷰 및 추천</legend>
			<table>
				<thead>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${empty list2 }">
							<tr>
								<td style="width: 30%;"><img src="resources/image/dark.gif"></td>
								<td><textarea>~~~~~~~~~~~~</textarea></td>
							</tr>
							<tr>
								<td style="width: 30%;"><img
									src="resources/image/light.gif"></td>
								<td><textarea>~~~~~~~~~~~~</textarea></td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="k" items="${list2}" varStatus="vs">
							<tr>
								<td style="width: 30%;"><img onclick="image_click(${k.idx})" src="resources/image/${k.file_name }"></td>
								<td>${k.content}</td>
							</tr>
						</c:forEach>
						</c:otherwise>
					</c:choose>
					
					<tr>
						<td colspan="2">
							<button onclick="write2()">작성</button>
						</td>
					</tr>
				</tbody>
				<tfoot>
				<tr>
					<td colspan="4">
						
						<c:choose>
							<c:when test="${pvo.beginBlock <= pvo.pagePerBlock }">
								<span style="color: gray; padding: 5px; border: 1px solid gray">이전으로</span>
							</c:when>
							<c:otherwise>
								<span style="color: tomato; padding: 5px; border: 1px solid tomato">
									<a href="board.do?cPage=${pvo.beginBlock-pvo.pagePerBlock}">이전으로</a>
								</span>
							</c:otherwise>
						</c:choose>
						&nbsp;&nbsp;
						
				  	 <c:forEach begin="${pvo.beginBlock }" end="${pvo.endBlock }" step="1" var="k">
						   	<c:choose>
									<c:when test="${k==pvo.nowPage}">
										<span style="background-color: tomato; padding: 5px;">${k}</span></c:when>
									<c:otherwise>
										<span style="color: tomato; padding: 5px;">
											<a href="board.do?cPage=${k}">${k}</</a>
										</span>
									</c:otherwise>
								</c:choose>
					   </c:forEach>
						&nbsp;&nbsp;
						
						<c:choose>
							<c:when test="${pvo.endBlock >= pvo.totalPage }">
								<span style="color: gray; padding: 5px; border: 1px solid gray">다음으로</span>
							</c:when>
							<c:otherwise>
								<span style="color: tomato; padding: 5px; border: 1px solid tomato">
									<a href="board.do?cPage=${pvo.beginBlock+pvo.pagePerBlock}">다음으로</a>
								</span>
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</tfoot>
			</table>
		</fieldset>
	</div>
	<div>
		<footer>footer정보</footer>
	</div>
</body>
</html>