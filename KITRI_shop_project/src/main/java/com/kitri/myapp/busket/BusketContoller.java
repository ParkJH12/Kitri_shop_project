package com.kitri.myapp.busket;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.myapp.member.Join;
import com.kitri.myapp.order.Order;
import com.kitri.myapp.sell.SellBoard;

@Controller
public class BusketContoller {
	@Resource(name = "busketService")
	private Service service;

	public void setService(Service service) {
		this.service = service;
	}

	@RequestMapping(value= "/busket/busket_input.do")
	public String input_busket(HttpServletRequest req, Busket b, 
			@RequestParam(value="pb_num")int pb_num){
		SellBoard s = service.getSellBoardBynum(pb_num);
		HttpSession session = req.getSession();
		String name = (String) session.getAttribute("name"); // 구매자의 name
		Join j = service.getJoin(name);
		b.setWriter(s.getWriter());
		b.setM_num(j.getM_num());
		System.out.println("장바구니 성공");
		System.out.println(s);
		System.out.println(b);
		service.InsertBusket(b);
		return "redirect:/busket/busketlist.do";
	}	
	
	@RequestMapping(value = "/busket/delbusket.do")
	public String delbusket(@RequestParam(value="bk_num")int bk_num){
		service.CancelBusket(bk_num);
		return "redirect:/busket/busketlist.do";
	}
	
	@RequestMapping(value = "/busket/busketlist.do")
	public ModelAndView busketlist(HttpServletRequest req){
		ModelAndView mav = new ModelAndView("busket/busket_list");
		HttpSession session = req.getSession();
		String name = (String) session.getAttribute("name"); // 구매자의 name
		Join j = service.getJoin(name);
		int m_num = j.getM_num();
		System.out.println(m_num);
		ArrayList<Busket> o = (ArrayList<Busket>)service.getBusketList(m_num);
		mav.addObject("o", o);
		return mav;
	}
	
	
}
