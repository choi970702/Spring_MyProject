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
		margin-bottom: 0px;
		padding: 10px;
	}
	a:hover
	{
		color: silver;
		cursor: pointer;
	}
	table, tr, td
	{
		border: 1px solid black;
		text-align: center;
		margin: auto;
	}
	table, form
	{
		width: 90%;
		height: 90%;
		background-color: silver;
	}
	fieldset
	{
		width: 90%;
		margin: auto;
		height: 400px;
		margin-bottom: 5%;
	}
	tr
	{
		background-color: #F6F6F6;
	}
	td > input
	{
		width: 80%;
	}
</style>
<script type="text/javascript">
	function writeok(f) 
	{
		alert("저장");
		f.action="board_ok2.do?";
		f.submit();
	}
	function writeno() 
	{
		alert("취소");
		location.href="board.do?cPage=${cPage}";
	}
</script>
</head>
<body>
	<%-- 현재 페이지에서 다른 페이지 가져오기  --%>
	<%@ include file="top.jsp" %>
	<div>
		<fieldset>
			<form method="post" enctype="multipart/form-data" >
			<table>
				<thead>
					<tr>
						<th></th><th></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%; height: 5%;">작성자</td>
						<c:choose>
							<c:when test="${login_ok == '1' }">
								<td colspan="2"><input type="text" name="id" value="${id }" readonly="readonly"></td>
							</c:when>
							<c:otherwise>
								<td colspan="2"><input type="text" name="id" value="비회원" readonly="readonly"></td>
							</c:otherwise>
						</c:choose>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2"><input type="text" name="content" placeholder="내용입력" required></td>
					</tr>
					<tr>
						<td style="height: 5%;">첨부파일</td>
						<td><input type="file" name="f_name"></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="3">
							<button value="" onclick="writeok(this.form)">저장</button>
							<button value="" onclick="writeno()">취소</button>
							<input type="hidden" name="cPage" value="${cPage }">
						</td>
					</tr>
				</tfoot>
			</table>
			</form>
		</fieldset>
	</div>
	<div>
		<footer>footer정보</footer>
	</div>
</body>
</html>