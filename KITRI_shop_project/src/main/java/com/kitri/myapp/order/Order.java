package com.kitri.myapp.order;

import java.sql.Date;

public class Order {

	private int order_no;
	private String seller_name;
	private String seller_phone_num;
	private String buyer_name;
	private String buyer_phone_num;
	private String title;
	private String product_name;
	private int count;
	private int price;
	private Date w_date;
	
	
	public Order() { }

	public Order(int order_no, String seller_name, String seller_phone_num, String buyer_name, String buyer_phone_num,
			String title, String product_name, int count, int price, Date date) {
		this.order_no = order_no;
		this.seller_name = seller_name;
		this.seller_phone_num = seller_phone_num;
		this.buyer_name = buyer_name;
		this.buyer_phone_num = buyer_phone_num;
		this.title = title;
		this.product_name = product_name;
		this.count = count;
		this.price = price;
		this.w_date = date;
	}



	public int getOrder_no() {
		return order_no;
	}
	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}
	public String getSeller_name() {
		return seller_name;
	}
	public void setSeller_name(String seller_name) {
		this.seller_name = seller_name;
	}
	public String getSeller_phone_num() {
		return seller_phone_num;
	}
	public void setSeller_phone_num(String seller_phone_num) {
		this.seller_phone_num = seller_phone_num;
	}
	public String getBuyer_name() {
		return buyer_name;
	}
	public void setBuyer_name(String buyer_name) {
		this.buyer_name = buyer_name;
	}
	public String getBuyer_phone_num() {
		return buyer_phone_num;
	}
	public void setBuyer_phone_num(String buyer_phone_num) {
		this.buyer_phone_num = buyer_phone_num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}

	public Date getW_date() {
		return w_date;
	}

	public void setW_date(Date w_date) {
		this.w_date = w_date;
	}

	@Override
	public String toString() {
		return "Order [order_no=" + order_no + ", seller_name=" + seller_name + ", seller_phone_num=" + seller_phone_num
				+ ", buyer_name=" + buyer_name + ", buyer_phone_num=" + buyer_phone_num + ", title=" + title
				+ ", product_name=" + product_name + ", count=" + count + ", price=" + price + ", w_date=" + w_date
				+ "]";
	}
	
}
