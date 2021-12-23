package com.hk.news.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.news.vo.NewsVO;

@Repository
public class NewsDAO {
	
	@Autowired
	SqlSession sqlSession;

	public int newsAdd(NewsVO newsVO) {
		// TODO Auto-generated method stub
		int ret = sqlSession.insert("mapper.news.insertNews", newsVO);
		return ret;
	}

	public List<NewsVO> listNoticeNews(Map<String, Integer> pageMap) {
		// TODO Auto-generated method stub
		List<NewsVO> noticeList = sqlSession.selectList("mapper.news.selectAllNoticeNews", pageMap);
		return noticeList;
	}
	
	public List<NewsVO> listEventNews(Map<String, Integer> pageMap) {
		// TODO Auto-generated method stub
		List<NewsVO> evnetList = sqlSession.selectList("mapper.news.selectAllEventNews",pageMap);
		return evnetList;
	}	

	public NewsVO oneNews(int newsNO) {
		// TODO Auto-generated method stub
		NewsVO newsVO = sqlSession.selectOne("mapper.news.selectOneNews", newsNO);
		return newsVO;
	}

	public int newsUpdate(NewsVO newsVO) {
		// TODO Auto-generated method stub
		int ret = sqlSession.update("mapper.news.updateNews", newsVO);
		return ret;
	}
	
	// [NewsNO 조회]
	public NewsVO selectNewsNO(NewsVO newsVO) {
		// TODO Auto-generated method stub
		
		// 작성한 정보(id, imageFile 등등으로 조회해서 중복방지)
		newsVO = sqlSession.selectOne("mapper.news.selectNewsNO", newsVO);
		
		return newsVO;
	}

	public int selectTotNotice() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mapper.news.selectTotNotice");
	}

	public int selectTotEvent() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mapper.news.selectTotEvent");
	}

	public int deleteNews(int newsNO) {
		// TODO Auto-generated method stub
		int ret = sqlSession.update("mapper.news.deleteNews", newsNO);
		return ret;
	}
}
