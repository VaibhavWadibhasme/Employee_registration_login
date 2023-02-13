package com.dao;

import java.util.List;

import com.model.EmpRegModel;
import com.model.LoginModel;

public interface EmpDao {

	public void addEMP(EmpRegModel rm);
	public List<EmpRegModel> doLogin(LoginModel lm);
	public List<EmpRegModel> getAllReg(String loginid);
	
}
