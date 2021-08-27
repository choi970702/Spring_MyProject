<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	table
	{
		width: 90%;
		height: 90%;
		background-color: silver;
	}
	fieldset
	{
		width: 90%;
		margin: auto;
		height: 500px;
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
		f.action="FVOboard_ok.do?cPage=${cPage}&restaurant=${restaurant}";
		f.submit();
	}
	function writeno() 
	{
		alert("취소");
		location.href="main.do?cPage=${cPage}";
	}
</script>
</head>
<body>
	<%-- 현재 페이지에서 다른 페이지 가져오기  --%>
	<%@ include file="top.jsp" %>
	<div>
		<fieldset>
			<form>
				<table>
					<thead>
						<tr>
							<th></th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="width: 20%; height: 5%;">작성자</td>
							<td><input type="text" name="id" value="${writer }"
								readonly="readonly"></td>
						</tr>
						<tr>
							<td>내용</td>
							<td>
								<input type="text" style="height: 200px;" name="content" value="${content }" placeholder="내용입력" >
							</td>
						</tr>
						<tr>
							<td>별점</td>
							<td>
								<input type="radio" name="food_star" value="1">1점
								<input type="radio" name="food_star" value="2">2점
								<input type="radio" name="food_star" value="3">3점
								<input type="radio" name="food_star" value="4">4점
								<input type="radio" name="food_star" checked="checked" value="5">5점
							</td>
						</tr>
						<tr>
							<td>추천</td>
							<td>
								<input type="radio" name="food_like" checked="checked" value="1"> 추천
								<input type="radio" name="food_like" value="0"> 추천안함
							</td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="2">
								<input type="button" style="width: 30%;" value="저장" onclick="writeok(this.form)">
								<input type="button" style="width: 30%;" value="취소" onclick="writeno()">
								<input type="hidden" name="cPage" value="${cPage }">
								<input type="hidden" name="restaurant" value="${restaurant }">
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