//made by prathamesh jadhav
package com.tron.intern.service;
import java.util.List;

import com.tron.intern.entity.Cartitem;
import com.tron.intern.entity.Categories;
import com.tron.intern.entity.Favourite;
import com.tron.intern.entity.Offerandcoupon;
import com.tron.intern.entity.Outlet;
import com.tron.intern.entity.Product;
import com.tron.intern.entity.Subcategories;

public interface Zappinservice  
{
 
	//=====categories=====
	void addcategories(Categories categories);
	
	List<Categories> displycategory();

	void deletecategory(int id);
	
	Categories updatecategory(int id);
	
	//======Subcategories======
		void addsubcategories(Subcategories subcategories);
		
		List<Subcategories> displysubcategory();
		
		void deletesubcategory(int id);
		
		Subcategories updatesubcategory(int id);
		
		//=====product====
		void addproduct(Product product);
		
		List<Product> displayproduct();
		
		void deleteproduct(int id);
		
	    Product updateproduct(int id);
	    public Product findprodutbyid(int id);
	    List<Product> showcategory(String categories);
	    
	    //====Outlet=====
		void addoutlet(Outlet outlet);
		
		List<Outlet> displyoutlet();
		
		void deleteoutlet(int id);
		
		Outlet updateoutlet(int id);
		
		//=====offer=====
		void addoffer(Offerandcoupon offer);
		
		List<Offerandcoupon> displayoffer();
		
		void deleteoffer(int id);
		
		Offerandcoupon updateoffer(int id);
	    
		Offerandcoupon getcuppon(String cuppon);
		
	   //===========================================================
		//favourite
	   void addfavourite(Favourite favourite);	
	   
	    List <Favourite> displayfav();
	   Favourite getid(int id);
	   public Favourite findfavbyid(int id);
	   void deletefavourite(int id);
	
	  //cart item
	   void addcartitem(Cartitem cart);
	   
	   List<Cartitem> displaycart();
	   
	   void deletecart(int id);
	   
	   Cartitem updatecart(int id);
	   public Cartitem findcartbyid(int id);
	   long countcart();
}
