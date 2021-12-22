package com.hk.page.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.page.vo.PageVO;

@Repository
public class PageDAO {

	@Autowired
	SqlSession sqlSession;

	public List<PageVO> listPage(Map<String, Integer> pageMap) {
		// TODO Auto-generated method stub
		List<PageVO> pageVO = sqlSession.selectList("mapper.page.selectAllPage", pageMap);
		
		return pageVO;
	}

	public int pageAdd(PageVO pageVO) {
		// TODO Auto-generated method stub
		int ret = sqlSession.insert("mapper.page.insertPage", pageVO);
		return ret;
	}

	public PageVO pageList(int pageNO) {
		// TODO Auto-generated method stub
		PageVO pageVO = sqlSession.selectOne("mapper.page.selectOnePage", pageNO);
		return pageVO;
	}

	public int bookViewUpdate(PageVO pageVO) {
		// TODO Auto-generated method stub
		int ret = sqlSession.update("mapper.page.viewUpdateBook", pageVO);
		return ret;
	}

	public Integer selectSeries(int bookNO) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mapper.page.selectSeries", bookNO);
	}

	public int selectTotPage(int bookNO) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mapper.page.selectTotPage", bookNO);
	}

	// lastSeries 불러오기
	public int selectLastSeries(int pageNO) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mapper.page.selectLastSeries", pageNO);
	}

	public int deleteChildPage(int bookNO) {
		// TODO Auto-generated method stub
		return sqlSession.update("mapper.page.deleteChildPage" , bookNO);
	}

	public int deleteOnePage(int pageNO) {
		// TODO Auto-generated method stub
		return sqlSession.update("mapper.page.deleteOnePage", pageNO);
	}


}
