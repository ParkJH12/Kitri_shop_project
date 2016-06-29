package com.kitri.myapp.busket;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kitri.myapp.sell.SellBoard;

@Controller
public class BusketContoller {
	@Resource(name = "busketService")
	private Service service;

	public void setService(Service service) {
		this.service = service;
	}

	@RequestMapping(value= "/busket/busket_input.do")
	public String input_busket(Busket b, int pb_num){
		SellBoard s = service.getSellBoardBynum(pb_num);
		System.out.println(b);
		service.InsertBusket(b);
		return "redirect:/sell/selldetail.do";
	}	
}
