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
	#field
	{
		margin-top: 8%;
		margin-left: 5%;
		margin-bottom: 8%;
		width: 90%;
		font-size: 20px;
		height: 300px;
	}
	#id_pw
	{
		width: 65%;
		text-align: right;
		float: left;
	}
	.inp
	{
		width: 60%;
		height: 30px;
		margin-top: 4%;
		margin-bottom: 2%;
		margin-left: 3%;
	}
	#log_btn
	{
		width: 15%;
		height: 100px;
		margin-left: 5%;
		margin-top: 4%;
		margin-bottom: 4%;
	}
	#log_div
	{
		text-align: center;
		margin: auto;
		padding-top: 10%;
	}
	.log_btn
	{
		width: 20%;
		height: 60px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	function id_find(f) 
	{
		$.ajax({
			url:"idfind_ok.do",
			method:"get",
			data: "email="+f.email.value+"&tel_num="+f.tel_num.value+
					"&pw="+f.pw.value,
			dataType : "text",
			async : false,
			success : function(data) 
			{
				if (data != ""){
					alert("id찾기 성공");
					f.here.value = data;
				}else
				{
					f.here.value = "아이디를 찾을수 없습니다.";
				}
				
			},
			error : function() 
			{
				alert("읽기실패");
			}
		});
	}
	
	
</script>
</head>
<body>
	<%-- 현재 페이지에서 다른 페이지 가져오기  --%>
	<%@ include file="top.jsp" %>
	<div>
		<fieldset id="field">
			<form id="myForm" method="get">
				<div id="id_pw">
					*이메일 <input type="email" id="email" name="email" placeholder="이메일 입력" class="inp" required><br>
					*전화번호 <input type="tel" id="tel_num" name="tel_num" placeholder="전화번호 입력" class="inp" required><br>
					*PW <input type="password" id="pw" name="pw" placeholder="비밀번호 입력" class="inp" required><br>
				</div>
				<div id="log_div">
					<input type="button" value="아이디 찾기" class="log_btn" onclick="id_find(this.form)"><br>
					아이디 : <input type="text" id="here" name="here" readonly="readonly">
				</div>
			</form>
		</fieldset>
	</div>
	<div>
		<footer>footer정보</footer>
	</div>
</body>
</html>