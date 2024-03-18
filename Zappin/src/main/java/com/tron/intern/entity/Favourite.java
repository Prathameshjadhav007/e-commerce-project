package com.tron.intern.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Favourite {

	@Id
	private int id;
	private String fimage;
	private String fcategory;
	private String fproductname;
	private String fdescription;
	private double fprice;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFimage() {
		return fimage;
	}
	public void setFimage(String fimage) {
		this.fimage = fimage;
	}
	public String getFcategory() {
		return fcategory;
	}
	public void setFcategory(String fcategory) {
		this.fcategory = fcategory;
	}
	public String getFproductname() {
		return fproductname;
	}
	public void setFproductname(String fproductname) {
		this.fproductname = fproductname;
	}
	public String getFdescription() {
		return fdescription;
	}
	public void setFdescription(String fdescription) {
		this.fdescription = fdescription;
	}
	public double getFprice() {
		return fprice;
	}
	public void setFprice(double d) {
		this.fprice = d;
	}
	
	
	
}
