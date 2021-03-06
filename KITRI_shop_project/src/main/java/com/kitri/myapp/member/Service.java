package com.kitri.myapp.member;

import org.apache.ibatis.annotations.Param;

public interface Service {
	
	/**
	 * 회원 추가하는 메소드
	 * @param j
	 */
	void addJoin(Join j);
	/**
	 * 회원 검색 하는 메소드
	 * @param id
	 * @return
	 */
	Join getJoin(String name);
	/**
	 * 회원 로그인 하는 메소드
	 * @param j
	 * @return
	 */
	Join getJoin2(String email);
	
	boolean login(Join j);
	/**
	 * 회원 정보 수정 하는 메소드
	 * @param j
	 */
	void editJoin(Join j);
	/**
	 * 회원 정보 삭제 하는 메소드
	 * @param id
	 */
	void delJoin(String name);
	
	
	void cashUp(@Param("cash")int cash, @Param("m_num")int m_num);
}
