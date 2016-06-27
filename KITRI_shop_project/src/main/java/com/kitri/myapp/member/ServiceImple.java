package com.kitri.myapp.member;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

@Component("joinService")
public class ServiceImple implements Service {
	
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void addJoin(Join j) {
		JoinMapper joinMapper = sqlSession.getMapper(JoinMapper.class);
		joinMapper.insert(j);

	}

	@Override
	public Join getJoin(String name) {
		JoinMapper joinMapper = sqlSession.getMapper(JoinMapper.class);
		return joinMapper.select_name(name);
	}

	@Override
	public boolean login(Join j) {
		Join y = getJoin(j.getName());
		if (y != null && y.getPass().equals(j.getPass())) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public void editJoin(Join j) {
		JoinMapper joinMapper = sqlSession.getMapper(JoinMapper.class);
		joinMapper.update(j);
	}

	@Override
	public void delJoin(String name) {
		JoinMapper joinMapper = sqlSession.getMapper(JoinMapper.class);
		joinMapper.delete(name);
	}

	@Override
	public Join getJoin2(String email) {
		JoinMapper joinMapper = sqlSession.getMapper(JoinMapper.class);
		return joinMapper.select_name(email);
	
	}

	@Override
	public void cashUp(Join cash) {
		JoinMapper joinMapper = sqlSession.getMapper(JoinMapper.class);
		joinMapper.cashUp(cash);
	}

}
