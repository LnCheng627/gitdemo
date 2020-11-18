package com.yueqian.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yueqian.dao.UserMapper;
import com.yueqian.pojo.User;
import com.yueqian.pojo.UserExample;
import com.yueqian.pojo.UserExample.Criteria;
import com.yueqian.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	
	@Autowired
	private UserMapper userMapper;

	@Override
	public User login(User user) {
		System.out.println("12222222");
		UserExample ue = new UserExample();
		Criteria criteria = ue.createCriteria();
		criteria.andXingmingEqualTo(user.getXingming());
		criteria.andUserPwdEqualTo(user.getUserPwd());
		List<User> list = userMapper.selectByExample(ue);
		User u = null;
		if(list!=null&&list.size()>0){
			u = list.get(0);
		}
		return u;
	}

}
