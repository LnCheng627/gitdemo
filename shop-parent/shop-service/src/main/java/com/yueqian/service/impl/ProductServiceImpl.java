package com.yueqian.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yueqian.dao.ProductMapper;
import com.yueqian.pojo.Product;
import com.yueqian.service.ProductService;
@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductMapper productMapper;
	
	@Override
	public List<Product> findAllProducts() {
		// TODO Auto-generated method stub
		return productMapper.selectByExample(null);
	}

}
