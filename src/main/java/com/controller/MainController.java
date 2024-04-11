package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.EmpRegModel;
import com.model.LoginModel;
import com.service.EmpService;

@Controller
public class MainController {

	
	@Autowired
	EmpService empservice;
	
	@RequestMapping("/getReg")
	public String getReg(){

		return "EmpReg";
	}

	@RequestMapping("/geLogin")
	public String getLogin(){

		return "Login";
	}

	@RequestMapping(value="register",method=RequestMethod.POST)
	public String doReg(@ModelAttribute("rm") EmpRegModel rm){
		empservice.addEMP(rm);	
		return "Login";
	}
	
	@RequestMapping(value="doLogin",method=RequestMethod.POST)
	public String doLogin(@ModelAttribute("lm") LoginModel lm,HttpSession session){
		List<EmpRegModel> list=empservice.doLogin(lm);
		if(list!=null){
			session.setAttribute("loginid", lm.getLoginid());
			return "redirect:/view";
		}
		session.setAttribute("seslog", "Login Failed");
		return "Login";
	}
	
	@RequestMapping("/view")
	public String getAlluser(Model model,HttpSession session){
		String loginid=(String)session.getAttribute("loginid");
		List<EmpRegModel> list=empservice.getAllReg(loginid);
		model.addAttribute("list",list);
		return "Welcome";
	}

}
