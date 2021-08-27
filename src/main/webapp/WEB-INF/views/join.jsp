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
		width: 90%;
		margin-top: 5%;
		margin-bottom: 5%;
		text-align: center;
		margin-left: 5%;
		height: 350px;
	}
	input
	{
		margin-top: 1%;
	}
	#join
	{
		width: 10%;
		height: 30px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	function join(f) 
	{
		if(f.pw.value != f.pw_test.value)
		{
			alert("비밀번호가 다릅니다.");
			
			
		}else
		{
			alert("비밀번호 사용가능");
			
		}
	}
	/* $("#btn1").click(function() {

		var chk = false;
		$.ajax({
			url : "id_chk.do",
			method: "post",
			data : "id="+$("#id").val(),
			dataType : "text",
			async : false,
			success : function(data) {
			   if(data=='1'){
				   alert("중복된 아이디 입니다.");
				   $("#ptag").style.display="none";
				   $("#id").val('');
				   $("#id").focus();
			   }else{
				   alert("사용 가능한 아이디 입니다.");
				   $("#ptag").attr("disabled", false);
				   chk = true;
			   }
			},
			error : function() {
				alert("읽기실패");
			}
		});
			return false;

	}); */
	 function id_test(f) 
	{
		
		// ajax를 이용해서 비밀번호 맞는지 체크하기
		$.ajax({
			url:"id_chk.do",
			method:"post",
			data : "id="+$("#id").val(),
			dataType : "text",
			async : false,
			success : function(data){
				if (data == "1") 
				{
					document.getElementById("ptag").style.display="none";
					alert("아이디가 중복되었습니다.");
					$("#ptag").style.display="none";
					$("#id").val("");
					$("#id").focus();
					
				}else(data == "0")
				{
					document.getElementById("ptag").style.display="block";
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
			<form action="join_ok.do" method="post">
				*아이디 : <input type="text" id="id" name="id" placeholder="아이디 입력" >
				<input type="button" value="중복 확인" onclick="id_test(this.form)"><br>
				<!-- <input type="button" value="중복 확인" id="btn1"><br> -->
				<p id="ptag" style="font-size: 3px; display: none;">사용 가능한 아이디 입니다.</p>
				*비밀번호 : <input type="password" name="pw" placeholder="비밀번호 입력" ><br>
				*비밀번호 재입력 : <input type="password" name="pw_test" placeholder="비밀번호 입력" >
					<input type="button" value="비밀번호 체크" onclick="join(this.form)"><br>
				*전화번호 : <input type="number" name="tel_num" placeholder="전화번호 입력" ><br>
				성별 : <input type="radio" name="gender" value="남자">남자
					<input type="radio" name="gender" value="여자">여자<br>
				*이메일 : <input type="email" name="email" placeholder="이메일 입력" ><br>
				사용자 : <input type="radio" name="user" value="2">영업주
					<input type="radio" name="user" value="1">일반 사용자<br>
					<input type="submit" value="회원가입">
				
			</form>
		</fieldset>
	</div>
	<div>
		<footer>footer정보</footer>
	</div>
</body>
</html>