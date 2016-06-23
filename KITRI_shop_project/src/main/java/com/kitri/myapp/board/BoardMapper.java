package com.kitri.myapp.board;

import java.util.List;

public interface BoardMapper {
	
	/**
	 * 게시판 추가하는 거
	 * @param a
	 */
	void insert(Article a);
	/**
	 * 게시판 정보 게시글 번호로 검색
	 * @param num
	 * @return
	 */
	Article select(int num);
	
	/**
	 * 루트 게시글의 모든 정보를 리스트에 담아 반환함.
	 * @return
	 */
	List<Article> selectAll();
	
	/**
	 * 부모 게시판의 번호로 리플을 리스트 형식에 담아 반환
	 * @param parentNum
	 * @return
	 */
	List<Article> selectByParentNum(int parentNum);
	
	/**
	 * 글 수정
	 */
	void update(Article a);
	
	/**
	 *  글 삭제
	 **/
	void delete(int num);
	
	List selectByWriter(String writer);
	
	List selectBytitle(String title);
	

}
