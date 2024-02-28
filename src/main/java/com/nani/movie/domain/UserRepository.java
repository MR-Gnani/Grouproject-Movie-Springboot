package com.nani.movie.domain;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Integer>{
	
	// JPA Method names
	User findByUsername(String username);
}
