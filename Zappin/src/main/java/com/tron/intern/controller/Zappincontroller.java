//code by prathamesh jadhav
package com.tron.intern.controller;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import com.tron.intern.entity.Cartitem;
import com.tron.intern.entity.Categories;
import com.tron.intern.entity.Favourite;
import com.tron.intern.entity.Offerandcoupon;
import com.tron.intern.entity.Outlet;
import com.tron.intern.entity.Product;
import com.tron.intern.entity.Subcategories;
import com.tron.intern.service.Zappinservice;

@Controller
public class Zappincontroller {
    
	@Autowired
	Zappinservice service;
	
	@GetMapping("")
	public String me()
	{
		return "index2";
	}
	@GetMapping("index")
	public String index(Model m)
	{    
		long count=service.countcart();
		System.out.println(count);
		m.addAttribute("count", count);
		
		List<Product> product=service.displayproduct();
		m.addAttribute("product", product);
		List<Offerandcoupon> offerandcoupon=service.displayoffer();
		m.addAttribute("offerandcoupon", offerandcoupon);
		List<Categories> category=service.displycategory();
		m.addAttribute("category", category);
		return "index";
	}
//========favourite	
	@GetMapping("/savefavourite")
	public ResponseEntity<String> savefavourite(@RequestParam int id,Favourite f)
	{    	
		 
         Product p=service.findprodutbyid(id);
         f.setId(p.getId());
         f.setFproductname(p.getProductname());
         f.setFimage(p.getProductimg());
         f.setFcategory(p.getCategoryname());
         f.setFdescription(p.getDescription());
         f.setFprice(p.getDisplyprice());
         service.addfavourite(f);
		return ResponseEntity.ok("product added to favourite");
	}
	@GetMapping("removefav")
	public ResponseEntity<String> removefav(@RequestParam int id)
	{   
		try
		{
		service.deletefavourite(id);
		
		return ResponseEntity.ok("Removed");
		}
		catch(EmptyResultDataAccessException e2)
		{
         return ResponseEntity.ok("There is no id");
		}
	}
	@GetMapping("removefav2")
	public ResponseEntity<String> removefav2(@RequestParam int id)
	{   
		try
		{
		service.deletefavourite(id);
		return ResponseEntity.ok("Removed");
		}
		catch(EmptyResultDataAccessException e2)
		{
         return ResponseEntity.ok("There is no id");
		}
	}
	@GetMapping("/favStatus")
	public @ResponseBody List<Integer> getallstudent()
	{
		    List<Integer> list = new ArrayList<Integer>();
		   
	      List<Favourite> favdata= service.displayfav();
	      for(Favourite favourite:favdata)  {
	    	   list.add(favourite.getId());
	    	} 
	      List<Product> prodata= service.displayproduct();
	      for(Product product:prodata)  {
	    	  list.add(product.getId());  
	    	} 
	       return list;
	}
	
	
	@GetMapping("favourite")
	public String favourite(Model m)
	{ 
		long count=service.countcart();
		m.addAttribute("count", count);
		List<Favourite> favourite=service.displayfav();
		m.addAttribute("favourite", favourite);
		return "favourite";
	}
	
	
//============categories
	@GetMapping("categories")
	public String categories(Model m)
	{
		long count=service.countcart();
		m.addAttribute("count", count);
		List<Categories> category=service.displycategory();
		m.addAttribute("category", category);
		return "categories";
	}
    
	@GetMapping("foodcategory")
	public String foodcategory(@RequestParam("categoryname") String categoryname ,Model m)
	{
		long count=service.countcart();
		m.addAttribute("count", count);
		List <Product> category=service.showcategory(categoryname);
		m.addAttribute("category", category);
		m.addAttribute("categoryname", categoryname);
		return "foodcategory";
	}
	//====	
	@GetMapping("offer")
	public String offer(Model m)
	{
		long count=service.countcart();
		m.addAttribute("count", count);
		List<Offerandcoupon> offerandcoupon=service.displayoffer();
		m.addAttribute("offerandcoupon", offerandcoupon);
		return "offer";
	}
	@PostMapping("cheakcuppon")
	public String cheackcuppon(@RequestParam("cuppon") String cuppon,Model m)
	{
		
		
		long count=service.countcart();
	
		m.addAttribute("count", count);
		Offerandcoupon c=service.getcuppon(cuppon);
        if(c!=null)
        {
		m.addAttribute("cuppon", "Cuppon apply successfully");
        }
        else
        {	
        	m.addAttribute("cuppon", "Cuppon not available");	
        }
		return "cart";
		
	}
	
