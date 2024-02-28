package com.nani.movie.test;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

	@GetMapping("/test")
	public String hello() {
		return "<h1>run?</h1>";
	}
}
