package com.kitri.myapp.busket;

import java.util.List;

import com.kitri.myapp.sell.SellBoard;

public interface Service {

	SellBoard getSellBoardBynum(int num); // 구매하고자 하는 상품의 정보를 불러오기 위함
	
	List<Busket> getBusketList(int m_num);
	
	void InsertBusket(Busket b);
	
	void CancelBusket(int bk_no);
	
}
