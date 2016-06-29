package com.kitri.myapp.busket;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.kitri.myapp.sell.SellBoard;

@Component("busketService")
public class ServiceImple implements Service {
	@Resource(name="sqlSession")
	private SqlSession SqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		SqlSession = sqlSession;
	}

	@Override
	public SellBoard getSellBoardBynum(int num) {
		BusketMapper busketMapper = SqlSession.getMapper(BusketMapper.class);
		return busketMapper.select(num);
	}

	@Override
	public List<Busket> getBusketList(int m_num) {
		BusketMapper busketMapper = SqlSession.getMapper(BusketMapper.class);
		return busketMapper.selectAll(m_num);
	}

	@Override
	public void InsertBusket(Busket b) {
		BusketMapper busketMapper = SqlSession.getMapper(BusketMapper.class);
		busketMapper.insert(b);
	}

	@Override
	public void CancelBusket(int bk_no) {
		BusketMapper busketMapper = SqlSession.getMapper(BusketMapper.class);
		busketMapper.delete(bk_no);
	}

}
