package com.kitri.myapp.sell;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.myapp.member.Join;



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
		// img path는 자신의 워크스페이스(workspace)에 저장되어있는 metadata 경로를 추적해서 적어야 합니다.\"
		if(fileName == null){
			fileName = "sclinqwe.jpg";
		}
		String path1 = "C:\\Workspace\\Network\\.metadata\\.plugins\\"
				+ "org.eclipse.wst.server.core\\tmp0\\webapps\\img\\" + fileName; // 봉기전용
		String path2 = "C:\\Users\\Administrator\\Documents\\Kitri_shop_project\\"
				+ ".metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\img\\" + fileName; // 지훈전용
		File f = new File(path2); //원하는 데 쓰면됨
		try {
			s.getFile().transferTo(f);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		s.setImg_path("/img/" + fileName);
		System.out.println(s);
		service.WriteSellBoard(s);
		return "redirect:/sell/sellist.do";
		
	}
	
	@RequestMapping(value="/sell/sellist.do") 
	public ModelAndView list(){
		ModelAndView mav = new ModelAndView("sell/selList");
		ArrayList<SellBoard> list = (ArrayList<SellBoard>) service.getSellBoardRoot();
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping(value="/sell/selldetail.do") 
	public ModelAndView detail(@RequestParam(value="pb_num")int pb_num, HttpServletRequest req){
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("name");
		Join j = service.getJoin(id);
		SellBoard s = service.getSellBoardBynum(pb_num);
		ModelAndView mav = new ModelAndView("sell/selldetail");
		mav.addObject("s", s); // board
		mav.addObject("j", j); // join
		return mav;
	}
	
	@RequestMapping(value="/sell/sellup.do") 
	public String sellup(SellBoard s){
		String fileName = s.getFile().getOriginalFilename();
		// img path는 자신의 워크스페이스(workspace)에 저장되어있는 metadata 경로를 추적해서 적어야 합니다.
		String path1 = "C:\\Workspace\\Network\\.metadata\\.plugins\\"
				+ "org.eclipse.wst.server.core\\tmp0\\webapps\\img\\" + fileName; // 봉기전용
		String path2 = "C:\\Users\\Administrator\\Documents\\Kitri_shop_project\\"
				+ ".metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\img" + fileName; // 지훈전용
		File f = new File(path1);
		try {
			s.getFile().transferTo(f);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		s.setImg_path("/img/" + fileName);
		service.editSellBoard(s);
		return "redirect:/sell/sellist.do";
	}
	
	@RequestMapping(value="/sell/sellmod.do") 
	public ModelAndView sellmod(@RequestParam(value="pb_num")int pb_num){
		System.out.println(pb_num);
		SellBoard s = service.getSellBoardBynum(pb_num);
		ModelAndView mav = new ModelAndView("sell/sellMod");
		mav.addObject("s", s);
		return mav;
	}
	
	@RequestMapping(value= "/sell/deletebd.do")
	public String deletebd(HttpServletRequest req, int pb_num){
		HttpSession session = req.getSession();
		String name = (String)session.getAttribute("name");
		service.delSellBoard(pb_num);
		return "redirect:/sell/sellist.do";
	}	
	@RequestMapping(value="/sell/searchByWriter.do") 
	public ModelAndView searchByid(@RequestParam(value="writer")String writer){//주소값이 입력되었을때 실행될 함수
		System.out.println("ada");
		ModelAndView mav = new ModelAndView("sell/searchResult");   //이동할 페이지
		ArrayList<SellBoard> list = (ArrayList<SellBoard>) service.getSellBoardByWriter(writer);
		mav.addObject("list", list);
		return mav;
	}
	@RequestMapping(value="/sell/searchByTitle.do") 
	public ModelAndView searchTitle(@RequestParam(value="title")String title){//주소값이 입력되었을때 실행될 함수
		ModelAndView mav = new ModelAndView("sell/searchResult");   //이동할 페이지
		ArrayList<SellBoard> list = (ArrayList<SellBoard>) service.getSellBoardBytitle(title);
		mav.addObject("list", list);
		return mav;
	}
	
 }
