package com.kitri.myapp.order;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.myapp.member.Join;
import com.kitri.myapp.sell.SellBoard;

@Controller
public class OrderController {
	@Resource(name = "orderService")
	private Service service;

	public void setService(Service service) {
		this.service = service;
	}
	
	@RequestMapping(value = "/order/orderlist.do")
	public ModelAndView orderlist(HttpServletRequest req){
		ModelAndView mav = new ModelAndView("order/order_list");
		HttpSession session = req.getSession();
		String buyer_name = (String) session.getAttribute("name"); // 구매자의 name
		ArrayList<Order> o = (ArrayList<Order>)service.getOrderList(buyer_name);
		mav.addObject("o", o);
		return mav;
	}
	
	@RequestMapping(value = "/order/dellist.do")
	public String delList(@RequestParam(value="order_no")int order_no){
		service.CancelOrder(order_no);
		return "redirect:/order/orderlist.do";
	}
	
	@RequestMapping(value = "/order/addlist.do")
	public String addList(Order o, HttpServletRequest req,  @RequestParam(value="seller_name")String seller_name){
		HttpSession session = req.getSession();
		String buyer = (String) session.getAttribute("name"); // 구매자의 name
		Join buyer_join = service.getJoin(buyer);
		System.out.println(o);
		o.setBuyer_name(buyer_join.getName());
		o.setBuyer_phone_num(buyer_join.getPhone_num());
		//-----------------구매자------------------//
		Join seller_join = service.getJoin(seller_name);
		o.setSeller_name(seller_join.getName());
		o.setSeller_phone_num(seller_join.getPhone_num());
		//------------------판매자-----------------//
		System.out.println(o);
		service.InsertOrder(o);
		return "redirect:/order/orderlist.do";
	}
	
	@RequestMapping(value = "/order/reserve.do")
	public ModelAndView reserve(HttpServletRequest req, @RequestParam(value="pb_num")int pb_num)
	{
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("name");
		Join j = service.getJoin(id); // 구매자의 정보를 불러왔다
		SellBoard s = service.getSellBoardBynum(pb_num); // 판매글에 대한 정보를 불러왔다.
		ModelAndView mav = new ModelAndView("order/order_add");
		mav.addObject("s", s); // sellboard
		mav.addObject("j", j); // join
		return mav;
	} // order_add로 정보를 넘기기 위한 객체 선언
	
	@RequestMapping(value="/order/complete.do") 
	public ModelAndView complete(@RequestParam(value="pb_num")int pb_num, HttpServletRequest req){
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("name");
		Join j = service.getJoin(id);
		SellBoard s = service.getSellBoardBynum(pb_num);
		ModelAndView mav = new ModelAndView("order/ordercomp");
		mav.addObject("s", s); // board
		mav.addObject("j", j); // join
		return mav;
	}
}

/*HttpSession session = req.getSession();
String id = (String) session.getAttribute("name");
Join j = service.getJoin(id);
SellBoard s = service.getSellBoardBynum(pb_num);
ModelAndView mav = new ModelAndView("sell/selldetail");
mav.addObject("s", s); // board
mav.addObject("j", j); // join
return mav;*/