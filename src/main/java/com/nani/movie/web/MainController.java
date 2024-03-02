package com.nani.movie.web;

import java.util.Map;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nani.movie.config.PrincipalDetails;
import com.nani.movie.domain.Likes;
import com.nani.movie.service.LikesService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class MainController {
	
	private final LikesService likesService;
	
	
	@GetMapping("main/search")
	public String searchPage() {
		return "main/search";
	}
	
	@GetMapping({"/","/main/movie"})
	public String mainPage() {
		return "main/main";
	}
	
	@GetMapping("/main/detail")
	public String detailPage(@RequestParam Map<String,Object> param, @AuthenticationPrincipal PrincipalDetails principalDetails, Model model) {
		Likes like = likesService.likeInfo(principalDetails.getUser().getId(), param.get("movieId").toString());	
			if(like == null) {
				model.addAttribute("like","empty");
			}else {	
				model.addAttribute("like","heart");
			}
		return "main/detail";
	}
}
