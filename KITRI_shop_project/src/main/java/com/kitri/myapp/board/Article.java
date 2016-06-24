package com.kitri.myapp.board;

import java.sql.Date;

public class Article {
	
	private int pb_num;
	private int m_num;
	private String title;
	private String content;
	private String model;
	private int count;
	private String product_name;
	private int price;
	private String color;
	private String agency;
	private String statement;
	private String img_path;
	private Date w_date;
	

	public Article() {
	}


	public Article(int pb_num, int m_num, String title, String content, String model, int count, String product_name,
			int price, String color, String agency, String statement, String img_path, Date w_date) {
		this.pb_num = pb_num;
		this.m_num = m_num;
		this.title = title;
		this.content = content;
		this.model = model;
		this.count = count;
		this.product_name = product_name;
		this.price = price;
		this.color = color;
		this.agency = agency;
		this.statement = statement;
		this.img_path = img_path;
		this.w_date = w_date;
	}



	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public int getPb_num() {
		return pb_num;
	}

	public void setPb_num(int pb_num) {
		this.pb_num = pb_num;
	}

	public int getM_num() {
		return m_num;
	}

	public void setM_num(int m_num) {
		this.m_num = m_num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getModel() {
		return model;
	}
	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getAgency() {
		return agency;
	}

	public void setAgency(String agency) {
		this.agency = agency;
	}

	public String getStatement() {
		return statement;
	}

	public void setStatement(String statement) {
		this.statement = statement;
	}

	public String getImg_path() {
		return img_path;
	}

	public void setImg_path(String img_path) {
		this.img_path = img_path;
	}

	public Date getW_date() {
		return w_date;
	}

	public void setW_date(Date w_date) {
		this.w_date = w_date;
	}
	
	

}
