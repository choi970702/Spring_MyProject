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
		f.action="restaurant_ok.do?cPage=${cPage}";
		f.submit();
	}
	function writeno() 
	{
		alert("취소");
		location.href="mypage.do?cPage=${cPage}";
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
						<th>가게 등록</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%; height: 5%;">작성자</td>
						<td><input type="text" name="id" value="${id }" readonly="readonly"></td>
					</tr>
					<tr>
						<td style="height: 5%;">주메뉴</td>
						<td><input type="text" name="Food_name" placeholder="주메뉴입력" required></td>
					</tr>
					<tr>
						<td style="height: 5%;">가게이름</td>
						<td><input type="text" name="restaurant" placeholder="가게이름입력" required></td>
					</tr>
					<tr>
						<td style="height: 5%;">위치</td>
						<td><input type="text" name="place" placeholder="위치입력"></td>
					</tr>
					<tr>
						<td style="height: 5%;">가게 번호</td>
						<td><input type="text" name="phone" placeholder="가게 번호입력"></td>
					</tr>
					<tr>
						<td style="height: 5%;">홈페이지</td>
						<td><input type="text" name="home" placeholder="홈페이지입력"></td>
					</tr>
					<tr>
						<td style="height: 5%;">영업시간</td>
						<td><input type="text" name="restaurant_time" placeholder="영업시간입력"></td>
					</tr>
					<tr>
						<td style="height: 5%;">사진</td>
						<td><input type="file" name="f_name" placeholder="사진입력"></td>
					</tr>
					<tr>
						<td style="height: 5%;">메뉴판 사진</td>
						<td><input type="file" name="m_menupan" placeholder="사진입력"></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2">
							<button value="" onclick="writeok(this.form)">저장</button>
							<button value="" onclick="writeno()">취소</button>
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