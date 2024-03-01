package com.nani.movie.dto;

import javax.validation.constraints.NotBlank;

import com.nani.movie.domain.User;

import lombok.Data;

@Data
public class UserUpdateDto {
	

	@NotBlank
	private String name;
	@NotBlank
	private String email;
	private String phone;
	
	public User toEntity() {
		return User.builder()
				.email(email)
				.name(name)
				.phone(phone)
				.build();
	}
}
