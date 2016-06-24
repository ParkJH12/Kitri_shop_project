package com.kitri.myapp.member;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JoinController {

	@Resource(name="joinService")
	
	private Service service;
	public void setService(Service service) {
		this.service = service;
	}

	@RequestMapping(value="/")
	public String loginForm(){
		System.out.println("초기화면 띄우기");
		return "join/loginForm";
	}
	
	@RequestMapping(value="/join/idCheck.do")
	public ModelAndView join(@RequestParam(value="id")String id){
		System.out.println("ID체크중 ");
		Join j = service.getJoin(id);
		boolean flag = false;
		if( j== null){
			flag = true;
		}
		System.out.println("ID체크완료 ");
		ModelAndView mav = new ModelAndView("join/check");
		mav.addObject("result",flag);
		return mav;
	}
	
	@RequestMapping(value="/join/join.do")
	public String joinResult(Join join){
		service.addJoin(join);
		System.out.println("회원가입완료 ");
		return "join/loginForm";
	}
	@RequestMapping(value="/join/main.do")
	public String main(){
		System.out.println("메인화면이동중 ");
		return "join/main";
	}
	
	@RequestMapping(value="/join/joinForm.do")
	public String joinForm(){
		System.out.println("회원가입이동중 ");
		return "join/joinForm";
	}

	
	
	@RequestMapping(value= "/join/login.do")
	public String login(Join j, HttpServletRequest req){
		HttpSession session = null;
		String result = "join/loginForm";
		System.out.println(j+"j의 값");
		boolean flag = service.login(j);
		if(flag){
			session = req.getSession();
			session.setAttribute("id", j.getId());
			result = "join/main";
		}
		return result;
	}
	
	@RequestMapping(value= "/join/editForm.do")
	public ModelAndView editInfo(HttpServletRequest req){
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		Join j=service.getJoin(id);
		ModelAndView mav = new ModelAndView("join/editForm");
		mav.addObject("editInfo", j);
		return mav;
	}
	@RequestMapping(value= "/join/edit.do")
	public String editInfo(Join j){
		service.editJoin(j);
		return "join/main";
	}
	@RequestMapping(value= "/join/Logout.do")
	public String logOut(HttpServletRequest req){
		HttpSession session = req.getSession();
		session.invalidate();
		return "join/loginForm";
	}
	@RequestMapping(value= "/join/out.do")
	public String leaveUser(HttpServletRequest req){
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		service.delJoin(id);
		return "join/loginForm";
	}
	//판매버튼/////////////////////////
	
	@RequestMapping(value="/join/sellreg.do")
	public String sellreg(){
		
		return "sell/sellReg";
	}
	@RequestMapping(value="/join/sellmod")
	public String sellmod(){
		
		return "sell/sellMod";
	}
	@RequestMapping(value="/join/sellist.do")
	public String sellist(){
		
		return "sell/selList";
	}
	@RequestMapping(value="/join/sellbag.do")
	public String sellbag(){
		
		return "sell/sellBag";
	}
	//////////////////////
	
	
	
}
