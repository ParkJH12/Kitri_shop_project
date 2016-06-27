package com.kitri.myapp.sell;

import java.util.List;

import com.kitri.myapp.member.Join;

public interface BoardMapper {

	void insert(SellBoard a);

	SellBoard select(int num);
	
	List<SellBoard> selectAll();
	
	List<SellBoard> selectByParentNum(int parentNum);

	void update(SellBoard a);

	void delete(int num);
	
	Join select_name(String name);
	
	List selectByWriter(String writer);
	
	List selectBytitle(String title);
	
	List selectByContent(String content);
}
