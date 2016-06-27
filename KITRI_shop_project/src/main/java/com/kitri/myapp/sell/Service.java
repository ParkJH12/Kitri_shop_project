package com.kitri.myapp.sell;

import java.util.List;

public interface Service {
	
	void WriteSellBoard(SellBoard a);
	
	SellBoard getSellBoardBynum(int num);

	List<SellBoard> getSellBoardRoot();
	
	List<SellBoard> getSellBoardByParentNum(int parentNum);
	
	void editSellBoard(SellBoard a);
	
	void delSellBoard(int num);
	
    List getSellBoardByWriter(String writer);
	
	List getSellBoardBytitle(String title);
	
	List getSellBoardByContent(String content);
}