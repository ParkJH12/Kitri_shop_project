package com.kitri.myapp.order;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OrderController {
	@Resource(name = "orderService")
	private Service service;

	public void setService(Service service) {
		this.service = service;
	}
	
	@RequestMapping(value = "/order/order_list.do")
	public ModelAndView orderList(@RequestParam(value="m_num")int m_num){
		ModelAndView mav = new ModelAndView("order/orderList");
		ArrayList<Order> list = (ArrayList<Order>)service.getOrderList();
		mav.addObject("list", list);
		return mav;
	} // m_num을 parameter로 받아(해당되는 id)의 list를 뿌려주는 기능
	
	@RequestMapping(value = "/order/dellist.do")
	public String delList(@RequestParam(value="order_no")int order_no){
		service.CancelOrder(order_no);
		return "redirect:/order/list.do";
	}
	
	@RequestMapping(value = "/order/addlist.do")
	public String addList(Order o){
		service.InsertOrder(o);
		return "redirect:/order/list.do";
	}
	
}