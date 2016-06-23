package com.kitri.myapp.board;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

@Component("boardService")
public class ServiceImple implements Service {
	
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
		
	@Override
	public void WriteArticle(Article a) {
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		boardMapper.insert(a);
	}

	@Override
	public Article getArticleBynum(int num) {
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		return boardMapper.select(num);
	}

	@Override
	public List<Article> getArticleRoot() {
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		return boardMapper.selectAll();
	}

	@Override
	public List<Article> getArticleByParentNum(int parentNum) {
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		return boardMapper.selectByParentNum(parentNum);
	}

	@Override
	public void editArticle(Article a) {
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		boardMapper.update(a);
		
	}

	@Override
	public void delArticle(int num) {
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		boardMapper.delete(num);
		
	}

	@Override
	public List getArticleByWriter(String writer) {
		// TODO Auto-generated method stub
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		
		return boardMapper.selectByWriter(writer);
	}

	@Override
	public List getArticleBytitle(String title) {
		// TODO Auto-generated method stub
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		return boardMapper.selectBytitle(title);
	}

}
