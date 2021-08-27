<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		VO : 프로젝트 관련 DB
			(수정해야함 로그인확인 등등)
		MVO : Member관련 DB
			idx, id, pw, phone, mail, u_id, gender
			수정) u_id number로 바꿔서 0=관리자, 1=일반사용자, 2, 영업주
			
		BVO : board 관현 DB
			b_idx, id, idx, writer, title, content, pwd, groups, step, lev,
	 					regdate, file_name
	 		수정) idx 외래키 삭제, id, pwd 삭제 || 삭제 안할거면 idx를 얻어와서 MVO의 id, pw를 넣어준다.
	 			답글 관련 삭제
	 		
		FVO : 음식, 음식점 관련 DB 
			String Food_name, restaurant, place, file_name
			MultipartFile f_name
			float star
			boolean like
		
	-->
</body>
</html>