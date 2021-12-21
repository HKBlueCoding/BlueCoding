package com.hk.review.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.review.vo.ReviewVO;

@Repository
public class ReviewDAO {

	@Autowired
	SqlSession sqlSession;

	public List<ReviewVO> listReview(int bookNO) {
		// TODO Auto-generated method stub
		List<ReviewVO> reviewVO = sqlSession.selectList("mapper.review.selectAllReview", bookNO);
		
		return reviewVO;
	}
	
	public int insertReview(ReviewVO reviewVO) {
		// TODO Auto-generated method stub
		int ret = sqlSession.insert("mapper.review.insertReview", reviewVO);
		return ret;
	}

	public int reviewUpdate(ReviewVO reviewVO) {
		// TODO Auto-generated method stub
		int ret = sqlSession.update("mapper.review.updateReview", reviewVO);
		return ret;
	}
}
