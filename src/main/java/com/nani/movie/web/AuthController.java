package com.nani.movie.web;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.nani.movie.domain.User;
import com.nani.movie.dto.SignupDto;
import com.nani.movie.service.AuthService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class AuthController {
	
	@Autowired
	private final AuthService authService;

	// 1. 로그인 페이지
	@GetMapping("/auth/signin")
	public String signinPage() {
		return "auth/signin";
	}
	
	// 2. 회원가입 페이지
	@GetMapping("/auth/signup")
	public String sinupPage() {
		return "auth/signup";
	}
	
	// 3. 회원가입 진행
	@PostMapping("/auth/signup")
	public String signup(@Valid SignupDto signupDto, BindingResult bindingResult) {
		
		User user = signupDto.toEntity();
		authService.회원가입(user);
		
		// 회원가입이 완료되면 로그인 창으로 이동
		return "auth/signin";
	}

}

