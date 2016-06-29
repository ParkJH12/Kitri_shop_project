package com.kitri.myapp.busket;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.myapp.sell.SellBoard;

@Controller
public class BusketContoller {
	@Resource(name = "busketService")
	private Service service;

	public void setService(Service service) {
		this.service = service;
	}

	@RequestMapping(value= "/busket/busket_input.do")
	public String input_busket(Busket b, @RequestParam(value="pb_num")int pb_num){
		SellBoard s = service.getSellBoardBynum(pb_num);
		b.setWriter(s.getWriter());
		System.out.println("장바구니 성공");
		service.InsertBusket(b);
		return "redirect:/sell/sellist.do";
	}	
}
