package com.kitri.myapp.order;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.kitri.myapp.member.Join;
import com.kitri.myapp.member.JoinMapper;
import com.kitri.myapp.sell.BoardMapper;
import com.kitri.myapp.sell.SellBoard;

@Component("orderService")
public class ServiceImple implements Service {
	@Resource(name="sqlSession")
	private SqlSession SqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		SqlSession = sqlSession;
	}

	@Override
	public List<Order> getOrderList() {
		OrderMapper orderMapper = SqlSession.getMapper(OrderMapper.class);
		return orderMapper.select_name();
	}

	@Override
	public void InsertOrder(Order o) {
		OrderMapper orderMapper = SqlSession.getMapper(OrderMapper.class);
		orderMapper.insert(o);
	}

	@Override
	public void CancelOrder(int order_no) {
		OrderMapper orderMapper = SqlSession.getMapper(OrderMapper.class);
		orderMapper.delete(order_no);
	}

	@Override
	public Join getJoin(String name) {
		JoinMapper joinMapper = SqlSession.getMapper(JoinMapper.class);
		return joinMapper.select_name(name);
	}

	@Override
	public SellBoard getSellBoardBynum(int num) {
		BoardMapper boardMapper = SqlSession.getMapper(BoardMapper.class);
		return boardMapper.select(num);
	}

	

}