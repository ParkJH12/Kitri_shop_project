package com.kitri.myapp.board;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {
	
	
	@Resource(name="boardService")
	private Service service;
	
	public void setService(Service service) {
		this.service = service;
	}
	@RequestMapping(value="/board/list")
	public ModelAndView boardList(){
		
		ModelAndView mav = new ModelAndView("board/list");
		ArrayList<Article> list = (ArrayList<Article>) service.getArticleRoot();		
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping(value="/board/read.do")
	public ModelAndView read(@RequestParam(value="num")int num){
		ModelAndView mav = new ModelAndView("board/editForm");
		Article a = service.getArticleBynum(num);
		ArrayList<Article> reps = (ArrayList<Article>) service.getArticleByParentNum(num);
		System.out.println(a);
		mav.addObject("a", a);
		mav.addObject("reps", reps);
		return mav;
	}
	
	@RequestMapping(value="/board/preview")
	public ModelAndView preview(@RequestParam(value="num")int num){
		ModelAndView mav = new ModelAndView("board/readResult");
		Article a = service.getArticleBynum(num);
		mav.addObject("a", a);
		return mav;
	}

	@RequestMapping(value="/board/edit")
	public String boardedit(Article a){
		service.editArticle(a);
		return "redirect:/board/list.do";
	}
	
	
	@RequestMapping(value="/board/write")
	public String boardWrite(Article a){
		service.WriteArticle(a);
		return "redirect:/board/list.do";
		
	}
	
	@RequestMapping(value="/board/writeForm")
	public String boardForm(){
		
		return "/board/write";
		
	}
	
	
	
	@RequestMapping(value="/board/del.do")
	public String boardDelete(@RequestParam(value="num")int num){
		service.delArticle(num);
		return "redirect:/board/list.do";
	}
	
	@RequestMapping(value="/board/searchByWriter.do") 
	public ModelAndView searchByid(@RequestParam(value="writer")String writer){//주소값이 입력되었을때 실행될 함수
		ModelAndView mav = new ModelAndView("board/searchResult");   //이동할 페이지
		ArrayList<Article> list = (ArrayList<Article>) service.getArticleByWriter(writer);
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping(value="/board/searchByTitle.do") 
	public ModelAndView searchTitle(@RequestParam(value="title")String title){//주소값이 입력되었을때 실행될 함수
		ModelAndView mav = new ModelAndView("board/searchResult");   //이동할 페이지
		ArrayList<Article> list = (ArrayList<Article>) service.getArticleBytitle(title);
		mav.addObject("list", list);
		return mav;
	}
	
	
	
}
