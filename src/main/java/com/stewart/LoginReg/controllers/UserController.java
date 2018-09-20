package com.stewart.LoginReg.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stewart.LoginReg.models.User;
import com.stewart.LoginReg.services.UserService;


@Controller
@RequestMapping("/users")
public class UserController {

	private UserService userServ;

	public UserController(UserService userServ) {
		this.userServ = userServ;
	}
	
	@GetMapping("")
	public String dash() {
		return "dashboard.jsp";
	}
	
	@GetMapping("/registration")
	public String register(@ModelAttribute("user") User user, Model model) {
		model.addAttribute("user", user);
		return "registration.jsp";
	}
	
	@GetMapping("/login")
	public String login(@ModelAttribute("user") User user, Model model) {
		model.addAttribute("user", user);
		return "login.jsp";
	}
}
