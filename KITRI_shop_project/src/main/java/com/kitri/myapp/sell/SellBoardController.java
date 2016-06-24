package com.kitri.myapp.sell;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SellBoardController {
	@Resource(name = "sellboardService")
	private Service service;

	public void setService(Service service) {
		this.service = service;
	}
	
	@RequestMapping(value ="/sell/sellreg.do" )
	public String write(SellBoard s){
		String fileName = s.getFile().getOriginalFilename();
		String path = "C:\\Workspace\\Network\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\img\\" + fileName;
		File f = new File(path);
		try {
			s.getFile().transferTo(f);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		s.setImg_path("/sellboard/" + fileName);
		service.WriteSellBoard(s);
		return "redirect:/sell/selllist.do";
		
	}
	
	@RequestMapping(value="/sell/sellist.do") 
	public ModelAndView list(){
		ModelAndView mav = new ModelAndView("sell/selList");
		ArrayList<SellBoard> list = (ArrayList<SellBoard>) service.getSellBoardRoot();
		mav.addObject("list", list);
		return mav;
	}
}
