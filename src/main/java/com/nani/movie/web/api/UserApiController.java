package com.nani.movie.web.api;

import java.util.List;

import javax.validation.Valid;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.nani.movie.config.PrincipalDetails;
import com.nani.movie.domain.Likes;
import com.nani.movie.domain.User;
import com.nani.movie.dto.CMRespDto;
import com.nani.movie.dto.UserUpdateDto;
import com.nani.movie.service.LikesService;
import com.nani.movie.service.UserService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class UserApiController {
	
	private final UserService userService;
	
	private final LikesService likesService;
	
	@GetMapping("/api/user/likeList")
	public ResponseEntity<?> getLikeList(@AuthenticationPrincipal PrincipalDetails principalDetails, Model model) {
		List<Likes> likes=	 likesService.likeMovieList(principalDetails.getUser().getId());
		// 세션은 헤더에 시큐리티 태그라이브러리를 사용하여 전달 예정
		return new ResponseEntity<>(new CMRespDto<>(1, "성공", likes), HttpStatus.OK);
	}
	
	@PutMapping("/api/user/{id}")
	public CMRespDto<?> update(
		@PathVariable int id, 
		@Valid UserUpdateDto userUpdateDto,
		BindingResult bindingResult,
		@AuthenticationPrincipal PrincipalDetails principalDetails) {
		User userEntity = userService.회원수정(id, userUpdateDto.toEntity());
		principalDetails.setUser(userEntity); //세션정보 변경
		return new CMRespDto<>(1, "회원수정완료", userEntity);
	}

}
