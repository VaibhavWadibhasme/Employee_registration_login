package com.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.EmpDao;
import com.model.EmpRegModel;
import com.model.LoginModel;

@Service
public class EmpServiceImpl implements EmpService {
	
	@Autowired
	EmpDao empdao;

	
	@Transactional
	public void addEMP(EmpRegModel rm) {	
		empdao.addEMP(rm);
	}

	@Transactional
	public List<EmpRegModel> doLogin(LoginModel lm) {	
		return empdao.doLogin(lm);
	}
	
	@Transactional
	public List<EmpRegModel> getAllReg(String loginid) {
		return empdao.getAllReg(loginid);
	}
}
