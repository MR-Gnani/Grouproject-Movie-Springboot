package com.nani.movie.web.api;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.nani.movie.config.PrincipalDetails;
import com.nani.movie.dto.CMRespDto;
import com.nani.movie.service.LikesService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class LikesApiController {

	private final LikesService likesService;
	
	@PostMapping("/api/detail/{movieId}/likes")
	public ResponseEntity<?> likes(@PathVariable int movieId, @AuthenticationPrincipal PrincipalDetails principalDetails){
		likesService.좋아요(movieId, principalDetails.getUser().getId());
		return new ResponseEntity<>(new CMRespDto<>(1, "찜 성공", null), HttpStatus.OK);
	}
	
	@DeleteMapping("/api/detail/{movieId}/likes")
	public  ResponseEntity<?> unlikes(@PathVariable int movieId, @AuthenticationPrincipal PrincipalDetails principalDetails){
		likesService.좋아요취소(movieId, principalDetails.getUser().getId());
		return new ResponseEntity<>(new CMRespDto<>(1, "찜 취소 성공", null), HttpStatus.OK);
	}
	
}
