package com.ict.dao;

import java.util.List;

import com.ict.vo.BVO;
import com.ict.vo.FVO;
import com.ict.vo.MVO;
import com.ict.vo.VO;

public interface MyDAO 
{

	
	// =======================================================================
	
	// id 중복 체크 
	int selectIdChk(String id) throws Exception;
	
	// join
	int insertJoin(MVO mvo) throws Exception;
	
	// id 확인
	int selectId(String id) throws Exception;
	
	// 원글 삽입
	int InsertBVO(BVO bvo) throws Exception;
	
	// 원글 삽입
	int InsertBVO2(BVO bvo) throws Exception;
	
	// 게시물의 수
	int selectCount() throws Exception;
	
	// 게시물의 수
	int selectCount2() throws Exception;
	
	// 원글 리스트
	List<BVO> selectList(int begin, int end) throws Exception;
	
	// 원글 리스트
	List<BVO> selectList2(int begin, int end) throws Exception;
	
	// 원글 리스트
	List<BVO> selectmyList(int begin, int end) throws Exception;
	
	// 원글 리스트
	List<BVO> selectmyList2(String id) throws Exception;
	
	// 원글 리스트
	List<VO> selectfoodList(String id) throws Exception;
	
	// 관리자 확인
	int selectMaster(MVO mvo) throws Exception;
	
	// id, pw 확인
	int selectId_PwChk(MVO mvo) throws Exception;
	
	// id 찾기
	String selectIdFind(MVO mvo) throws Exception;
	
	// pw 찾기
	String selectPwFind(MVO mvo) throws Exception;
	
	// 리스트 하나 받기
	BVO selectOneList(String idx) throws Exception;
	
	// 원글 업데이트
	int updateList(BVO bvo) throws Exception;
	
	// 원글 삭제
	int delete(String idx) throws Exception;
	
	// foodlist 삭제
	int deletefood(String id) throws Exception;
	
	// 비번 바꾸기
	int updatePw(MVO mvo) throws Exception;
	
	// 번호 바꾸기
	int updatePhone(MVO mvo) throws Exception;
	
	// 가게 등록
	int insertVO(VO vo) throws Exception;
	
	// onelist
	VO selectVO(VO vo) throws Exception;
	
	// FVO list
	List<FVO> selectFVOList(String restaurant) throws Exception;
	
	// FVO 삽입
	int InsertFVO(FVO fvo) throws Exception;
	
	// FVO onelist
	FVO selectFVOone(String idx) throws Exception;
	
	// star 점수계산
	int selectStar(String restaurant) throws Exception;
	
	// star 점수계산
	int selectlike(String restaurant) throws Exception;
	
	// FVO count
	int selectFVOcount(String restaurant) throws Exception;
	
	// vo star, like 점수 넣기
	int updatestar_like(VO vo) throws Exception;
	
	// main에 보여줄 list
	List<VO> selectMain() throws Exception;
	
	// main에 보여줄 list2
	List<VO> selectMain2() throws Exception;
	
	// choice
	List<VO> selectchoice(String search) throws Exception;
	
	// choice2
	List<VO> selectchoice2(String search) throws Exception;
	
	
	
	// search star
	List<VO> selectstar1(String restaurant) throws Exception;
		
	// search like
	List<VO> selectlike1(String restaurant) throws Exception;
	
	// search 거리
	List<VO> selectSearch1(String str, String str2, String restaurant) throws Exception;
	
	// search star2
	List<VO> selectstar2(String food_name) throws Exception;
			
	// search like2
	List<VO> selectlike2(String food_name) throws Exception;
	
	// search 거리2
	List<VO> selectSearch2(String str, String str2, String food_name) throws Exception;
}
