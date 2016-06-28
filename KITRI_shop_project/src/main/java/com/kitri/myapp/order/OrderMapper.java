package com.kitri.myapp.order;

import java.util.List;

import com.kitri.myapp.member.Join;
import com.kitri.myapp.sell.SellBoard;

public interface OrderMapper {

	Join select_name(String name); // 구매자와 판매자의 정보를 불러오기위함 
	
	SellBoard select(int num); // 구매하고자 하는 상품의 정보를 불러오기 위함
	
	List<Order> select_all(String buyer_name);
	
	void insert(Order o);
	
	void delete(int order_no);
	
	
}