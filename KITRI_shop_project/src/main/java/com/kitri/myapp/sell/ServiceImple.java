package com.kitri.myapp.sell;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

@Component("sellboardService")
public class ServiceImple implements Service {

	@Resource(name="sqlSession")
	private SqlSession SqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		SqlSession = sqlSession;
	}

	@Override
	public void WriteSellBoard(SellBoard s) {
		BoardMapper boardMapper = SqlSession.getMapper(BoardMapper.class);
		boardMapper.insert(s);
	}

	@Override
	public SellBoard getSellBoardBynum(int num) {
		BoardMapper boardMapper = SqlSession.getMapper(BoardMapper.class);
		return boardMapper.select(num);
	}

	@Override
	public List<SellBoard> getSellBoardRoot() {
		BoardMapper boardMapper = SqlSession.getMapper(BoardMapper.class);
		return boardMapper.selectAll();
	}

	@Override
	public List<SellBoard> getSellBoardByParentNum(int parentNum) {
		BoardMapper boardMapper = SqlSession.getMapper(BoardMapper.class);
		return boardMapper.selectByParentNum(parentNum);
	}

	@Override
	public void editSellBoard(SellBoard s) {
		BoardMapper boardMapper = SqlSession.getMapper(BoardMapper.class);
		boardMapper.update(s);
	}

	@Override
	public void delSellBoard(int num) {
		BoardMapper boardMapper = SqlSession.getMapper(BoardMapper.class);
		boardMapper.delete(num);
	}

	@Override
	public List getSellBoardByWriter(String writer) {
		BoardMapper boardMapper = SqlSession.getMapper(BoardMapper.class);
		return boardMapper.selectByWriter(writer);
	}

	@Override
	public List getSellBoardBytitle(String title) {
		BoardMapper boardMapper = SqlSession.getMapper(BoardMapper.class);
		return boardMapper.selectBytitle(title);
	}

	@Override
	public List getSellBoardByContent(String content) {
		BoardMapper boardMapper = SqlSession.getMapper(BoardMapper.class);
		return boardMapper.selectByContent(content);
	}

}