 //cart====================cart
//	@GetMapping("ssavecart")
//	public String addcart(@RequestParam("id") int id, Cartitem cart)
//	{
//		Product pro=service.updateproduct(id);
//		cart.setId(pro.getId());
//		cart.setProductname(pro.getProductname());
//		cart.setProductimg(pro.getProductimg());
//		cart.setPrice(pro.getDisplyprice());
//		cart.setQuantity("1");
//		service.addcartitem(cart);
//		
//		return "redirect:/index";
//	}
	@GetMapping("/savecart")
    public ResponseEntity<String> savecart(@RequestParam int id,Cartitem cart) {
		
		Product pro=service.findprodutbyid(id);
		try
		{
        cart =service.findcartbyid(id);
	    return ResponseEntity.ok("Already Product in Cart");
		}
		catch(NoSuchElementException e)
		{
			cart.setId(pro.getId());
			cart.setProductname(pro.getProductname());
			cart.setProductimg(pro.getProductimg());
			cart.setPrice(pro.getDisplyprice());
			cart.setQuantity("1");
			
			service.addcartitem(cart);
			long count=service.countcart();
			String count2=Long.toString(count);
			return ResponseEntity.ok(count2);
		}
    }
	

;

	@GetMapping("cart")
	public String cart(Model m)
	{
		
		long count=service.countcart();
		m.addAttribute("count", count);
		
		List<Cartitem> cart= service.displaycart();
		m.addAttribute("cart", cart);
		
		return "cart";
	}
	
	@GetMapping("deletecart")
	public String deletecart(@RequestParam("id") int id)
	{
		service.deletecart(id);
		return "redirect:/cart";
	}
	
	
	
	
	//=============rrr
	@GetMapping("profile")
	public String profile(Model m)
	{
		long count=service.countcart();
		m.addAttribute("count", count);
		
		return "profile";
	}
	@GetMapping("productdetail")
	public String productdetail(@RequestParam("id") int id,ModelMap mp)
	{
		
		long count=service.countcart();
		mp.addAttribute("count", count);
		
		Product detail=service.updateproduct(id);
		mp.addAttribute("edit", detail);
		return "productdetail";
	}
	@GetMapping("checkout")
	public String checkout(Model m)
	{
		long count=service.countcart();
		m.addAttribute("count", count);
		return "checkout";
	}
//------------------------------------------------------------------------------------
	@GetMapping("admindashboard")
	public String admindashboard()
	{
		return "admindashboard";
	}
	
//---------------------------categories-----------------------------------------------
	@GetMapping("admin_category")
	public String admin_category(Model m)
	{
		List<Categories> category=service.displycategory();
		m.addAttribute("category", category);
		return "admin_category";
	}
	 
	@PostMapping("savecategory")
	public String addcategory(@ModelAttribute("category") Categories category)
	{
		service.addcategories(category);
		return "redirect:/admin_category";
	}
	@GetMapping("editcategory")
	public String editcategory(@RequestParam("id")int id, ModelMap mp )
	{
		Categories update=service.updatecategory(id);
		mp.addAttribute("edit", update);
		return "editcategory";
	}
	@GetMapping("deletecategory")
	public String deletecategory(@RequestParam("id") int id)
	{
		service.deletecategory(id);
		return "redirect:/admin_category";
	}
//----------------------------------subcategories---------------------------------
	@GetMapping("admin_subcategory")
	public String admin_subcategory(Model m)
	{   
		List<Categories> category=service.displycategory();
		m.addAttribute("category", category);
		List<Subcategories> subcategory=service.displysubcategory();
		m.addAttribute("subcategory", subcategory);
		return "admin_subcategory";
	}
	
