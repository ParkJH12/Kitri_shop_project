package com.kitri.myapp.busket;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.kitri.myapp.sell.SellBoard;

@Component("busketService")
public class ServiceImple implements BusketMapper {

	@Resource(name="sqlSession")
	private SqlSession Sqlsession;
	
	public void setSqlsession(SqlSession sqlsession) {
		this.Sqlsession = sqlsession;
	}

	@Override
	public void insert(Busket b) {
		BusketMapper busketMapper = Sqlsession.getMapper(BusketMapper.class);
		busketMapper.insert(b);
	}

	@Override
	public void delete(Busket b) {
		BusketMapper busketMapper = Sqlsession.getMapper(BusketMapper.class);
		busketMapper.delete(b);
	}

	@Override
	public List<Busket> selectAll() {
		BusketMapper busketMapper = Sqlsession.getMapper(BusketMapper.class);
		return busketMapper.selectAll();
	}

	@Override
	public SellBoard select(int num) {
		BusketMapper busketMapper = Sqlsession.getMapper(BusketMapper.class);
		return busketMapper.select(num);
	}

}
