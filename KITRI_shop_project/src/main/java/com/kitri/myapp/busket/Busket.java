package com.kitri.myapp.busket;

import java.sql.Date;

public class Busket {
	private int bk_num;
	private String writer;
	private String title;
	private String content;
	private String model;
	private int count;
	private String product_name;
	private int price;
	private String color;
	private String agency;
	private String statement;
	private Date b_date;
	
	public Busket() {  }
	public Busket(int bk_num, String writer, String title, String content, String model, int count, String product_name,
			int price, String color, String agency, String statement, String img_path, Date b_date) {
		this.bk_num = bk_num;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.model = model;
		this.count = count;
		this.product_name = product_name;
		this.price = price;
		this.color = color;
		this.agency = agency;
		this.statement = statement;
		this.b_date = b_date;
	}

	public int getBk_num() {
		return bk_num;
	}

	public void setBk_num(int bk_num) {
		this.bk_num = bk_num;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
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

	public void setModel(String model) {
		this.model = model;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
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


	public Date getB_date() {
		return b_date;
	}

	public void setB_date(Date b_date) {
		this.b_date = b_date;
	}
	
	@Override
	public String toString() {
		return "Busket [bk_num=" + bk_num + ", writer=" + writer + ", title=" + title + ", content=" + content
				+ ", model=" + model + ", count=" + count + ", product_name=" + product_name + ", price=" + price
				+ ", color=" + color + ", agency=" + agency + ", statement=" + statement + ", b_date=" + b_date + "]";
	}
	
	
}
