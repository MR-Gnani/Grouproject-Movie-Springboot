package com.nani.movie.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	@GetMapping({"/","/main/movie"})
	public String mainPage() {
		return "main/main";
	}
	
}
