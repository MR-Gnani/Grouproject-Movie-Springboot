package com.nani.movie.service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.nani.movie.domain.User;
import com.nani.movie.domain.UserRepository;
import com.nani.movie.handler.ex.CustomValidationApiException;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class UserService {
	
	private final UserRepository userRepository;
	
	@Transactional
	public User 회원수정(int id, User user) {
		// 1. 영속화(수정하고 싶은 데이터를 찾아서 영속화)

		User userEntity = userRepository.findById(id).orElseThrow(()->{		
			return new CustomValidationApiException("찾을 수 없는 ID입니다.");
		});
		
		// 2. 영속화된 오브젝트 수정 - 더티체킹
		userEntity.setName(user.getName());
		userEntity.setPhone(user.getPhone());
		
		return userEntity;
	} // 더티체킹 -> 업데이트 완료
	
}
