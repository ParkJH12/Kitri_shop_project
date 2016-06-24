package com.kitri.myapp.board;

import java.util.List;

public interface Service {
	
	/**
	 * 글쓰기 위한 서비스
	 * @param a
	 */
	void WriteArticle(Article a);
	
	/**
	 * 글 상세 뷰를 위한 서비스
	 * @param num
	 * @return
	 */
	Article getArticleBynum(int num);
	
	/**
	 * 글의 부모글만 가져오는 서비스
	 * @return
	 */
	List<Article> getArticleRoot();
	
	/**
	 * 글의 자식 글을 가져오는 서비스
	 * @param ParentNum
	 * @return
	 */
	List<Article> getArticleByParentNum(int parentNum);
	
	/**
	 * 글  수정
	 * @param a
	 */
	void editArticle(Article a);
	
	/**
	 *  글 삭제
	 * @param num
	 */
	void delArticle(int num);
	
    List getArticleByWriter(String writer);
	
	List getArticleBytitle(String title);
	
	List getArticleByContent(String content);
}
