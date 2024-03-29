package com.nani.movie.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import com.nani.movie.domain.User;

import lombok.Data;

@Data
public class SignupDto { //Data transfer object
	
	@Size(min=2, max=20)
	@NotBlank
	private String username;
	@NotBlank
	private String password;
	@NotBlank
	private String email;
	@NotBlank
	private String name;
	
	public User toEntity() {
		return User.builder()
				.username(username)
				.password(password)
				.email(email)
				.name(name)
				.build();
	}
	
}
