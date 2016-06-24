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
			System.out.println("여기까지는된다1");
			return true;
		} else {
			System.out.println("여기까지는된다1");
			return false;
		}
	}

	@Override
	public void editJoin(Join j) {
		JoinMapper joinMapper = sqlSession.getMapper(JoinMapper.class);

		joinMapper.update(j);
	}

	@Override
	public void delJoin(String id) {
		JoinMapper joinMapper = sqlSession.getMapper(JoinMapper.class);
		joinMapper.delete(id);
	}

}
