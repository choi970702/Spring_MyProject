<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{background-color: #F6F6F6;}
	table
	{
		width: 30%;
		float: left;
		margin-left: 2%;
		height: 500px;
	}
	th
	{
		background-color: darkgray;
	}
	table, tr, td
	{
		border: 1px solid gray;
		text-align: center;
		
	}
	h3{text-align: center;}
	.btn
	{
		text-decoration: none;
	}
</style>
<script type="text/javascript">
	function home() 
	{
		location.href="main.do?cPage=${cPage}";
	}
</script>
</head>
<body>
	<div style="text-align: center;">
		<button onclick="home()">사이트로 가기</button>
		<h2>관리자 페이지</h2>
	</div>
	<div>
		<table>
			<thead>
				<tr>
					<th colspan="3"><h3><a>회원관리</a></h3></th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${empty list}">
				 	  <tr><td colspan="3"><h2>원하시는 자료가 존재하지 않습니다</h2></td></tr>
				 	  <tr><td colspan="3">예시)</td></tr>
				 	  <tr>
				 	  	<td style="width: 50%;">회원 1</td>
						<td><button onclick="">쪽지 쓰기</button></td>
						<td><button onclick="">삭제</button></td>
				 	  </tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="k" items="${list}" varStatus="vs">
							<tr>
								<td style="width: 50%;">${k.id }<td>
								<td><button onclick="">쪽지 쓰기</button></td>
								<td><button onclick="">삭제</button></td>
							</tr>
						</c:forEach>
					</c:otherwise>
					</c:choose>
				<!-- <tr>
					<td style="width: 50%;">회원 1</td>
					<td><button onclick="">쪽지 쓰기</button></td>
					<td><button onclick="">삭제</button></td>
				</tr> -->
			</tbody>
			<tfoot>
				<tr>
					<td colspan="3">
						
						<c:choose>
							<c:when test="${pvo.beginBlock <= pvo.pagePerBlock }">
								<span style="color: gray; padding: 5px; border: none;">이전으로</span>
							</c:when>
							<c:otherwise>
								<span style="color: tomato; padding: 5px; border: 1px solid tomato">
									<a class="btn" href="master.do?cPage=${pvo.beginBlock-pvo.pagePerBlock}">이전으로</a>
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
											<a class="btn" href="master.do?cPage=${k}">${k}</</a>
										</span>
									</c:otherwise>
								</c:choose>
					   </c:forEach>
						&nbsp;&nbsp;
						
						<c:choose>
							<c:when test="${pvo.endBlock >= pvo.totalPage }">
								<span style="color: gray; padding: 5px; border: none;">다음으로</span>
							</c:when>
							<c:otherwise>
								<span style="color: tomato; padding: 5px; border: 1px solid tomato">
									<a class="btn" href="master.do?cPage=${pvo.beginBlock+pvo.pagePerBlock}">다음으로</a>
								</span>
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</tfoot>
		</table>
		
		
		<table>
			<thead>
				<tr>
					<th colspan="3"><h3>게시판 관리</h3></th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${empty list}">
				 	  <tr><td colspan="3"><h2>원하시는 자료가 존재하지 않습니다</h2></td></tr>
				 	  <tr><td colspan="3">예시)</td></tr>
				 	  <tr>
				 	  	<td style="width: 50%;">게시판</td>
						<td><button onclick="">답글 쓰기</button></td>
						<td><button onclick="">삭제</button></td>
				 	  </tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="k" items="${list}" varStatus="vs">
							<tr>
								<td style="width: 50%;">${k.id }<td>
								<td><button onclick="">쪽지 쓰기</button></td>
								<td><button onclick="">삭제</button></td>
							</tr>
						</c:forEach>
					</c:otherwise>
					</c:choose>
				<!-- <tr>
					<td style="width: 50%;">게시판</td>
					<td><button onclick="">답글 쓰기</button></td>
					<td><button onclick="">삭제</button></td>
				</tr> -->
			</tbody>
			<tfoot>
				<tr>
					<td colspan="3">
						
						<c:choose>
							<c:when test="${pvo.beginBlock <= pvo.pagePerBlock }">
								<span style="color: gray; padding: 5px; border: none;">이전으로</span>
							</c:when>
							<c:otherwise>
								<span style="color: tomato; padding: 5px; border: 1px solid tomato">
									<a class="btn" href="master.do?cPage=${pvo.beginBlock-pvo.pagePerBlock}">이전으로</a>
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
											<a class="btn" href="master.do?cPage=${k}">${k}</</a>
										</span>
									</c:otherwise>
								</c:choose>
					   </c:forEach>
						&nbsp;&nbsp;
						
						<c:choose>
							<c:when test="${pvo.endBlock >= pvo.totalPage }">
								<span style="color: gray; padding: 5px; border: none;">다음으로</span>
							</c:when>
							<c:otherwise>
								<span style="color: tomato; padding: 5px; border: 1px solid tomato">
									<a class="btn" href="master.do?cPage=${pvo.beginBlock+pvo.pagePerBlock}">다음으로</a>
								</span>
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</tfoot>
		</table>
		
		
		<table>
			<thead>
				<tr>
					<th colspan="3"><h3>문의사항</h3></th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${empty list}">
				 	  <tr><td colspan="3"><h2>원하시는 자료가 존재하지 않습니다</h2></td></tr>
				 	  <tr><td colspan="3">예시)</td></tr>
				 	  <tr>
				 	  	<td style="width: 50%;">문의사항</td>
						<td><button onclick="">답글 쓰기</button></td>
						<td><button onclick="">삭제</button></td>
				 	  </tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="k" items="${list}" varStatus="vs">
							<tr>
								<td style="width: 50%;">${k.id }<td>
								<td><button onclick="">쪽지 쓰기</button></td>
								<td><button onclick="">삭제</button></td>
							</tr>
						</c:forEach>
					</c:otherwise>
					</c:choose>
				<!-- <tr>
					<td style="width: 50%;">문의사항</td>
					<td><button onclick="">답글 쓰기</button></td>
					<td><button onclick="">삭제</button></td>
				</tr> -->
			</tbody>
			<tfoot>
				<tr>
					<td colspan="3">
						
						<c:choose>
							<c:when test="${pvo.beginBlock <= pvo.pagePerBlock }">
								<span style="color: gray; padding: 5px; border: none;">이전으로</span>
							</c:when>
							<c:otherwise>
								<span style="color: tomato; padding: 5px; border: 1px solid tomato">
									<a class="btn" href="master.do?cPage=${pvo.beginBlock-pvo.pagePerBlock}">이전으로</a>
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
											<a class="btn" href="master.do?cPage=${k}">${k}</</a>
										</span>
									</c:otherwise>
								</c:choose>
					   </c:forEach>
						&nbsp;&nbsp;
						
						<c:choose>
							<c:when test="${pvo.endBlock >= pvo.totalPage }">
								<span style="color: gray; padding: 5px; border: none;">다음으로</span>
							</c:when>
							<c:otherwise>
								<span style="color: tomato; padding: 5px; border: 1px solid tomato">
									<a class="btn" href="master.do?cPage=${pvo.beginBlock+pvo.pagePerBlock}">다음으로</a>
								</span>
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
</body>
</html>