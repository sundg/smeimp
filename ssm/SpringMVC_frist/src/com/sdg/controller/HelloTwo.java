package com.sdg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/hello")
public class HelloTwo {
	@RequestMapping("hello.do")
	public ModelAndView execute(){
		System.out.println("�ڻ�");
		return new ModelAndView("hello");
	}
}
