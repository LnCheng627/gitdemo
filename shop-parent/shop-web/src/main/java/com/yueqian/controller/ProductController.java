package com.yueqian.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yueqian.pojo.Product;
import com.yueqian.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	private ProductService productService;
	
@RequestMapping("/findAll")
	public ModelAndView findAllProduct() {
	ModelAndView mav=new ModelAndView();
		List<Product> findAllProducts = productService.findAllProducts();
		mav.addObject("productList", findAllProducts);
		mav.setViewName("productList");
		return mav;
	}
}
