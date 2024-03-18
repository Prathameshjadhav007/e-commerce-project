//made by prathamesh jadhav
package com.tron.intern.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tron.intern.entity.Cartitem;
import com.tron.intern.entity.Categories;
import com.tron.intern.entity.Favourite;
import com.tron.intern.entity.Offerandcoupon;
import com.tron.intern.entity.Outlet;
import com.tron.intern.entity.Product;
import com.tron.intern.entity.Subcategories;
import com.tron.intern.repo.Cartitemrepo;
import com.tron.intern.repo.Categoriesrepo;
import com.tron.intern.repo.Favouriterepo;
import com.tron.intern.repo.Offerandcouponrepo;
import com.tron.intern.repo.Outletrepo;
import com.tron.intern.repo.Productrepo;
import com.tron.intern.repo.Subcategoriesrepo;
import com.tron.intern.service.Zappinservice;

@Service
public class Zappindao implements Zappinservice
{     
	  @Autowired
      Categoriesrepo category;
	  
	  @Autowired
	  Subcategoriesrepo subcategory;
	  
	  @Autowired
	  Productrepo product;
	  
	  @Autowired
	  Outletrepo outlet;
	  
	  @Autowired
	  Offerandcouponrepo offer;
	  
	  @Autowired
	 Favouriterepo favourite;
	  
	  @Autowired
	  Cartitemrepo cartitem;
//================================= categories =============================================
	@Override
	public void addcategories(Categories categories) {	
		category.save(categories);
	}
	@Override
	public List<Categories> displycategory() {
		return category.findAll();
	}
	@Override
	public void deletecategory(int id) {
		category.deleteById(id);
	}
	@Override
	public Categories updatecategory(int id) {
		return category.getById(id);
	}
//================================= Subcategories =============================================
	
	@Override
	public void addsubcategories(Subcategories subcategories) {
		subcategory.save(subcategories);
	}
	@Override
	public List<Subcategories> displysubcategory() {
		
		return subcategory.findAll();
	}
	@Override
	public void deletesubcategory(int id) {
		subcategory.deleteById(id);
	}
	@Override
	public Subcategories updatesubcategory(int id) {
		
		return subcategory.getById(id);
	}

//================================= Product =============================================	
	
	@Override
	public void addproduct(Product produc1) {
		product.save(produc1);
	}
	@Override
	public List<Product> displayproduct() {
		
		return product.findAll();
	}
	@Override
	public void deleteproduct(int id) {
		product.deleteById(id);
	}
	@Override
	public Product updateproduct(int id) {
		return product.getById(id);
	}
	
	@Override
	@Transactional
	public Product findprodutbyid(int id) {
		
		return product.findById(id).get();
	}
	@Override
	public List<Product> showcategory(String categories) {
		
		return product.findAllByCategoryname(categories);
	}
	

	
//================================= Outlet =============================================

	@Override
	public void addoutlet(Outlet outlet1) {
		outlet.save(outlet1);
		
	}
	@Override
	public List<Outlet> displyoutlet() {
		return outlet.findAll();
	}
	@Override
	public void deleteoutlet(int id) {
		outlet.deleteById(id);
	}
	@Override
	public Outlet updateoutlet(int id) {
		return outlet.getById(id);
	}
//================================= Offerandcuppon =============================================

	@Override
	public void addoffer(Offerandcoupon offer1) {
		offer.save(offer1);
		
	}
	@Override
	public List<Offerandcoupon> displayoffer() {
		return offer.findAll();
	}
	@Override
	public void deleteoffer(int id) {
	      offer.deleteById(id);		
	}
	@Override
	public Offerandcoupon updateoffer(int id) {
		return offer.getById(id);
	}
	@Override
	public Offerandcoupon getcuppon(String cuppon) {
	      return offer.findByCouponcode(cuppon);
	}
	
	//================favourite=========
	@Override
	public void addfavourite(Favourite favourite1) {
		favourite.save(favourite1);
	}
	@Override
	public void deletefavourite(int id) {
		favourite.deleteById(id);
	}
	@Override
	public Favourite getid(int id) {
		favourite.getById(id);
		return null;
	}
	@Override
	public Favourite findfavbyid(int id) {
		
     return favourite.findById(id).get();
	}
	
	@Override
	public List<Favourite> displayfav() {
		
		return  favourite.findAll();
	}

	//=================cart==================	

	@Override
	public void addcartitem(Cartitem cart) {
        cartitem.save(cart);
	}
	@Override
	public List<Cartitem> displaycart() {
	
		return cartitem.findAll();
	}
	@Override
	public void deletecart(int id) {
		cartitem.deleteById(id);
	}
	@Override
	public Cartitem updatecart(int id) {
		// TODO Auto-generated method stub
		return cartitem.getById(id);
	}
	@Override
	public long countcart()
	{
	   return cartitem.count();
	}
	@Override
	public Cartitem findcartbyid(int id) {
		
		return cartitem.findById(id).get();
	}
	
	
}   
