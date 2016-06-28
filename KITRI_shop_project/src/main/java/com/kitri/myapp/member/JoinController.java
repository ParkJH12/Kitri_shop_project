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
	public ModelAndView join(@RequestParam(value="name")String name){
		System.out.println("ID체크중 ");
		Join j = service.getJoin(name); // request로 불러오는 id를 getJoin()에 넣어서 join j라는 새로운 객체에 넣는다
		boolean flag = false; 
		if( j == null){ // 만약 조회건수가 없을경우
			flag = true; // false >> 조회실패 >> 다시 롤백, true >> 조회성공 >> 뿌려준다
		}
		System.out.println("ID체크완료 ");
		ModelAndView mav = new ModelAndView("join/check");
		mav.addObject("flag",flag);
		return mav;
	}
	
	@RequestMapping(value="/join/pwdFind.do")
	public ModelAndView join2(@RequestParam(value="id")String id,@RequestParam(value="email")String email){
		System.out.println("ID Email체크중 ");
		Join i = service.getJoin(id);
		boolean flag = false;
		String pass = "";
		if(i != null && i.getEmail().equals(email)){
			flag = true;
			pass = i.getPass();
		}else{
			pass = "";
		}
		ModelAndView mav = new ModelAndView("join/check2");
		mav.addObject("result",flag);
		mav.addObject("result2",pass);
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
	@RequestMapping(value="/join/pwd_find.do")
	public String pwd_find(){
		System.out.println("비번찾기이동중 ");
		return "join/pwd_find";
	}
	
	@RequestMapping(value= "/join/login.do")
	public String login(Join j, HttpServletRequest req){
		HttpSession session = null;
		String result = "join/loginForm";
		System.out.println(j+"j의 값");
		boolean flag = service.login(j);
		if(flag){
			session = req.getSession();
			session.setAttribute("name", j.getName());
			result = "join/main";
		}
		return result;
	}
	
	@RequestMapping(value= "/join/editForm.do")
	public ModelAndView editInfo(HttpServletRequest req){
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("name");
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
		String name = (String)session.getAttribute("name");
		service.delJoin(name);
		return "join/loginForm";
	}	
	@RequestMapping(value= "/join/cashup.do")
	public ModelAndView cashup(HttpServletRequest req){
		HttpSession session = req.getSession();
		String name = (String)session.getAttribute("name");		
		Join j=service.getJoin(name);
		ModelAndView mav = new ModelAndView("join/cashup");
		mav.addObject("J", j);
		return mav;
	}
	
	@RequestMapping(value="/join/charge.do")
	public String charge(@RequestParam(value="m_num")int m_num, @RequestParam(value="cash")int cash){
		service.cashUp(cash,m_num);
		System.out.println("캐시충전완료 ");
		System.out.println(cash);
		return "join/main";
	}
	
	//판매버튼/////////////////////////
	
	@RequestMapping(value="/join/sellreg.do")
	public ModelAndView sellreg(HttpServletRequest req){
		HttpSession session = req.getSession();
		String name = (String) session.getAttribute("name");
		Join j = service.getJoin(name); // 현재접속자에 대한 것
		ModelAndView mav = new ModelAndView("sell/sellReg");
		mav.addObject("j",j);
		return mav;
	}
	@RequestMapping(value="/join/sellmod.do")
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
