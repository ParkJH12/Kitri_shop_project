package com.kitri.myapp.member;

import org.apache.ibatis.annotations.Param;

public interface JoinMapper {

	void insert(Join j);

	Join select_name(String name);
	
	Join select_email(String name);
	
	Join select_m_num(String m_num);

	void update(Join j);

	void delete(String name);

	void cashUp(@Param("cash")int cash, @Param("m_num")int m_num);
	
}
