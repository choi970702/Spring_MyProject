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
	}
	#log_btn
	{
		width: 15%;
		height: 100px;
		margin-left: 5%;
		margin-top: 4%;
		margin-bottom: 4%;
	}
	.inp
	{
		margin-left: 3%;
	}
	#log_div
	{
		text-align: center;
		margin: auto;
	}
	.log_btn
	{
		width: 30%;
		height: 60px;
	}
	#find
	{
		font-size: 15px;
		text-align: center;
		margin-top: 3%;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	function master(f) 
	{
		f.action="master_ok.do";
		f.submit();
		
	}
	function go_login(f) 
	{
		$.ajax({
			url:"id_pw_chk.do",
			method:"get",
			data : "id="+$("#id").val()+"&pw="+$("#pw").val()+"&login="+f.login.value,
			dataType : "text",
			async : false,
			success : function(data){
				if(data == "1")
				{
					alert("로그인 성공");
					location.href = "main.do?cPage=1";
				}else if (data != "1") 
				{
					alert("아이디와 비밀번호를 확인해 주세요.");
					$("#id").val("");
					$("#pw").val("");
					$("#id").focus();
					
				}
			},
			error : function() {
				alert("오류");
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
			<form>
				<div id="id_pw">
					ID <input type="text" id="id" name="id" placeholder="아이디 입력" class="inp"><br>
					PW <input type="text" id="pw" name="pw" placeholder="비밀번호 입력" class="inp"><br>
					<input type="radio" class="login" name="login" value="2">영업주로 로그인
					<input type="radio" class="login" name="login" value="1" checked="checked">일반 사용자로 로그인
				</div>
				<div>
					<input type="button" value="로그인" id="log_btn" onclick="go_login(this.form)">
				</div>
				<div id="log_div">
					<input type="button" value="카카오톡 아이디로 로그인" class="log_btn">
					<input type="button" value="관리자로 로그인" class="log_btn" onclick="master(this.form)">
				</div>
				<div id="find">
					<a href="idfind.do"> ID 찾기 </a> |
					<a href="pwfind.do"> PW 찾기 </a>
				</div>
			</form>
		</fieldset>
	</div>
	<div>
		<footer>footer정보</footer>
	</div>
</body>
</html>