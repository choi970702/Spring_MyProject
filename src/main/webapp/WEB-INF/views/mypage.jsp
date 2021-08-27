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
	table, tr, td
	{
		border: 1px solid gray;
	}
	table
	{
		width: 30%;
		float: left;
		margin-left: 3%;
		height: 300px;
		margin-top: 3%;
		text-align: center;
	}
	th{background-color: darkgray;}
	td{background-color: #F6F6F6;}
</style>
<script type="text/javascript">
	function write1() 
	{
		location.href="write1.do?cPage=${cPage}";
	}
	function write2(f) 
	{
		location.href="write3.do?cPage=${cPage}&idx="+f;
	}
	function del(f) {
		location.href="del.do?cPage=${cPage}&idx="+f;
	}
	function boardlist() 
	{
		location.href="board.do?cPage=${cPage}";
	}
	function pw_change(f) {
		alert("변경성공");
		location.href="pw_change.do?cPage=${cPage}&id=${id}&pw="+f.pw.value;
	}
	function tel_change(f) {
		alert("변경성공");
		location.href="tel_change.do?cPage=${cPage}&id=${id}&phone="+f.phone.value;
	}
	function food_del(f) {
		alert("즐겨 찾기 취소");
		location.href="food_del.do?cPage=${cPage}&restaurant="+f;
	}
	function restaurant() {
		alert("가게 등록하러 갑니다.");
		location.href="restaurant.do?cPage=${cPage}&id=${id}";
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
			<div><a href="mypage.do?cPage=${cPage }">마이페이지</a></div>
		</div>
	</div>
	<div>
		<table>
			<thead>
				<tr>
					<th colspan="3">나의 문의</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${login_ok != '1' }">
						<tr>
							<td colspan="4"><h2>로그인 먼저 하세요</h2></td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:choose>
							<c:when test="${empty mylist2}">
								<tr>
									<td colspan="4"><h2>원하시는 자료가 존재하지 않습니다</h2></td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="k" items="${mylist2}" varStatus="vs">
									<tr>
										<td style="text-align: left;"><a
											href="board_onelist.do?idx=${k.idx}&cPage=${pvo.nowPage}">${k.title }</a>
										</td>
										<td><button onclick="write2(${k.idx})">수정하기</button></td>
										<td><button onclick="del(${k.idx})">삭제</button></td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>

					</c:otherwise>
				</c:choose>
				<!-- <tr>
					<td colspan="3">예시</td>
				</tr>
				<tr>
					<td style="width: 50%;"><a>문의1</a></td>
					<td><button onclick="write2()">수정하기</button></td>
					<td><button>삭제</button></td>
				</tr>
				<tr>
					<td colspan="4">
						<button onclick="write1()">작성</button>
					</td>
				</tr> -->
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
									<a href="mypage.do?cPage=${pvo.beginBlock-pvo.pagePerBlock}">이전으로</a>
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
											<a href="mypage.do?cPage=${k}">${k}</</a>
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
									<a href="mypage.do?cPage=${pvo.beginBlock+pvo.pagePerBlock}">다음으로</a>
								</span>
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</tfoot>
		</table>
		
		<form>
			<table>
				<c:choose>
					<c:when test="${login_ok == 1 }">
						<thead>
							<tr>
								<th colspan="2">정보 수정</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td colspan="2">비밀번호 번경</td>
							</tr>
							<tr>
								<td><input type="password" id="pw" name="pw"></td>
								<td><input type="button" value="클릭" onclick="pw_change(this.form)"></td>
							</tr>
							<tr>
								<td colspan="2">연락처 번경</td>
							</tr>
							<tr>
								<td><input type="tel" id="phone" name="phone"></td>
								<td><input type="button" value="클릭" onclick="tel_change(this.form)"></td>
							</tr>
						</tbody>
						<tfoot>

						</tfoot>

					</c:when>
					<c:otherwise>
						<thead>
							<tr>
								<th colspan="2">정보 수정</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td colspan="2">비밀번호 번경</td>
							</tr>
							<tr>
								<td>로그인을 해야 이용할수 있습니다.</td>
							</tr>
							<tr>
								<td colspan="2">연락처 번경</td>
							</tr>
							<tr>
								<td>로그인을 해야 이용할수 있습니다.</td>
							</tr>
						</tbody>
						<tfoot>

						</tfoot>
					</c:otherwise>
				</c:choose>
			</table>
		</form>
		
		<table>
			<thead>
				<c:choose>
					<c:when test="${u_id == '1' }">
						<tr>
							<th colspan="2">좋아하는 음식점 리스트</th>
						</tr>
					</c:when>
					<c:otherwise>
						<tr>
							<th colspan="2">내 가게 관리</th>
						</tr>
					</c:otherwise>
				</c:choose>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${login_ok == '1' }">
						<c:choose>
							<c:when test="${u_id == '1' } ">
								<c:forEach var="k" items="${foodlist}" varStatus="vs">
									<tr>
									<!-- id 말고 restaurant받아가서 아이디 확인해서 삭제하는걸로 수정하자.  -->
										<td style="text-align: left;"><a
											href="onelist.do?id=${id}&cPage=${cPage}&restaurant=${k.restaurant}">${k.restaurant }</a>
										</td>
										<td><button onclick="food_del(${k.restaurant})">삭제</button></td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<c:forEach var="k" items="${foodlist}" varStatus="vs">
									<tr>
										<td style="text-align: left;"><a
											href="onelist.do?id=${id}&cPage=${pvo.nowPage}&restaurant=${k.restaurant}">${k.restaurant }</a>
										</td>
									</tr>
								</c:forEach>
								<tr>
									<td><button onclick="restaurant()">등록하러 가기</button></td>
								</tr>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:otherwise>
						<tr>
							<td>로그인을 해야 이용할수 있습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
				<!-- <tr>
					<td>가게 1</td>
					<td><button>삭제</button></td>
				</tr>
				<tr>
					<td>가게 2</td>
					<td><button>삭제</button></td>
				</tr> -->
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
									<a href="mypage.do?cPage=${pvo.beginBlock-pvo.pagePerBlock}">이전으로</a>
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
											<a href="mypage.do?cPage=${k}">${k}</</a>
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
									<a href="mypage.do?cPage=${pvo.beginBlock+pvo.pagePerBlock}">다음으로</a>
								</span>
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
	<div>
		<footer>footer정보</footer>
	</div>
</body>
</html>