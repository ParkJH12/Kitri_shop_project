package com.kitri.myapp.order;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.myapp.member.Join;

@Controller
public class OrderController {
	@Resource(name = "orderService")
	private Service service;

	public void setService(Service service) {
		this.service = service;
	}
	
}