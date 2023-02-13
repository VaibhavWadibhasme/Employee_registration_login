package com.service;

import java.util.List;

import com.model.EmpRegModel;
import com.model.LoginModel;

public interface EmpService {

	public void addEMP(EmpRegModel rm);
	public List<EmpRegModel> doLogin(LoginModel lm);
	public List<EmpRegModel> getAllReg(String loginid);
}
