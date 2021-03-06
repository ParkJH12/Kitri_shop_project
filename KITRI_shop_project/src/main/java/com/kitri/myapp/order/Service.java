
package com.kitri.myapp.order;

import java.util.List;

import com.kitri.myapp.member.Join;
import com.kitri.myapp.sell.SellBoard;

public interface Service {

	Join getJoin(String name); // 구매자와 판매자의 정보를 불러오기위함 
	
	SellBoard getSellBoardBynum(int num); // 구매하고자 하는 상품의 정보를 불러오기 위함
	
	List<Order> getOrderList(String buyer_name);
	
	void InsertOrder(Order o);
	
	void CancelOrder(int order_no);
	
}
