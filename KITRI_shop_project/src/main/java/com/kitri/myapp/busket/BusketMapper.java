package com.kitri.myapp.busket;

import java.util.List;

import com.kitri.myapp.sell.SellBoard;

public interface BusketMapper {

	void insert(Busket b);

	void delete(Busket b);
	
	List<Busket> selectAll();
	
	SellBoard select(int num); // 구매하고자 하는 상품의 정보를 불러오기 위함
	
}
