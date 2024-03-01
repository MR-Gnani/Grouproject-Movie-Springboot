package com.nani.movie.web.api;

import javax.validation.Valid;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.nani.movie.config.PrincipalDetails;
import com.nani.movie.domain.User;
import com.nani.movie.dto.CMRespDto;
import com.nani.movie.dto.UserUpdateDto;
import com.nani.movie.service.UserService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class UserApiController {
	
	private final UserService userService;
	
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
