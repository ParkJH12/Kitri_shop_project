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
	
	@RequestMapping(value = "/order/order_list.do")
	public ModelAndView orderList(
		@RequestParam(value="m_num")
		int m_num,HttpServletRequest req,
		@RequestParam(value="pb_num")int pb_num){
			HttpSession session = req.getSession();
			String id = (String) session.getAttribute("name");
			Join j = service.getJoin(id);
			SellBoard s = service.getSellBoardBynum(pb_num);
			ArrayList<Order> o = (ArrayList<Order>)service.getOrderList();
			ModelAndView mav = new ModelAndView("order/order_add");
			mav.addObject("s", s); // sellboard
			mav.addObject("j", j); // join
			mav.addObject("o", o);
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
		return "redirect:/order/order_list.do";
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