	@PostMapping("savesubcategories")
	public String addsubcategories(@ModelAttribute("subcategory") Subcategories subcategories)
	{
		service.addsubcategories(subcategories);
		return "redirect:/admin_subcategory";
	}
	
	@GetMapping("editsubcategory")
	public String editsubcategory(@RequestParam("id") int id,ModelMap mp)
	{
		Subcategories update=service.updatesubcategory(id);
		mp.addAttribute("edit", update);
		return "subcategoryedit";
	}
	
	@GetMapping("deletesubcategories")
	public String deletesubcategories(@RequestParam("id") int id)
	{
		service.deletesubcategory(id);
		return "admin_subcategory";
	}
	
	
//==========product==========
	
	@GetMapping("admin_add_product")
	public String admin_add_product(Model m)
	{
		List<Offerandcoupon> offerandcoupon=service.displayoffer();
		m.addAttribute("offerandcoupon", offerandcoupon);
		List<Categories> category=service.displycategory();
	    m.addAttribute("category", category);
	   List<Subcategories> subcategory=service.displysubcategory();
	  m.addAttribute("subcategory", subcategory);
		return "admin_add_product";
	}
    
	@PostMapping("saveproduct")
	public String addproudct(@ModelAttribute("product") Product product)
	{
		
		service.addproduct(product);
		return "redirect:/admin_view_product";
	}
	
	@GetMapping("admin_view_product")
	public String admin_view_product(Model m)
	{
		
		List<Product> product=service.displayproduct();
		m.addAttribute("product", product);
		return "admin_view_product";
	}
	
	@GetMapping("editproduct")
	public String editproduct(@RequestParam("id") int id,ModelMap mp)
	{
		Product update=service.updateproduct(id);
		mp.addAttribute("edit", update);
		return "editproduct";
	}
	
	@GetMapping("deleteproduct")
	public String deleteproduct(@RequestParam("id") int id)
	{
		service.deleteproduct(id);
		return "redirect:/admin_view_product";
	}
	
	
	
//=========outlet==========
	@GetMapping("admin_outlet")
	public String admin_outlet(Model m)
	{
		List<Outlet> outlet=service.displyoutlet();
		m.addAttribute("outlet", outlet);
		return "admin_outlet";
	}
	
	@PostMapping("saveoutlet")
	public String addoutlet(@ModelAttribute("outlet") Outlet outlet )
	{
		service.addoutlet(outlet);
		return "redirect:/admin_outlet";
	}
	
	@GetMapping("editoutlet")
	public String updateoutlet(@RequestParam("id") int id,ModelMap mp)
	{
		Outlet update=service.updateoutlet(id);
		mp.addAttribute("edit", update);
		return "editoutlet";
	}
	
	@GetMapping("deleteoutlet")
	public String deleteoutlet(@RequestParam("id") int id)
	{
		service.deleteoutlet(id);
		return "redirect:/admin_outlet";
	}
//===========offer=============
	@GetMapping("offer_cuppon")
	public String offer_cuppon(Model m)
	{
		List<Offerandcoupon> offerandcoupon=service.displayoffer();
		m.addAttribute("offerandcoupon", offerandcoupon);
		return "offer_cuppon";
	}
	
	@PostMapping("saveoffer")
	public String addoffer(@ModelAttribute("offerandcoupon") Offerandcoupon offerandcoupon)
	{
		service.addoffer(offerandcoupon);
		return "redirect:/offer_cuppon";
	}
	
	@GetMapping("editoffer")
	public String editoffer(@RequestParam("id") int id, ModelMap mp)
	{
		Offerandcoupon update=service.updateoffer(id);
		mp.addAttribute("edit", update);
		return "editoffer";
	}
	
	
	@GetMapping("deleteoffer")
	public String deleteoffer(@RequestParam("id") int id)
	{
		service.deleteoffer(id);
		return "redirect:/offer_coupon";
	}
}
