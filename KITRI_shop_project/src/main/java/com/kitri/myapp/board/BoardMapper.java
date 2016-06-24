package com.kitri.myapp.board;

import java.util.List;

public interface BoardMapper {

	void insert(Article a);

	Article select(int num);
	
	List<Article> selectAll();
	
	List<Article> selectByParentNum(int parentNum);

	void update(Article a);

	void delete(int num);
	
	List selectByWriter(String writer);
	
	List selectBytitle(String title);
	
	List selectByContent(String content);
}
