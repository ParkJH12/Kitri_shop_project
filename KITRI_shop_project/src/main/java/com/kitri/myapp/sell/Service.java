package com.kitri.myapp.sell;

import java.util.List;

import com.kitri.myapp.member.Join;

public interface Service {
	
	void WriteSellBoard(SellBoard a);
	
	SellBoard getSellBoardBynum(int num);

	List<SellBoard> getSellBoardRoot();
	
	List<SellBoard> getSellBoardByParentNum(int parentNum);
	
	void editSellBoard(SellBoard a);
	
	void delSellBoard(int num);
	
    List<SellBoard> getSellBoardByWriter(String writer);
	
	List<SellBoard> getSellBoardBytitle(String title);
	
	Join getJoin(String name);
	
	List getSellBoardByContent(String content);
}
