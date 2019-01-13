package com.websystique.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AppController {

	@RequestMapping("/")
	String index(ModelMap modal) {
		modal.addAttribute("title","Accueil");
		System.out.println("Accueil");
		return "index";
	}
	
	@RequestMapping("/admin")
	String admin(ModelMap modal) {
		modal.addAttribute("title","Administration");
		System.out.println("Administration");
		return "admin";
	}
	
	@RequestMapping("/quality")
	String quality(ModelMap modal) {
		modal.addAttribute("title","Resources Humaines");
		return "quality";
	}

	@RequestMapping("/partials/{page}")
	String partialHandler(@PathVariable("page") final String page) {
		return page;
	}

}
