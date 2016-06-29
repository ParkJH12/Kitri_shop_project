package com.kitri.myapp.busket;

import java.util.List;

import com.kitri.myapp.member.Join;
import com.kitri.myapp.sell.SellBoard;

public interface BusketMapper {
	
	Join select_name(String name);
	
	void insert(Busket b);

	void delete(int bk_no);
	
	List<Busket> selectAll(int m_num);
	
	SellBoard select(int num); // 구매하고자 하는 상품의 정보를 불러오기 위함
	
}
