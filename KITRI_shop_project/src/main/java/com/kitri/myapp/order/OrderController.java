package com.kitri.myapp.order;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.kitri.myapp.sell.Service;

@Controller
public class OrderController {
	@Resource(name = "sellboardService")
	private Service service;

	public void setService(Service service) {
		this.service = service;
	}
}
