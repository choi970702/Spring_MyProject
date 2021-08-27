package com.ict.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.dao.MyDAO;
import com.ict.vo.BVO;
import com.ict.vo.FVO;
import com.ict.vo.MVO;
import com.ict.vo.VO;

@Service
public class MyServiceImpl implements MyService
{
	@Autowired
	private MyDAO myDAO;



	

	// =================================================================
	
	@Override
	public int selectIdChk(String id) throws Exception {
		return myDAO.selectIdChk(id);
	}

	@Override
	public int insertJoin(MVO mvo) throws Exception {
		return myDAO.insertJoin(mvo);
	}

	@Override
	public int selectId(String id) throws Exception {
		// TODO Auto-generated method stub
		return myDAO.selectId(id);
	}

	@Override
	public int InsertBVO(BVO bvo) throws Exception {
		return myDAO.InsertBVO(bvo);
	}
	
	@Override
	public int InsertBVO2(BVO bvo) throws Exception {
		return myDAO.InsertBVO2(bvo);
	}
	
	@Override
	public int selectCount() throws Exception {
		return myDAO.selectCount();
	}
	
	@Override
	public int selectCount2() throws Exception {
		return myDAO.selectCount2();
	}
	
	@Override
	public List<BVO> selectList(int begin, int end) throws Exception {
		return myDAO.selectList(begin, end);
	}
	
	@Override
	public List<BVO> selectList2(int begin, int end) throws Exception {
		return myDAO.selectList2(begin, end);
	}
	
	@Override
	public List<BVO> selectmyList(int begin, int end) throws Exception {
		return myDAO.selectmyList(begin, end);
	}
	
	@Override
	public List<BVO> selectmyList2(String id) throws Exception {
		return myDAO.selectmyList2(id);
	}
	
	@Override
	public List<VO> selectfoodList(String id) throws Exception {
		return myDAO.selectfoodList(id);
	}
	

	@Override
	public int selectMaster(MVO mvo) throws Exception {
		return myDAO.selectMaster(mvo);
	}

	@Override
	public int selectId_PwChk(MVO mvo) throws Exception {
		return myDAO.selectId_PwChk(mvo);
	}

	@Override
	public String selectIdFind(MVO mvo) throws Exception {
		return myDAO.selectIdFind(mvo);
	}
	
	@Override
	public String selectPwFind(MVO mvo) throws Exception {
		return myDAO.selectPwFind(mvo);
	}
	
	@Override
	public BVO selectOneList(String idx) throws Exception {
		return myDAO.selectOneList(idx);
	}
	
	@Override
	public int updateList(BVO bvo) throws Exception {
		return myDAO.updateList(bvo);
	}
	
	@Override
	public int delete(String idx) throws Exception {
		return myDAO.delete(idx);
	}
	
	@Override
	public int deletefood(String id) throws Exception {
		return myDAO.deletefood(id);
	}

	@Override
	public int updatePw(MVO mvo) throws Exception {
		return myDAO.updatePw(mvo);
	}

	@Override
	public int updatePhone(MVO mvo) throws Exception {
		return myDAO.updatePhone(mvo);
	}

	@Override
	public int insertVO(VO vo) throws Exception {
		return myDAO.insertVO(vo);
	}



	@Override
	public VO selectVO(VO vo) throws Exception {
		return myDAO.selectVO(vo);
	}




	@Override
	public List<FVO> selectFVOList(String restaurant) throws Exception {
		return myDAO.selectFVOList(restaurant);
	}

	@Override
	public int InsertFVO(FVO fvo) throws Exception {
		return myDAO.InsertFVO(fvo);
	}

	@Override
	public FVO selectFVOone(String idx) throws Exception {
		return myDAO.selectFVOone(idx);
	}

	@Override
	public int selectStar(String restaurant) throws Exception {
		return myDAO.selectStar(restaurant);
	}
	
	@Override
	public int selectlike(String restaurant) throws Exception {
		return myDAO.selectlike(restaurant);
	}
	
	@Override
	public int selectFVOcount(String restaurant) throws Exception {
		return myDAO.selectFVOcount(restaurant);
	}

	@Override
	public int updatestar_like(VO vo) throws Exception {
		return myDAO.updatestar_like(vo);
	}

	@Override
	public List<VO> selectMain() throws Exception {
		return myDAO.selectMain();
	}

	@Override
	public List<VO> selectMain2() throws Exception {
		return myDAO.selectMain2();
	}

	

	@Override
	public List<VO> selectchoice(String search) throws Exception {
		return myDAO.selectchoice(search);
	}

	@Override
	public List<VO> selectchoice2(String search) throws Exception {
		return myDAO.selectchoice2(search);
	}

	
	
	
	
	@Override
	public List<VO> selectstar1(String restaurant) throws Exception {
		return myDAO.selectstar1(restaurant);
	}

	@Override
	public List<VO> selectlike1(String restaurant) throws Exception {
		return myDAO.selectlike1(restaurant);
	}

	@Override
	public List<VO> selectSearch1(String str, String str2, String restaurant) throws Exception {
		return myDAO.selectSearch1(str, str2, restaurant);
	}
	
	@Override
	public List<VO> selectstar2(String food_name) throws Exception {
		return myDAO.selectstar2(food_name);
	}

	@Override
	public List<VO> selectlike2(String food_name) throws Exception {
		return myDAO.selectlike2(food_name);
	}

	@Override
	public List<VO> selectSearch2(String str, String str2, String food_name) throws Exception {
		return myDAO.selectSearch2(str, str2, food_name);
	}
	
	
	
	
	
	
	
	
}
